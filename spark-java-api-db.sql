PGDMP         9        
        z            spark_java_framework    9.4.18    14.2     ?           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            ?           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            ?           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            ?           1262    161879    spark_java_framework    DATABASE     _   CREATE DATABASE spark_java_framework WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'C';
 $   DROP DATABASE spark_java_framework;
                postgres    false            ?           0    0    SCHEMA public    ACL     ?   REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;
                   postgres    false    6            ?            1259    161880 
   userentity    TABLE     ?   CREATE TABLE public.userentity (
    id integer NOT NULL,
    firstname character varying,
    lastname character varying,
    email character varying
);
    DROP TABLE public.userentity;
       public            postgres    false            ?            1259    170079    users_id_seq    SEQUENCE     u   CREATE SEQUENCE public.users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.users_id_seq;
       public          postgres    false            ?            1259    170071    users    TABLE     ?   CREATE TABLE public.users (
    id integer DEFAULT nextval('public.users_id_seq'::regclass) NOT NULL,
    first_name character varying,
    last_name character varying,
    email character varying,
    phone_number character varying
);
    DROP TABLE public.users;
       public            postgres    false    175            ?          0    161880 
   userentity 
   TABLE DATA           D   COPY public.userentity (id, firstname, lastname, email) FROM stdin;
    public          postgres    false    173   -       ?          0    170071    users 
   TABLE DATA           O   COPY public.users (id, first_name, last_name, email, phone_number) FROM stdin;
    public          postgres    false    174   ?       ?           0    0    users_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.users_id_seq', 89, true);
          public          postgres    false    175            k           2606    161887    userentity userEntity_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.userentity
    ADD CONSTRAINT "userEntity_pkey" PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.userentity DROP CONSTRAINT "userEntity_pkey";
       public            postgres    false    173            m           2606    170078    users users_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
       public            postgres    false    174            ?   i   x?34??4?t?I??t?????@,???????.C?#N?ļ?????̒(G?AVhh???X?U???????у? ?026??욓??_3?C?????? ?#7?      ?   ?  x?u?Ɏ?0???S̽??]??IL???^za????c??ӗ??I	0???A?d???X??Q??Q3???!?9x???H???4?g???c?A? X??*ci?ѓ?)Uw????tG?3)??SM?F?c׮?'?"3?TB??%샆Z????}??5???:ږ|@o??/C;???v2cƒ?]%?j?T?S=????g?Փ*>nR?lC??)l???uh ?]0??cU"??Z??z??4ڷ
????R???:?7???#????$wW2???o?5^?~????_????t3I_&?;?4Ë????Wǋ???L??7'????????y?L?5u?z=?<?W?i?Wq??rsة?cw?]~???D?˘??H??ʢ(?,?#?0????Y???D??nl?DJQ???O?*GZ?1?f?3?zMEŕ%??c? *?H     