PGDMP     #    !                {            Laba    15.2    15.2 1    K           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            L           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            M           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            N           1262    25832    Laba    DATABASE     �   CREATE DATABASE "Laba" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_United States.1251';
    DROP DATABASE "Laba";
                postgres    false            �            1259    25842 
   Aggregator    TABLE     �   CREATE TABLE public."Aggregator" (
    contract_serial text NOT NULL,
    name text,
    contact_info text,
    responcible_person text,
    requisites text,
    address text
);
     DROP TABLE public."Aggregator";
       public         heap    postgres    false            �            1259    25866    Cars    TABLE     �   CREATE TABLE public."Cars" (
    id integer NOT NULL,
    plate text,
    model text,
    color text,
    livery_id text,
    owner_id text
);
    DROP TABLE public."Cars";
       public         heap    postgres    false            �            1259    25878    Orders    TABLE     �   CREATE TABLE public."Orders" (
    id integer NOT NULL,
    agg_id text,
    partner_id text,
    car_id integer,
    payment_details text,
    ride_details text,
    "timestamp" timestamp without time zone,
    ride_price integer
);
    DROP TABLE public."Orders";
       public         heap    postgres    false            �            1259    25833    Partner    TABLE     �   CREATE TABLE public."Partner" (
    contract_serial text NOT NULL,
    last_name text NOT NULL,
    first_name text NOT NULL,
    middle_name text,
    contact_info character varying(12) NOT NULL,
    payment_details text
);
    DROP TABLE public."Partner";
       public         heap    postgres    false            �            1259    26209    Partner_membership    TABLE     a   CREATE TABLE public."Partner_membership" (
    access_priority integer,
    access_level text
);
 (   DROP TABLE public."Partner_membership";
       public         heap    postgres    false            �            1259    25873    Rental_Cars    TABLE     �   CREATE TABLE public."Rental_Cars" (
    car_id integer,
    mileage_km integer,
    license_expiration date,
    insurance_expiration date,
    next_maintenance date,
    aviability boolean,
    rented_by text
);
 !   DROP TABLE public."Rental_Cars";
       public         heap    postgres    false            �            1259    25854 
   agg_livery    TABLE     �   CREATE TABLE public.agg_livery (
    name text NOT NULL,
    agg_id text,
    main_color text,
    additional_color text,
    scale text,
    advertisment boolean
);
    DROP TABLE public.agg_livery;
       public         heap    postgres    false            �            1259    25861    agg_locations    TABLE     �   CREATE TABLE public.agg_locations (
    agg_id text,
    country text,
    region text,
    region_code integer,
    city text,
    timezone text
);
 !   DROP TABLE public.agg_locations;
       public         heap    postgres    false            �            1259    25849    agg_partners    TABLE     �   CREATE TABLE public.agg_partners (
    agg_id text,
    partner_id text,
    agreement text,
    start_date date,
    end_date date,
    concluded_by text
);
     DROP TABLE public.agg_partners;
       public         heap    postgres    false            �            1259    26327    cmv    MATERIALIZED VIEW     �   CREATE MATERIALIZED VIEW public.cmv AS
 SELECT "Cars".id,
    "Cars".plate,
    "Cars".model,
    "Cars".color,
    "Cars".livery_id,
    "Cars".owner_id
   FROM public."Cars"
  WITH NO DATA;
 #   DROP MATERIALIZED VIEW public.cmv;
       public         heap    postgres    false    219    219    219    219    219    219            �            1259    26188    new_Cars_Copy    TABLE     �   CREATE TABLE public."new_Cars_Copy" (
    id integer NOT NULL,
    plate text NOT NULL,
    model text NOT NULL,
    color text,
    livery_id text,
    owner_id text
);
 #   DROP TABLE public."new_Cars_Copy";
       public         heap    postgres    false            �            1259    26323    userview_cars    VIEW     �   CREATE VIEW public.userview_cars AS
 SELECT "Cars".id,
    "Cars".plate,
    "Cars".model,
    "Cars".color,
    "Cars".livery_id,
    "Cars".owner_id
   FROM public."Cars";
     DROP VIEW public.userview_cars;
       public          postgres    false    219    219    219    219    219    219            ?          0    25842 
   Aggregator 
   TABLE DATA           t   COPY public."Aggregator" (contract_serial, name, contact_info, responcible_person, requisites, address) FROM stdin;
    public          postgres    false    215   o<       C          0    25866    Cars 
   TABLE DATA           N   COPY public."Cars" (id, plate, model, color, livery_id, owner_id) FROM stdin;
    public          postgres    false    219   �=       E          0    25878    Orders 
   TABLE DATA           z   COPY public."Orders" (id, agg_id, partner_id, car_id, payment_details, ride_details, "timestamp", ride_price) FROM stdin;
    public          postgres    false    221   <?       >          0    25833    Partner 
   TABLE DATA           w   COPY public."Partner" (contract_serial, last_name, first_name, middle_name, contact_info, payment_details) FROM stdin;
    public          postgres    false    214   �?       G          0    26209    Partner_membership 
   TABLE DATA           M   COPY public."Partner_membership" (access_priority, access_level) FROM stdin;
    public          postgres    false    223   �@       D          0    25873    Rental_Cars 
   TABLE DATA           �   COPY public."Rental_Cars" (car_id, mileage_km, license_expiration, insurance_expiration, next_maintenance, aviability, rented_by) FROM stdin;
    public          postgres    false    220    A       A          0    25854 
   agg_livery 
   TABLE DATA           e   COPY public.agg_livery (name, agg_id, main_color, additional_color, scale, advertisment) FROM stdin;
    public          postgres    false    217   �A       B          0    25861    agg_locations 
   TABLE DATA           ]   COPY public.agg_locations (agg_id, country, region, region_code, city, timezone) FROM stdin;
    public          postgres    false    218   �B       @          0    25849    agg_partners 
   TABLE DATA           i   COPY public.agg_partners (agg_id, partner_id, agreement, start_date, end_date, concluded_by) FROM stdin;
    public          postgres    false    216   C       F          0    26188    new_Cars_Copy 
   TABLE DATA           W   COPY public."new_Cars_Copy" (id, plate, model, color, livery_id, owner_id) FROM stdin;
    public          postgres    false    222   �C       �           2606    25848    Aggregator Aggregator_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public."Aggregator"
    ADD CONSTRAINT "Aggregator_pkey" PRIMARY KEY (contract_serial);
 H   ALTER TABLE ONLY public."Aggregator" DROP CONSTRAINT "Aggregator_pkey";
       public            postgres    false    215            �           2606    25872    Cars Cars_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public."Cars"
    ADD CONSTRAINT "Cars_pkey" PRIMARY KEY (id);
 <   ALTER TABLE ONLY public."Cars" DROP CONSTRAINT "Cars_pkey";
       public            postgres    false    219            �           2606    25884    Orders Orders_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public."Orders"
    ADD CONSTRAINT "Orders_pkey" PRIMARY KEY (id);
 @   ALTER TABLE ONLY public."Orders" DROP CONSTRAINT "Orders_pkey";
       public            postgres    false    221            �           2606    25841     Partner Partner_contact_info_key 
   CONSTRAINT     g   ALTER TABLE ONLY public."Partner"
    ADD CONSTRAINT "Partner_contact_info_key" UNIQUE (contact_info);
 N   ALTER TABLE ONLY public."Partner" DROP CONSTRAINT "Partner_contact_info_key";
       public            postgres    false    214            �           2606    25839    Partner Partner_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY public."Partner"
    ADD CONSTRAINT "Partner_pkey" PRIMARY KEY (contract_serial);
 B   ALTER TABLE ONLY public."Partner" DROP CONSTRAINT "Partner_pkey";
       public            postgres    false    214            �           2606    25860    agg_livery agg_livery_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.agg_livery
    ADD CONSTRAINT agg_livery_pkey PRIMARY KEY (name);
 D   ALTER TABLE ONLY public.agg_livery DROP CONSTRAINT agg_livery_pkey;
       public            postgres    false    217            �           2606    26194     new_Cars_Copy new_Cars_Copy_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public."new_Cars_Copy"
    ADD CONSTRAINT "new_Cars_Copy_pkey" PRIMARY KEY (id);
 N   ALTER TABLE ONLY public."new_Cars_Copy" DROP CONSTRAINT "new_Cars_Copy_pkey";
       public            postgres    false    222            �           2606    25941    Cars uniq_plate 
   CONSTRAINT     M   ALTER TABLE ONLY public."Cars"
    ADD CONSTRAINT uniq_plate UNIQUE (plate);
 ;   ALTER TABLE ONLY public."Cars" DROP CONSTRAINT uniq_plate;
       public            postgres    false    219            �           1259    26348    indx2    INDEX     ]   CREATE INDEX indx2 ON public."Orders" USING btree (id, ride_price) WHERE (ride_price > 900);
    DROP INDEX public.indx2;
       public            postgres    false    221    221    221            �           1259    26349    indx3    INDEX     D   CREATE UNIQUE INDEX indx3 ON public.cmv USING btree (model, plate);
    DROP INDEX public.indx3;
       public            postgres    false    225    225            �           1259    26350    indx4    INDEX     I   CREATE INDEX indx4 ON public."Orders" USING btree (id, ride_price DESC);
    DROP INDEX public.indx4;
       public            postgres    false    221    221            �           2606    25935    Cars Cars_livery_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Cars"
    ADD CONSTRAINT "Cars_livery_id_fkey" FOREIGN KEY (livery_id) REFERENCES public.agg_livery(name);
 F   ALTER TABLE ONLY public."Cars" DROP CONSTRAINT "Cars_livery_id_fkey";
       public          postgres    false    217    3223    219            �           2606    25925    Cars Cars_owner_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Cars"
    ADD CONSTRAINT "Cars_owner_id_fkey" FOREIGN KEY (owner_id) REFERENCES public."Partner"(contract_serial);
 E   ALTER TABLE ONLY public."Cars" DROP CONSTRAINT "Cars_owner_id_fkey";
       public          postgres    false    214    3219    219            �           2606    25885    Orders Orders_agg_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Orders"
    ADD CONSTRAINT "Orders_agg_id_fkey" FOREIGN KEY (agg_id) REFERENCES public."Aggregator"(contract_serial);
 G   ALTER TABLE ONLY public."Orders" DROP CONSTRAINT "Orders_agg_id_fkey";
       public          postgres    false    215    221    3221            �           2606    25895    Orders Orders_car_id_fkey    FK CONSTRAINT     |   ALTER TABLE ONLY public."Orders"
    ADD CONSTRAINT "Orders_car_id_fkey" FOREIGN KEY (car_id) REFERENCES public."Cars"(id);
 G   ALTER TABLE ONLY public."Orders" DROP CONSTRAINT "Orders_car_id_fkey";
       public          postgres    false    219    221    3225            �           2606    25890    Orders Orders_partner_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Orders"
    ADD CONSTRAINT "Orders_partner_id_fkey" FOREIGN KEY (partner_id) REFERENCES public."Partner"(contract_serial);
 K   ALTER TABLE ONLY public."Orders" DROP CONSTRAINT "Orders_partner_id_fkey";
       public          postgres    false    214    3219    221            �           2606    25900 #   Rental_Cars Rental_Cars_car_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Rental_Cars"
    ADD CONSTRAINT "Rental_Cars_car_id_fkey" FOREIGN KEY (car_id) REFERENCES public."Cars"(id);
 Q   ALTER TABLE ONLY public."Rental_Cars" DROP CONSTRAINT "Rental_Cars_car_id_fkey";
       public          postgres    false    219    220    3225            �           2606    25930 &   Rental_Cars Rental_Cars_rented_by_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Rental_Cars"
    ADD CONSTRAINT "Rental_Cars_rented_by_fkey" FOREIGN KEY (rented_by) REFERENCES public."Partner"(contract_serial);
 T   ALTER TABLE ONLY public."Rental_Cars" DROP CONSTRAINT "Rental_Cars_rented_by_fkey";
       public          postgres    false    214    3219    220            �           2606    25915 !   agg_livery agg_livery_agg_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.agg_livery
    ADD CONSTRAINT agg_livery_agg_id_fkey FOREIGN KEY (agg_id) REFERENCES public."Aggregator"(contract_serial);
 K   ALTER TABLE ONLY public.agg_livery DROP CONSTRAINT agg_livery_agg_id_fkey;
       public          postgres    false    3221    215    217            �           2606    25920 '   agg_locations agg_locations_agg_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.agg_locations
    ADD CONSTRAINT agg_locations_agg_id_fkey FOREIGN KEY (agg_id) REFERENCES public."Aggregator"(contract_serial);
 Q   ALTER TABLE ONLY public.agg_locations DROP CONSTRAINT agg_locations_agg_id_fkey;
       public          postgres    false    218    215    3221            �           2606    25905 %   agg_partners agg_partners_agg_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.agg_partners
    ADD CONSTRAINT agg_partners_agg_id_fkey FOREIGN KEY (agg_id) REFERENCES public."Aggregator"(contract_serial);
 O   ALTER TABLE ONLY public.agg_partners DROP CONSTRAINT agg_partners_agg_id_fkey;
       public          postgres    false    3221    216    215            �           2606    25910 )   agg_partners agg_partners_partner_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.agg_partners
    ADD CONSTRAINT agg_partners_partner_id_fkey FOREIGN KEY (partner_id) REFERENCES public."Partner"(contract_serial);
 S   ALTER TABLE ONLY public.agg_partners DROP CONSTRAINT agg_partners_partner_id_fkey;
       public          postgres    false    214    3219    216            H           0    26327    cmv    MATERIALIZED VIEW DATA     &   REFRESH MATERIALIZED VIEW public.cmv;
          public          postgres    false    225    3402            ?   P  x����N�@��ӧ� ����wn��hI�TH�$ԕb�E��Q	Q_��()��7�t ���$�;�}���Y�'�� �:A�O��شݚ�@�b�Z�1"�+S�}�e&��	��w,$GT7%y|�=�TG�b�$�L�6�t�E�R߷�r��v�ǥ��ө���1��1�3D,�H^o���I�����s�9�	����̛�ތخ��s�⟅��5��U���[�s<G�ͽ�,/��C�����h�����$+&��-ZƆ��^���)�#qT�K�ߪ�n��V�q�2��{����l��ܧ9�7Q�$�����q���b��B��5��~�9`      C   ]  x����N�@F�ӧ�/�i���eS�Fta⦄��@����+�&n�4��`l�Xx�;o�ma�lt����9������`��`��5���`�)�q�%�8����Q���:Q3��\0���2|�z�q\cU/�Du�s��M�� ��J��Y������+���O�\�T\�>i��#e����U�Ϝ��1=�P�y��Gq�SJ�������~Н�,R=q��P�8�ь���Y�����]�AwI�����Iu3��	�9�0�e-���p2����6p�U̲	%�V�k�9���ƙ�AF�����u��LU�,�v�w�Ё��
�� ��|R�A�N�%I�1|��      E   d   x��̱�@D�خb ٞ�ٔ��ғ� ���K��of.O\",Zl��l#�r�}vr )��b��7Ǥ����Ƃ�H���ի��_<����\U��P-H      >     x�]�MN�0���)�GB�b�l�CD��,��*HEB��Ԡ�m�+<߈7�Y�5����Vx�+��b@�Aa��#��	}n��Q�	!Fuusw[�q��4,s�����Bǰ���4��e嚤��c��N�MijJg�/��N�F�-/�rM%o�2%a�t��q`*Q-���2��w�[�[����8L�0��p��7y�1���h�z�\��k'zb�1oht/��(<�ӊ�;e�i�Q~���Q�
3��;;	\_E�U��      G   A   x���@PE��=��Q�f�A">�yZا#�l����Ie�­.x��g��G����Ary"54�>�X v      D   h   x��̱�@Cњ��R:ٞ"���>!H)P�':�$���I�*�#�(��[GЕ�S�*o\+�R�yK�G�G��O�߶`'�Yx��\�������.Wv1�      A   �   x���W��,K-��2 N H�L�KI�P(���W0202��r^�va���.v_��yaɅ�]�}a��& �	,�X���Y���Z�����X�S���X�6����r��{!&,���a��P��d�g��4N[ֆlL�sfIen~Rf��#�;ı�6 ���	q�!���99@}f_컰�=@?lU�����-6\l������@_l���75%�4hT� 58��      B   q   x��4000�*-.�L�0�¾��v]�ta��9*?4�YAۘ+Eì�6 ��*�� V���N��@vr�`U1�l�)ֻ��^?��;(� �}�٭1z\\\ �#�      @   �   x��4000���F�&�FF���@bC�f]�waӅ�^칰��q�]��,=抄�a�YThdb
�h�k`D �)�ya!Ќ=@3v_�qa�I@� ���.04&��Ⱦ012%�`w���q:��F��F �	���?�;�9�L�� !w�)��C"F��� Y��      F      x������ � �     