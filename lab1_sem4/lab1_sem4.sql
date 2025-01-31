PGDMP     2    )                {         	   SportClub    10.23    10.23 C    W           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false            X           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false            Y           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                       false            Z           1262    16393 	   SportClub    DATABASE     �   CREATE DATABASE "SportClub" WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'Russian_Russia.1251' LC_CTYPE = 'Russian_Russia.1251';
    DROP DATABASE "SportClub";
             postgres    false                        2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
             postgres    false            [           0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                  postgres    false    3                        3079    12924    plpgsql 	   EXTENSION     ?   CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;
    DROP EXTENSION plpgsql;
                  false            \           0    0    EXTENSION plpgsql    COMMENT     @   COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';
                       false    1            �            1259    16429    Contest    TABLE     9  CREATE TABLE public."Contest" (
    id_competition integer NOT NULL,
    competition_name character varying(60),
    date_beginning date,
    date_end date,
    discipline character varying(30),
    contest_category character varying(30),
    location character varying(60),
    contest_type character varying
);
    DROP TABLE public."Contest";
       public         postgres    false    3            �            1259    16404    GettingTrauma    TABLE     �   CREATE TABLE public."GettingTrauma" (
    id_trauma integer NOT NULL,
    id_sportsman integer NOT NULL,
    medication_end date NOT NULL,
    date_received date NOT NULL,
    trauma_code integer
);
 #   DROP TABLE public."GettingTrauma";
       public         postgres    false    3            �            1259    25042    GroupTrainer    TABLE     ^   CREATE TABLE public."GroupTrainer" (
    group_id integer NOT NULL,
    trainer_id integer
);
 "   DROP TABLE public."GroupTrainer";
       public         postgres    false    3            �            1259    16447 
   Occupation    TABLE     �   CREATE TABLE public."Occupation" (
    occupation_code integer NOT NULL,
    salary money,
    occupation_name character varying(30)
);
     DROP TABLE public."Occupation";
       public         postgres    false    3            �            1259    16434    Participation    TABLE     B  CREATE TABLE public."Participation" (
    id_result integer NOT NULL,
    id_sportsman integer NOT NULL,
    id_competition integer NOT NULL,
    id_trainer integer,
    contest_type character varying(30),
    sportsman_points integer NOT NULL,
    trainer_points integer NOT NULL,
    discipline character varying(30)
);
 #   DROP TABLE public."Participation";
       public         postgres    false    3            �            1259    16424    ShortListing    TABLE     �   CREATE TABLE public."ShortListing" (
    id_competition integer NOT NULL,
    discipline character varying(60),
    participant_rating character varying(30),
    date_held date,
    entry bit(1),
    id_sportsman integer
);
 "   DROP TABLE public."ShortListing";
       public         postgres    false    3            �            1259    16394 	   Sportsman    TABLE     �   CREATE TABLE public."Sportsman" (
    id_sportsman integer NOT NULL,
    phone_number integer,
    name_surname character varying(60),
    passport character varying(255)
);
    DROP TABLE public."Sportsman";
       public         postgres    false    3            �            1259    16452    SportsmanQualification    TABLE     �   CREATE TABLE public."SportsmanQualification" (
    qualification character varying(60),
    date_from date,
    date_till date,
    id_sportsman integer,
    rank_history integer NOT NULL
);
 ,   DROP TABLE public."SportsmanQualification";
       public         postgres    false    3            �            1259    17522    TeamWork    TABLE     i   CREATE TABLE public."TeamWork" (
    id_group integer,
    id_sportsman integer,
    enrolment bit(1)
);
    DROP TABLE public."TeamWork";
       public         postgres    false    3            �            1259    16399    Trainer    TABLE     �   CREATE TABLE public."Trainer" (
    id_trainer integer NOT NULL,
    phone_number integer,
    name_surname character varying(60),
    passport character varying(255),
    id_qualification integer NOT NULL
);
    DROP TABLE public."Trainer";
       public         postgres    false    3            ]           0    0    COLUMN "Trainer".name_surname    COMMENT     =   COMMENT ON COLUMN public."Trainer".name_surname IS 'фыв';
            public       postgres    false    197            �            1259    16442    TrainerQualification    TABLE     �   CREATE TABLE public."TrainerQualification" (
    id_qualification integer NOT NULL,
    occupation_code integer NOT NULL,
    date_from date NOT NULL,
    date_till date NOT NULL
);
 *   DROP TABLE public."TrainerQualification";
       public         postgres    false    3            �            1259    17512    Training    TABLE     �   CREATE TABLE public."Training" (
    id_training integer NOT NULL,
    location character varying(30),
    practice_start timestamp without time zone,
    practice_end timestamp without time zone,
    id_group integer
);
    DROP TABLE public."Training";
       public         postgres    false    3            �            1259    16409    Trauma    TABLE     �   CREATE TABLE public."Trauma" (
    id_trauma integer NOT NULL,
    trauma_type character varying(60) NOT NULL,
    severity character varying(30) NOT NULL,
    description character varying(100) NOT NULL
);
    DROP TABLE public."Trauma";
       public         postgres    false    3            M          0    16429    Contest 
   TABLE DATA                     public       postgres    false    201   RQ       J          0    16404    GettingTrauma 
   TABLE DATA                     public       postgres    false    198   sT       T          0    25042    GroupTrainer 
   TABLE DATA                     public       postgres    false    208   �U       P          0    16447 
   Occupation 
   TABLE DATA                     public       postgres    false    204   DV       N          0    16434    Participation 
   TABLE DATA                     public       postgres    false    202   �X       L          0    16424    ShortListing 
   TABLE DATA                     public       postgres    false    200   ]\       H          0    16394 	   Sportsman 
   TABLE DATA                     public       postgres    false    196   �]       Q          0    16452    SportsmanQualification 
   TABLE DATA                     public       postgres    false    205   {b       S          0    17522    TeamWork 
   TABLE DATA                     public       postgres    false    207   Re       I          0    16399    Trainer 
   TABLE DATA                     public       postgres    false    197   Mf       O          0    16442    TrainerQualification 
   TABLE DATA                     public       postgres    false    203   Pk       R          0    17512    Training 
   TABLE DATA                     public       postgres    false    206   �l       K          0    16409    Trauma 
   TABLE DATA                     public       postgres    false    199   pm       �
           2606    25085 "   Contest Contest_id_competition_key 
   CONSTRAINT     k   ALTER TABLE ONLY public."Contest"
    ADD CONSTRAINT "Contest_id_competition_key" UNIQUE (id_competition);
 P   ALTER TABLE ONLY public."Contest" DROP CONSTRAINT "Contest_id_competition_key";
       public         postgres    false    201            �
           2606    16433    Contest Contest_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public."Contest"
    ADD CONSTRAINT "Contest_pkey" PRIMARY KEY (id_competition);
 B   ALTER TABLE ONLY public."Contest" DROP CONSTRAINT "Contest_pkey";
       public         postgres    false    201            �
           2606    16408     GettingTrauma GettingTrauma_pkey 
   CONSTRAINT     w   ALTER TABLE ONLY public."GettingTrauma"
    ADD CONSTRAINT "GettingTrauma_pkey" PRIMARY KEY (id_trauma, id_sportsman);
 N   ALTER TABLE ONLY public."GettingTrauma" DROP CONSTRAINT "GettingTrauma_pkey";
       public         postgres    false    198    198            �
           2606    25046    GroupTrainer GroupTrainer_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public."GroupTrainer"
    ADD CONSTRAINT "GroupTrainer_pkey" PRIMARY KEY (group_id);
 L   ALTER TABLE ONLY public."GroupTrainer" DROP CONSTRAINT "GroupTrainer_pkey";
       public         postgres    false    208            �
           2606    16451    Occupation Occupation_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public."Occupation"
    ADD CONSTRAINT "Occupation_pkey" PRIMARY KEY (occupation_code);
 H   ALTER TABLE ONLY public."Occupation" DROP CONSTRAINT "Occupation_pkey";
       public         postgres    false    204            �
           2606    25087 )   Participation Participation_id_result_key 
   CONSTRAINT     m   ALTER TABLE ONLY public."Participation"
    ADD CONSTRAINT "Participation_id_result_key" UNIQUE (id_result);
 W   ALTER TABLE ONLY public."Participation" DROP CONSTRAINT "Participation_id_result_key";
       public         postgres    false    202            �
           2606    24968 2   SportsmanQualification SportsmanQualification_pkey 
   CONSTRAINT     ~   ALTER TABLE ONLY public."SportsmanQualification"
    ADD CONSTRAINT "SportsmanQualification_pkey" PRIMARY KEY (rank_history);
 `   ALTER TABLE ONLY public."SportsmanQualification" DROP CONSTRAINT "SportsmanQualification_pkey";
       public         postgres    false    205            �
           2606    25091 >   SportsmanQualification SportsmanQualification_rank_history_key 
   CONSTRAINT     �   ALTER TABLE ONLY public."SportsmanQualification"
    ADD CONSTRAINT "SportsmanQualification_rank_history_key" UNIQUE (rank_history);
 l   ALTER TABLE ONLY public."SportsmanQualification" DROP CONSTRAINT "SportsmanQualification_rank_history_key";
       public         postgres    false    205            �
           2606    25089 -   Sportsman Sportsman_id_sportsman_passport_key 
   CONSTRAINT     ~   ALTER TABLE ONLY public."Sportsman"
    ADD CONSTRAINT "Sportsman_id_sportsman_passport_key" UNIQUE (id_sportsman, passport);
 [   ALTER TABLE ONLY public."Sportsman" DROP CONSTRAINT "Sportsman_id_sportsman_passport_key";
       public         postgres    false    196    196            �
           2606    25093 >   TrainerQualification TrainerQualification_id_qualification_key 
   CONSTRAINT     �   ALTER TABLE ONLY public."TrainerQualification"
    ADD CONSTRAINT "TrainerQualification_id_qualification_key" UNIQUE (id_qualification);
 l   ALTER TABLE ONLY public."TrainerQualification" DROP CONSTRAINT "TrainerQualification_id_qualification_key";
       public         postgres    false    203            �
           2606    16446 .   TrainerQualification TrainerQualification_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public."TrainerQualification"
    ADD CONSTRAINT "TrainerQualification_pkey" PRIMARY KEY (id_qualification, occupation_code);
 \   ALTER TABLE ONLY public."TrainerQualification" DROP CONSTRAINT "TrainerQualification_pkey";
       public         postgres    false    203    203            �
           2606    16403    Trainer Trainer_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public."Trainer"
    ADD CONSTRAINT "Trainer_pkey" PRIMARY KEY (id_trainer);
 B   ALTER TABLE ONLY public."Trainer" DROP CONSTRAINT "Trainer_pkey";
       public         postgres    false    197            �
           2606    25041 !   Training Training_id_training_key 
   CONSTRAINT     g   ALTER TABLE ONLY public."Training"
    ADD CONSTRAINT "Training_id_training_key" UNIQUE (id_training);
 O   ALTER TABLE ONLY public."Training" DROP CONSTRAINT "Training_id_training_key";
       public         postgres    false    206            �
           2606    25039    Training Training_pkey 
   CONSTRAINT     a   ALTER TABLE ONLY public."Training"
    ADD CONSTRAINT "Training_pkey" PRIMARY KEY (id_training);
 D   ALTER TABLE ONLY public."Training" DROP CONSTRAINT "Training_pkey";
       public         postgres    false    206            �
           2606    25095    Trauma Trauma_id_trauma_key 
   CONSTRAINT     _   ALTER TABLE ONLY public."Trauma"
    ADD CONSTRAINT "Trauma_id_trauma_key" UNIQUE (id_trauma);
 I   ALTER TABLE ONLY public."Trauma" DROP CONSTRAINT "Trauma_id_trauma_key";
       public         postgres    false    199            �
           2606    16413    Trauma Trauma_pkey 
   CONSTRAINT     [   ALTER TABLE ONLY public."Trauma"
    ADD CONSTRAINT "Trauma_pkey" PRIMARY KEY (id_trauma);
 @   ALTER TABLE ONLY public."Trauma" DROP CONSTRAINT "Trauma_pkey";
       public         postgres    false    199            �
           2606    24955    Participation pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY public."Participation"
    ADD CONSTRAINT pkey PRIMARY KEY (id_result);
 >   ALTER TABLE ONLY public."Participation" DROP CONSTRAINT pkey;
       public         postgres    false    202            �
           2606    16398 !   Sportsman Спортсмен_pkey 
   CONSTRAINT     m   ALTER TABLE ONLY public."Sportsman"
    ADD CONSTRAINT "Спортсмен_pkey" PRIMARY KEY (id_sportsman);
 O   ALTER TABLE ONLY public."Sportsman" DROP CONSTRAINT "Спортсмен_pkey";
       public         postgres    false    196            �
           2606    25079 -   GettingTrauma GettingTrauma_id_sportsman_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."GettingTrauma"
    ADD CONSTRAINT "GettingTrauma_id_sportsman_fkey" FOREIGN KEY (id_sportsman) REFERENCES public."Sportsman"(id_sportsman) NOT VALID;
 [   ALTER TABLE ONLY public."GettingTrauma" DROP CONSTRAINT "GettingTrauma_id_sportsman_fkey";
       public       postgres    false    2720    198    196            �
           2606    25074 ,   GettingTrauma GettingTrauma_trauma_code_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."GettingTrauma"
    ADD CONSTRAINT "GettingTrauma_trauma_code_fkey" FOREIGN KEY (trauma_code) REFERENCES public."Trauma"(id_trauma) NOT VALID;
 Z   ALTER TABLE ONLY public."GettingTrauma" DROP CONSTRAINT "GettingTrauma_trauma_code_fkey";
       public       postgres    false    198    2728    199            �
           2606    25047 )   GroupTrainer GroupTrainer_trainer_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."GroupTrainer"
    ADD CONSTRAINT "GroupTrainer_trainer_id_fkey" FOREIGN KEY (trainer_id) REFERENCES public."Trainer"(id_trainer);
 W   ALTER TABLE ONLY public."GroupTrainer" DROP CONSTRAINT "GroupTrainer_trainer_id_fkey";
       public       postgres    false    208    197    2722            �
           2606    24956 /   Participation Participation_id_competition_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Participation"
    ADD CONSTRAINT "Participation_id_competition_fkey" FOREIGN KEY (id_competition) REFERENCES public."Contest"(id_competition) MATCH FULL NOT VALID;
 ]   ALTER TABLE ONLY public."Participation" DROP CONSTRAINT "Participation_id_competition_fkey";
       public       postgres    false    201    2732    202            �
           2606    17490 +   ShortListing ShortListing_id_sportsman_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."ShortListing"
    ADD CONSTRAINT "ShortListing_id_sportsman_fkey" FOREIGN KEY (id_sportsman) REFERENCES public."Sportsman"(id_sportsman) NOT VALID;
 Y   ALTER TABLE ONLY public."ShortListing" DROP CONSTRAINT "ShortListing_id_sportsman_fkey";
       public       postgres    false    200    2720    196            �
           2606    25052    TeamWork TeamWork_id_group_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."TeamWork"
    ADD CONSTRAINT "TeamWork_id_group_fkey" FOREIGN KEY (id_group) REFERENCES public."GroupTrainer"(group_id) NOT VALID;
 M   ALTER TABLE ONLY public."TeamWork" DROP CONSTRAINT "TeamWork_id_group_fkey";
       public       postgres    false    208    2752    207            �
           2606    24949 ?   TrainerQualification TrainerQualification_id_qualification_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."TrainerQualification"
    ADD CONSTRAINT "TrainerQualification_id_qualification_fkey" FOREIGN KEY (id_qualification) REFERENCES public."Trainer"(id_trainer) NOT VALID;
 m   ALTER TABLE ONLY public."TrainerQualification" DROP CONSTRAINT "TrainerQualification_id_qualification_fkey";
       public       postgres    false    203    2722    197            �
           2606    25057    Training Training_id_group_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Training"
    ADD CONSTRAINT "Training_id_group_fkey" FOREIGN KEY (id_group) REFERENCES public."GroupTrainer"(group_id) NOT VALID;
 M   ALTER TABLE ONLY public."Training" DROP CONSTRAINT "Training_id_group_fkey";
       public       postgres    false    206    2752    208            �
           2606    17412    ShortListing id_competition    FK CONSTRAINT     �   ALTER TABLE ONLY public."ShortListing"
    ADD CONSTRAINT id_competition FOREIGN KEY (id_competition) REFERENCES public."Contest"(id_competition) NOT VALID;
 G   ALTER TABLE ONLY public."ShortListing" DROP CONSTRAINT id_competition;
       public       postgres    false    2732    201    200            �
           2606    17392    Participation id_sportsman    FK CONSTRAINT     �   ALTER TABLE ONLY public."Participation"
    ADD CONSTRAINT id_sportsman FOREIGN KEY (id_sportsman) REFERENCES public."Sportsman"(id_sportsman) NOT VALID;
 F   ALTER TABLE ONLY public."Participation" DROP CONSTRAINT id_sportsman;
       public       postgres    false    202    196    2720            �
           2606    17397    Participation id_trainer    FK CONSTRAINT     �   ALTER TABLE ONLY public."Participation"
    ADD CONSTRAINT id_trainer FOREIGN KEY (id_trainer) REFERENCES public."Trainer"(id_trainer) NOT VALID;
 D   ALTER TABLE ONLY public."Participation" DROP CONSTRAINT id_trainer;
       public       postgres    false    202    197    2722            �
           2606    17417    SportsmanQualification link    FK CONSTRAINT     �   ALTER TABLE ONLY public."SportsmanQualification"
    ADD CONSTRAINT link FOREIGN KEY (id_sportsman) REFERENCES public."Sportsman"(id_sportsman) NOT VALID;
 G   ALTER TABLE ONLY public."SportsmanQualification" DROP CONSTRAINT link;
       public       postgres    false    205    196    2720            �
           2606    17437 $   TrainerQualification occupation_code    FK CONSTRAINT     �   ALTER TABLE ONLY public."TrainerQualification"
    ADD CONSTRAINT occupation_code FOREIGN KEY (occupation_code) REFERENCES public."Occupation"(occupation_code) NOT VALID;
 P   ALTER TABLE ONLY public."TrainerQualification" DROP CONSTRAINT occupation_code;
       public       postgres    false    204    2742    203            �
           2606    16787 #   SportsmanQualification sportsman_id    FK CONSTRAINT     �   ALTER TABLE ONLY public."SportsmanQualification"
    ADD CONSTRAINT sportsman_id FOREIGN KEY (id_sportsman) REFERENCES public."Sportsman"(id_sportsman) NOT VALID;
 O   ALTER TABLE ONLY public."SportsmanQualification" DROP CONSTRAINT sportsman_id;
       public       postgres    false    205    196    2720            M     x��XOkA��S,������&i�$�C@*��P<���ST$BI�T+�"�qm��&���|#߼�d���d�ـ�����7��{'�ݽ���N}w������gO�ܺ�����W[���w��9��ǅO�ф�x=�Ї+�ġh@��WFГ���nk�%.��}]���{�Vd��ˑ�=����c��7��hzہ ���%I3�� �*��g�,R�s��*�m`s��T��w�⯴U��5���h��D���	h^�^,1I��c��WR!]�)���<�ત��N����"6Z4���D���ohM����t��'�8!;�h���	��Y,�`���}+Q��-�`I�u�?�S���	g`����c�%z����
0������E����9�`�5��}�/ï���OCB[jE���]�"��~s~Z�P��p@1�c�(�K��S�O�_@�z�[���	Z���UۄO��I��d湮�{s����y_�2������.5��2T?��(���[���r�$��n���@6)e�r�7rIy#�aDa�M�y�U�~x��������a^�wg�k����ff�i��2tlc��ꌯ[���
�&UUa�R-�M�ΩW��z��0�Hh��ODx5�^/f�1��ԈkgM|�)ek涿G���𸩠���Z�������^N���eh�����=fG/��\�2_I;#kԱj��w��93�DSg����*W��wN�����W�^_v�J�zNC8�m|Je���_,�ʭ�p��.
� ���e      J   S  x���AK1���+�^Va*I�3����"��;z_E��UDv��I�Nz�=��///y�����l���h�.��������|>~����c�2/wϛ�����К5���b��/zK�_H׷��$��KH$� �_$�2d�HH*G�
I�|ұ�$�م8Z� eĞ�J"���E_�d)��P������~B:K�V	���}�B��ӏ/_8��_��z���K�2��J�螋�09<�0C�`��)�qj11hf�P̔�xr�B5Lָ�ώf��L��H�$ȩ�`�݌~�C%C���k��e�_�
���%ʡ<����8d7��� \CC�x��,5���X      T   ^   x���v
Q���W((M��L�Sr/�/-)J��K-RRs�	uV�04�Q04ִ��$^����9i:�����RG�4WY�(�����&C�.. XX(      P   u  x����nA��{�U�)����O�"�I(�H���"!HA��4y��D$�{��7�߲莎���m>�|����bw��A��=�뎎_�<\���[.����9|�j�{���ӝ����niէⷝ���������?��n8N�u������v8�������_ਂ%k�T�.U�J��������E�O��~_?��=W�3���W*~s�_�V]�U_��\ԯ���?��q���d�Oʪ����Hn!��3O.9�*'Kj�]�4�9���;�@S�K�K��.��k� βꉲ�CG��6	0�R��7����5�z��c6�� f�̓�xs��d1?��o��\P��xGl�M���$6�ʜ���z�Mo�{g`+Eeo~�l=c�gk�=�؄��\���n������xnS������� �&B�(�ͮl��4����7]�|q�:��2�8 M��BmڝX:�E�^��5i_ͱ��"�Sg�vI��N��Wb��cnӝ$�َL����p��Zf88`N���M7��nZe89k��ۂf�\\��{Ri��ez��W�@	Xg��&=���QmY�C�1�s #��fK�~/�,ӣϞ�)z`�X+��v���'�3�"      N   �  x��XMkA��W���*3�13�'9$���cN�A�=�x� O^D��1Ac�_��GVuuo`�����\�M���W�U�����ӝlsk�q���������'�of{��݃��W��󇏞mlgw�i&�?�4���ͻ��^ۋ���f��������9l>��d�I8Zx�������}���+ O4`��� ��f����=k��#Κ��dI	  T�O+�������cB��O���۫%q10����JM����=[���Y�� `%��\�wI���g;o�"��Zp�f\��u7:������-n)T(� ;�n���V`�)`�tXNS�1�A�v
��Uʿ������J�w���D�A�rj�\��J�z�lU�9�J��[���K���N��g��$��<Ce4ի���խ�1�U���Е�4��LX�4��oVi���Qe��Z�B\F����(�$K<�¦5v;���%�����W�O5�3��<EG:��Q�9	��U�^*����%5����a��M�0W����'���L�Q�Si�"����(~���yEEH��V5�T2wn*hZN�'$�3��nP��I�ے	
wȠ�i\R��luc�~\��:��UQ����otAc�F��ۢkp}�B�P�+�K�y�f&�M�YJ�g���DXiV/�Vᅧ��=���&�"����R� r����<�"�`�DP�V\
��˃�!#2M�}䢜o�9�aB\��Z�H�և#�b��7\�Z8��)
��{jC.�N�L�Q`vzF>��n�s���@���^7'�2�`�V_�2
��w�<L��ؘ��ƙ��oLi��C�i�7ᗝAL��\���h*�n��*Z(6P��_u�b�ܻ~m���Ae�:"���JB�      L   �  x����J�@��}��K��̦i�'�
���>�4 *Z��I/�<V����
�o�nR�؈SC��o��f��Aggt�����r�8=X��N�G��b��փ���ng��ZР{�����g�6��i

HB�[��� ]%�nԺ�F�A?М>hFo��Y�x2��5aѥ�?�T�Ч�u�HGA���J�*����J��fn��ӷFы㋁C����𩺢w���U-̑YY��b�[^��Rf,�)�m���ڕ]�%��6�T��6����%����|1QK����g��%��^��e3w�6��G��ܸ�h|sik�J�/ &?���S��^�7������[�,3d�����XY��]}#�2c�<t�����'�-���~Cs      H   y  x��XMk]U��W<:���>��l9�  Lun	~?�*��NQ���Ck�iI~�}��u�k%�%7y�G$gݽ�Zk��ûGw޻�:�{��Ճ����Go�>z��_}�釟�^}��;��9Z�Fo��ev!e<L�O��o�g�G������lz��� ?��������n�w|��)���8����?�N�����t>�X�8��X?܀~�Ě@ ����9^?��Vӟx�g�s|����t�I��rp@d4�scW��7*X]���W/ٓ�r��Qgӿ3�V%ʜ]� �(���q�����w�����Ʊ�n�8�T�]D7�@�|���ӓKl�S�n\���N$,� ��F� ��+�ÔZ�U���Ѽ'ޫp|��ɺD���	(��.�l�{E�C��;���v^�Oݝ)�d�0�f�^���J����*X���Dن�aL�B���X��札�3�(�]��+����ۈ3��J�ֆ!hO2n[�-����BM�����D��i��[6���)�7)�r+1"68lЍܰ�R�0�Z��>�+��m��W�3XK��f2��K*(��L��fG+{sx �a�f&Wl���Q�&ʪx��o���o���N r�iz��x8�5 dV��1B���
���-y��T�`"�S�tfl����<�����倃��������hK�[.m!�eE�<G�bx�-�l���3J�.��k�Q���S��#Ԉh|�X4u?堒F[���s��a�"�b᥀��MI�ki�9����,�$ 3�f��Kf�"d�������C�Z� �� 6�I��sg&�"��pd�1��ѽ��J�t�X+�� iXIc���0&��nEp�֜��b�C#IAyEEW���	̡�pn#;x�M@�Nå��̑�[���m�W(s�s�гyo8��orߞ���@K> ��c�����W\S�����Q��ֱvQ~�^ �A���vs}׌��#VPx�B:���-U��(U3� ��a��6.lNxLP��P9y��$�&�_j�	7*U`s��ZG�}����_������o=-��n�Soёcj7��՚`5��S�]������l��m�ۨ� ��`��7v������[�5ݖ�      Q   �  x����jA��y�!��.#i�詇%�u��(�$�ɳB�c�-�H�����δy�>������\n/>\���ջ����v��|�p���ۗ���������f����;�o�~�؆�Ï�/��gM�q�qN<��G��%��z��l�xV�� ~� "ADM`�@)���A#n�x%d~���s��b4��	�V��I2Z�Ԅ�b#bV��	���i̦�j�E�^��0|uР^qلU�$hچѪ	�zv��JZ8Dk@+��I�=)�n��TL��T�&7��\V�`���&�����Z-���xf.N�r�� 9�)���N�n�rrS^���=z��H'7�oM��{��v*�������M�U� ���|*�6�>�yv3_�e����u������R0pg7�)�������򲢬��ٍ{��y��d0�n��*��b0ϕ�{~e1�g7�E�}����-o��4�R?3p7�ٱ�6=W9��&������.~���.]m���^�x�f0&�.�����S�/�Ri���hW��K��}�>�������&�r��X@��O���&�� .~�3�N6��"@<��x���Z�̓�y�w}i��6K`<Uc�&�uQ�ɿ�s	��T��>�݀�a�ܽ}�@y���yz���PO~�β�I�X��:'�h��4�T�l��J�=�a/�F&��
xo����?B���      S   �   x��Ի
�@F�>O���Bs�(V
)$�YM�b!*����[��|L1��M[o��Mظ��x��Fq8���u��~��խT��R�J�d����$���d�ɔ���'sH���C�/C����dh24Z��@�v���ځ�@�v C;����dh2�ځ�AAC0DK0DS0D[0Dc0Dk0Ds0D{0D�0���[�"�pB�!\�.B!���E�"��ED��ȱ8      I   �  x���Ok^U���/�T��3�9�r�E@*��^�E���7q!hՅ��+�Q+�M��p�o�3�&���O&�Bn�{�w�<�{x����V����_}��'�~z����~���[���}��{Vo�;+�,��
�Yݞ����^��?��������t6������7���K��E��Ho�sp����n�=t~���!�W�e%�#g�8��p�/�������PZ㷗���*�5<JVI�$�Y�J���B(����f5���n�
�#��x\z!2ţfU*�����rw��բu�Ͳ:�"��2�<���N���M���Z��Ur(��^a�����wԍ�5
��ժ��R�Z���+҄�A�t�V%�AU�-���	��|v��Mmq�+̀\{�|�I�o�2����G,���T��T�M/�_��]WԺ{-*�6��k/l?���!z���< !Xk�z�]�3�Nu�"Jc���jU�φ��D��U�E�^4� �J�K���pia��I�t�-�kq�p���`%�F%(AiLPp���*��Ņ[n��/�FdiLPp���������t6�����"���	b�.�AA3)褙��vT��G*�Ҙ���I�ߤ���K�QYihР������~��Og��b��^�4+8X��R�Ru���Ee��`#��iNpp	�R�K���j�n��$�U;��eI��Z(z't��J�"�Gh��)Di����]0���-M�����V΋ضT�^
�4+�oDM�'X���7�p80�
Vزϓ������QE�.q��`�כjzR*(\A3L�"fԉ��l��"��ʩ�N��@:0��E]]!��U�Dא4!$!�5�e�~AW:��ӹ�AVLH�B�fC�;u$@�i�����	��%M	:̍��7�m]Pj�5� �%#��p7^:/��_c�A�"���f����K{�צ�^f��&��%|��2�?Xב��4��k��$��!��Ji"� B�F9���xa3�b*u�P�2�p���ޤG`�F�zi&H~ Fh.7��N�iE{n�:�Ǌ=�ĺ+�Qg���i6DOE d�}U�LA���{Ś;�xh�|��B���:��b�mlM�fCtr�ǬR���ͣ��+�F��à s���]�b�����<�j����&�@�d��ɠ��w�v���͘���xˡi*��(��Ţ�t��-gk"�Q��F�0�:/Xw�~�i��pA�:XP���ly��IΣ�{%
�$h��      O   ?  x���1O�0���
�K@r��َ11t�����{�@�TT���9C{82���w���v�2�~3<����a�߭��8�O���0}L��{�<�����u�57h:kj��A_�'��������3����BeT,�AGe��Z��Tj��ޚ@�,�F5Xӆ
R+&�=�I:�U9�hM�rZi	*�D��'�%%���Z�bgGTX�\�9HKLs��6H��!%�#���ܢ���e�m'�%/��v9	������K�]�z��
ʘ![K���EZ��K���D-����u�;w����Q %�-���! E���enU� �G�%      R   �   x���v
Q���W((M��L�S
)J����KWRs�	uVа�QP�0�¾�/�\� �;.l����nu����������������64Ҵ��$�Rs��.6^l�����{I�͐h����f��6aK�-3Y6����%1�Ym�	Q�G���D�i�;@��F�0�jDЃ��I|��Db�( ���      K   �  x��X�n�P��+�n����X��"SH���+��@BH�S6,����_5
D����uR�~�q�����;3gΜ�l8�G�p�=�{����+��{OwW�{�7���B".E}����~��_��_��1�}�'~�����e�,?X�.����[�����+�@�x��0�1��pw䏋��2W!����y��� s
q�P�ⵯ!��b�i@+b<�_�ˇ����߸Fd5
�\u���&mѵM�LuF�R�.x�%���g�'��Ε�A0�S�*����� �昤@A����m�0E��>�L���P6H:E���B���`�jx�fM�ڐhã�i<�λ�B���eN~����ޠ�2�ZB��d����+W
�P�FU7�}��w�a�<���1$�8��옊lQk��L����q�3��B#2��q�~�8 ˤLڹQGr�vJ�4;dp�)U���ᬗ�Q!��9i:i�*Y<��fVT�9����YrwQ��Ψ>���*$�p=`�]���V��:Y�=J�J;`��j0��[#ˣ�g
�M�i4�8
2��I�N�&7<CUZu�`G�N�J����$aq�	t��`�������Y<@��׉�(}�$�Z�,j؟$ln�msЉV�'t]����S~���~�=F[     