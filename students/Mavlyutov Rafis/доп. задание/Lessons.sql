PGDMP     2                    {            Dop_Zadaniya    15.2    15.2                0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    26219    Dop_Zadaniya    DATABASE     �   CREATE DATABASE "Dop_Zadaniya" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_United States.1251';
    DROP DATABASE "Dop_Zadaniya";
                postgres    false            �            1259    26248    Lessons    TABLE     !  CREATE TABLE public."Lessons" (
    department_id text,
    auditory text NOT NULL,
    lecturer text DEFAULT 'Distant System'::text NOT NULL,
    group_name text NOT NULL,
    student_places integer NOT NULL,
    CONSTRAINT "Lessons_student_places_check" CHECK ((student_places < 40))
);
    DROP TABLE public."Lessons";
       public         heap    postgres    false            �          0    26248    Lessons 
   TABLE DATA           b   COPY public."Lessons" (department_id, auditory, lecturer, group_name, student_places) FROM stdin;
    public          postgres    false    218          �   �   x��0���3.,�410�t�,.I�+Q�,.I���/�52�46ẀPf�yaɅ� �V �{aׅ}6��)62@Vl�ya����/6��U�0UO��=�Ɇ���\f]�p�hЖ�6(\X{a��!�[��`�:�\��a��(�a����� �6n�     