PGDMP     &                     w            bizdata    11.6    11.6                0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                       false                       1262    16385    bizdata    DATABASE     �   CREATE DATABASE bizdata WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'Chinese (Simplified)_China.936' LC_CTYPE = 'Chinese (Simplified)_China.936';
    DROP DATABASE bizdata;
             bizdata    false            	            2615    16399    bizdata    SCHEMA        CREATE SCHEMA bizdata;
    DROP SCHEMA bizdata;
             bizdata    false                       0    0    SCHEMA public    ACL     �   REVOKE ALL ON SCHEMA public FROM li;
REVOKE ALL ON SCHEMA public FROM PUBLIC;
GRANT ALL ON SCHEMA public TO bizdata;
GRANT ALL ON SCHEMA public TO PUBLIC;
                  bizdata    false    4                        3079    16388 	   uuid-ossp 	   EXTENSION     ?   CREATE EXTENSION IF NOT EXISTS "uuid-ossp" WITH SCHEMA public;
    DROP EXTENSION "uuid-ossp";
                  false                       0    0    EXTENSION "uuid-ossp"    COMMENT     W   COMMENT ON EXTENSION "uuid-ossp" IS 'generate universally unique identifiers (UUIDs)';
                       false    2            �            1259    16400    biz_user    TABLE     [  CREATE TABLE bizdata.biz_user (
    user_id uuid DEFAULT public.uuid_generate_v4() NOT NULL,
    user_name character varying(200) NOT NULL,
    user_login_name character varying(200) NOT NULL,
    user_login_password character varying(200) NOT NULL,
    mail character varying(200),
    user_type character varying(10),
    valid_flag character varying(10),
    leave_data date,
    dept_id uuid,
    position_name character varying(200),
    created_user_id uuid NOT NULL,
    created_date date DEFAULT now() NOT NULL,
    updated_user_id uuid NOT NULL,
    updated_date date DEFAULT now() NOT NULL
);
    DROP TABLE bizdata.biz_user;
       bizdata         bizdata    false    2    9                      0    16400    biz_user 
   TABLE DATA               �   COPY bizdata.biz_user (user_id, user_name, user_login_name, user_login_password, mail, user_type, valid_flag, leave_data, dept_id, position_name, created_user_id, created_date, updated_user_id, updated_date) FROM stdin;
    bizdata       bizdata    false    198   v       �
           2606    16407    biz_user biz_user_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY bizdata.biz_user
    ADD CONSTRAINT biz_user_pkey PRIMARY KEY (user_id);
 A   ALTER TABLE ONLY bizdata.biz_user DROP CONSTRAINT biz_user_pkey;
       bizdata         bizdata    false    198            �
           2606    16410    biz_user biz_user_unikey 
   CONSTRAINT     _   ALTER TABLE ONLY bizdata.biz_user
    ADD CONSTRAINT biz_user_unikey UNIQUE (user_login_name);
 C   ALTER TABLE ONLY bizdata.biz_user DROP CONSTRAINT biz_user_unikey;
       bizdata         bizdata    false    198                  x������ � �     