const Pool = require('pg').Pool
const pool = new Pool({
  user: 'postgres',
  host: '192.168.100.5',
  database: 'spark_java_framework',
  password: 'postgres',
  port: 5432,
})

const getUsers = (request, response) => {
  pool.query('SELECT * FROM users ORDER BY id ASC', (error, results) => {
    if (error) {
      throw error
    }
    response.status(200).json(results.rows)
  })
}

const getUserById = (request, response) => {
  const id = parseInt(request.params.id)

  pool.query('SELECT * FROM users WHERE id = $1', [id], (error, results) => {
    if (error) {
      throw error
    }
    response.status(200).json(results.rows[0])
  })
}

const createUser = (request, response) => {
  const { first_name, last_name, email, phone_number } = request.body

  // console.log(`About to create a user ${request.body}.`)


  pool.query('INSERT INTO users (first_name, last_name, email, phone_number) VALUES ($1, $2, $3,$4) RETURNING *', [first_name, last_name, email, phone_number], (error, results) => {
    if (error) {

      console.log(`Failed creating user ${error}.`)

      throw error
    }

    response.status(200).send(JSON.stringify(results.rows[0]))

  })
}

const updateUser = (request, response) => {
  const id = parseInt(request.params.id)
  const { first_name, last_name, email, phone_number } = request.body

  pool.query(
    'UPDATE users SET first_name = $1, last_name = $2,email=$3,phone_number=$4 WHERE id = $5',
    [first_name, last_name, email, phone_number, id],
    (error, results) => {
      if (error) {
      console.log(`Failed to update user ${error}.`)

        throw error
      }


      response.status(200).send(JSON.stringify({id:id,first_name:first_name, last_name:last_name, email:email,phone_number:phone_number}))


      // response.status(200).send('{first_name:${first_name},last_name:${last_name},email:${email},phone_number:${phone_number},id: ${id}}')
    }
  )
}

const deleteUser = (request, response) => {
  const id = parseInt(request.params.id)

  pool.query('DELETE FROM users WHERE id = $1', [id], (error, results) => {
    if (error) {
      throw error
    }
    response.status(200).send(`User deleted with ID: ${id}`)
  })
}

module.exports = {
  getUsers,
  getUserById,
  createUser,
  updateUser,
  deleteUser,
}
