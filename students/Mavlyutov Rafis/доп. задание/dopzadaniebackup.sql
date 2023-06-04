PGDMP     2                    {            Dop_Zadaniya    15.2    15.2                0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    26219    Dop_Zadaniya    DATABASE     �   CREATE DATABASE "Dop_Zadaniya" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_United States.1251';
    DROP DATABASE "Dop_Zadaniya";
                postgres    false            �            1259    26241    EC_department    TABLE     �   CREATE TABLE public."EC_department" (
    department_name text NOT NULL,
    department_person text NOT NULL,
    faculty_id text
);
 #   DROP TABLE public."EC_department";
       public         heap    postgres    false            �            1259    26220    Faculty    TABLE     R   CREATE TABLE public."Faculty" (
    name text NOT NULL,
    dean text NOT NULL
);
    DROP TABLE public."Faculty";
       public         heap    postgres    false            �            1259    26227    IT_department    TABLE     �   CREATE TABLE public."IT_department" (
    department_name text NOT NULL,
    department_person text NOT NULL,
    faculty_id text
);
 #   DROP TABLE public."IT_department";
       public         heap    postgres    false            �            1259    26248    Lessons    TABLE     !  CREATE TABLE public."Lessons" (
    department_id text,
    auditory text NOT NULL,
    lecturer text DEFAULT 'Distant System'::text NOT NULL,
    group_name text NOT NULL,
    student_places integer NOT NULL,
    CONSTRAINT "Lessons_student_places_check" CHECK ((student_places < 40))
);
    DROP TABLE public."Lessons";
       public         heap    postgres    false            �            1259    26234    MN_department    TABLE     �   CREATE TABLE public."MN_department" (
    department_name text NOT NULL,
    department_person text NOT NULL,
    faculty_id text
);
 #   DROP TABLE public."MN_department";
       public         heap    postgres    false                      0    26241    EC_department 
   TABLE DATA           Y   COPY public."EC_department" (department_name, department_person, faculty_id) FROM stdin;
    public          postgres    false    217   �                 0    26220    Faculty 
   TABLE DATA           /   COPY public."Faculty" (name, dean) FROM stdin;
    public          postgres    false    214   �                 0    26227    IT_department 
   TABLE DATA           Y   COPY public."IT_department" (department_name, department_person, faculty_id) FROM stdin;
    public          postgres    false    215   )                 0    26248    Lessons 
   TABLE DATA           b   COPY public."Lessons" (department_id, auditory, lecturer, group_name, student_places) FROM stdin;
    public          postgres    false    218   t                 0    26234    MN_department 
   TABLE DATA           Y   COPY public."MN_department" (department_name, department_person, faculty_id) FROM stdin;
    public          postgres    false    216   %       }           2606    26247     EC_department EC_department_pkey 
   CONSTRAINT     o   ALTER TABLE ONLY public."EC_department"
    ADD CONSTRAINT "EC_department_pkey" PRIMARY KEY (department_name);
 N   ALTER TABLE ONLY public."EC_department" DROP CONSTRAINT "EC_department_pkey";
       public            postgres    false    217            w           2606    26226    Faculty Faculty_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public."Faculty"
    ADD CONSTRAINT "Faculty_pkey" PRIMARY KEY (name);
 B   ALTER TABLE ONLY public."Faculty" DROP CONSTRAINT "Faculty_pkey";
       public            postgres    false    214            y           2606    26233     IT_department IT_department_pkey 
   CONSTRAINT     o   ALTER TABLE ONLY public."IT_department"
    ADD CONSTRAINT "IT_department_pkey" PRIMARY KEY (department_name);
 N   ALTER TABLE ONLY public."IT_department" DROP CONSTRAINT "IT_department_pkey";
       public            postgres    false    215            {           2606    26240     MN_department MN_department_pkey 
   CONSTRAINT     o   ALTER TABLE ONLY public."MN_department"
    ADD CONSTRAINT "MN_department_pkey" PRIMARY KEY (department_name);
 N   ALTER TABLE ONLY public."MN_department" DROP CONSTRAINT "MN_department_pkey";
       public            postgres    false    216            �           2606    26263 +   EC_department EC_department_faculty_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."EC_department"
    ADD CONSTRAINT "EC_department_faculty_id_fkey" FOREIGN KEY (faculty_id) REFERENCES public."Faculty"(name);
 Y   ALTER TABLE ONLY public."EC_department" DROP CONSTRAINT "EC_department_faculty_id_fkey";
       public          postgres    false    3191    217    214            ~           2606    26253 +   IT_department IT_department_faculty_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."IT_department"
    ADD CONSTRAINT "IT_department_faculty_id_fkey" FOREIGN KEY (faculty_id) REFERENCES public."Faculty"(name);
 Y   ALTER TABLE ONLY public."IT_department" DROP CONSTRAINT "IT_department_faculty_id_fkey";
       public          postgres    false    215    214    3191                       2606    26258 +   MN_department MN_department_faculty_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."MN_department"
    ADD CONSTRAINT "MN_department_faculty_id_fkey" FOREIGN KEY (faculty_id) REFERENCES public."Faculty"(name);
 Y   ALTER TABLE ONLY public."MN_department" DROP CONSTRAINT "MN_department_faculty_id_fkey";
       public          postgres    false    214    3191    216               B   x�7 ��Кафедра ЭК	Имяэк З. К.	ФЭЭиУ
\.


��         4   x�) ��ФЭЭиУ	Долженко Е. Н.
\.


Hc�         ;   x�0 ��ИСИТ	Петухов М. В.	ФЭЭиУ
\.


�|L         �   x��0���3.,�410�t�,.I�+Q�,.I���/�52�46ẀPf�yaɅ� �V �{aׅ}6��)62@Vl�ya����/6��U�0UO��=�Ɇ���\f]�p�hЖ�6(\X{a��!�[��`�:�\��a��(�a����� �6n�         B   x�7 ��Кафедра МН	Имямн З. К.	ФЭЭиУ
\.


��      