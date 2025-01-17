PGDMP         	        
    	    z         
   planetqweb    14.5    14.5 C    V           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            W           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            X           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            Y           1262    16600 
   planetqweb    DATABASE     n   CREATE DATABASE planetqweb WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'English_United States.1252';
    DROP DATABASE planetqweb;
                postgres    false            �            1259    16601 	   auditLogs    TABLE     p  CREATE TABLE public."auditLogs" (
    id uuid NOT NULL,
    "entityName" character varying(255) NOT NULL,
    "entityId" character varying(255) NOT NULL,
    "tenantId" uuid,
    action character varying(32) NOT NULL,
    "createdById" uuid,
    "createdByEmail" character varying(255),
    "timestamp" timestamp with time zone NOT NULL,
    "values" json NOT NULL
);
    DROP TABLE public."auditLogs";
       public         heap    postgres    false            �            1259    16648    files    TABLE     =  CREATE TABLE public.files (
    id uuid NOT NULL,
    "belongsTo" character varying(255) NOT NULL,
    "belongsToId" character varying(255) NOT NULL,
    "belongsToColumn" character varying(255) NOT NULL,
    name character varying(2083) NOT NULL,
    "sizeInBytes" integer,
    "privateUrl" character varying(2083),
    "publicUrl" character varying(2083),
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "deletedAt" timestamp with time zone,
    "tenantId" uuid,
    "createdById" uuid,
    "updatedById" uuid
);
    DROP TABLE public.files;
       public         heap    postgres    false            �            1259    16670    musicTracks    TABLE     �  CREATE TABLE public."musicTracks" (
    id uuid NOT NULL,
    "trackName" text NOT NULL,
    artist text NOT NULL,
    album character varying(100),
    "externalSourceUrl" text,
    active boolean DEFAULT false NOT NULL,
    "importHash" character varying(255),
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "deletedAt" timestamp with time zone,
    "tenantId" uuid NOT NULL,
    "createdById" uuid,
    "updatedById" uuid
);
 !   DROP TABLE public."musicTracks";
       public         heap    postgres    false            �            1259    16791 #   regularScheduleMusicTrackMusicTrack    TABLE     �   CREATE TABLE public."regularScheduleMusicTrackMusicTrack" (
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "regularScheduleId" uuid NOT NULL,
    "musicTrackId" uuid NOT NULL
);
 9   DROP TABLE public."regularScheduleMusicTrackMusicTrack";
       public         heap    postgres    false            �            1259    16694    regularSchedules    TABLE     _  CREATE TABLE public."regularSchedules" (
    id uuid NOT NULL,
    day text NOT NULL,
    "importHash" character varying(255),
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "deletedAt" timestamp with time zone,
    "tenantId" uuid NOT NULL,
    "createdById" uuid,
    "updatedById" uuid
);
 &   DROP TABLE public."regularSchedules";
       public         heap    postgres    false            �            1259    16718    settings    TABLE     �  CREATE TABLE public.settings (
    id character varying(255) DEFAULT 'default'::character varying NOT NULL,
    theme character varying(255) NOT NULL,
    "backgroundImageUrl" character varying(1024),
    "logoUrl" character varying(1024),
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "deletedAt" timestamp with time zone,
    "tenantId" uuid NOT NULL,
    "createdById" uuid,
    "updatedById" uuid
);
    DROP TABLE public.settings;
       public         heap    postgres    false            �            1259    16796 #   specialScheduleMusicTrackMusicTrack    TABLE     �   CREATE TABLE public."specialScheduleMusicTrackMusicTrack" (
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "specialScheduleId" uuid NOT NULL,
    "musicTrackId" uuid NOT NULL
);
 9   DROP TABLE public."specialScheduleMusicTrackMusicTrack";
       public         heap    postgres    false            �            1259    16741    specialSchedules    TABLE     �  CREATE TABLE public."specialSchedules" (
    id uuid NOT NULL,
    description text NOT NULL,
    "scheduleDate" date,
    "importHash" character varying(255),
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "deletedAt" timestamp with time zone,
    "tenantId" uuid NOT NULL,
    "createdById" uuid,
    "updatedById" uuid
);
 &   DROP TABLE public."specialSchedules";
       public         heap    postgres    false            �            1259    16764    tenantUsers    TABLE     �  CREATE TABLE public."tenantUsers" (
    id uuid NOT NULL,
    roles text[],
    "invitationToken" character varying(255),
    status character varying(255) NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "deletedAt" timestamp with time zone,
    "tenantId" uuid,
    "userId" uuid NOT NULL,
    "createdById" uuid,
    "updatedById" uuid
);
 !   DROP TABLE public."tenantUsers";
       public         heap    postgres    false            �            1259    16628    tenants    TABLE     4  CREATE TABLE public.tenants (
    id uuid NOT NULL,
    name character varying(255) NOT NULL,
    url character varying(50) NOT NULL,
    plan character varying(255) DEFAULT 'free'::character varying NOT NULL,
    "planStatus" character varying(255) DEFAULT 'active'::character varying NOT NULL,
    "planStripeCustomerId" character varying(255),
    "planUserId" uuid,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "deletedAt" timestamp with time zone,
    "createdById" uuid,
    "updatedById" uuid
);
    DROP TABLE public.tenants;
       public         heap    postgres    false            �            1259    16608    users    TABLE     �  CREATE TABLE public.users (
    id uuid NOT NULL,
    "fullName" character varying(255),
    "firstName" character varying(80),
    password character varying(255),
    "emailVerified" boolean DEFAULT false NOT NULL,
    "emailVerificationToken" character varying(255),
    "emailVerificationTokenExpiresAt" timestamp with time zone,
    provider character varying(255),
    "providerId" character varying(2024),
    "passwordResetToken" character varying(255),
    "passwordResetTokenExpiresAt" timestamp with time zone,
    "lastName" character varying(175),
    "phoneNumber" character varying(24),
    email character varying(255) NOT NULL,
    "jwtTokenInvalidBefore" timestamp with time zone,
    "importHash" character varying(255),
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "deletedAt" timestamp with time zone,
    "createdById" uuid,
    "updatedById" uuid
);
    DROP TABLE public.users;
       public         heap    postgres    false            I          0    16601 	   auditLogs 
   TABLE DATA                 public          postgres    false    211   �e       L          0    16648    files 
   TABLE DATA                 public          postgres    false    214   ]r       M          0    16670    musicTracks 
   TABLE DATA                 public          postgres    false    215   w       R          0    16791 #   regularScheduleMusicTrackMusicTrack 
   TABLE DATA                 public          postgres    false    220   _y       N          0    16694    regularSchedules 
   TABLE DATA                 public          postgres    false    216   �z       O          0    16718    settings 
   TABLE DATA                 public          postgres    false    217   |       S          0    16796 #   specialScheduleMusicTrackMusicTrack 
   TABLE DATA                 public          postgres    false    221   3}       P          0    16741    specialSchedules 
   TABLE DATA                 public          postgres    false    218   ~       Q          0    16764    tenantUsers 
   TABLE DATA                 public          postgres    false    219   �~       K          0    16628    tenants 
   TABLE DATA                 public          postgres    false    213   {�       J          0    16608    users 
   TABLE DATA                 public          postgres    false    212   9�       �           2606    16607    auditLogs auditLogs_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public."auditLogs"
    ADD CONSTRAINT "auditLogs_pkey" PRIMARY KEY (id);
 F   ALTER TABLE ONLY public."auditLogs" DROP CONSTRAINT "auditLogs_pkey";
       public            postgres    false    211            �           2606    16654    files files_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.files
    ADD CONSTRAINT files_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.files DROP CONSTRAINT files_pkey;
       public            postgres    false    214            �           2606    16677    musicTracks musicTracks_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public."musicTracks"
    ADD CONSTRAINT "musicTracks_pkey" PRIMARY KEY (id);
 J   ALTER TABLE ONLY public."musicTracks" DROP CONSTRAINT "musicTracks_pkey";
       public            postgres    false    215            �           2606    16795 L   regularScheduleMusicTrackMusicTrack regularScheduleMusicTrackMusicTrack_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public."regularScheduleMusicTrackMusicTrack"
    ADD CONSTRAINT "regularScheduleMusicTrackMusicTrack_pkey" PRIMARY KEY ("regularScheduleId", "musicTrackId");
 z   ALTER TABLE ONLY public."regularScheduleMusicTrackMusicTrack" DROP CONSTRAINT "regularScheduleMusicTrackMusicTrack_pkey";
       public            postgres    false    220    220            �           2606    16700 &   regularSchedules regularSchedules_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public."regularSchedules"
    ADD CONSTRAINT "regularSchedules_pkey" PRIMARY KEY (id);
 T   ALTER TABLE ONLY public."regularSchedules" DROP CONSTRAINT "regularSchedules_pkey";
       public            postgres    false    216            �           2606    16725    settings settings_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.settings
    ADD CONSTRAINT settings_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.settings DROP CONSTRAINT settings_pkey;
       public            postgres    false    217            �           2606    16800 L   specialScheduleMusicTrackMusicTrack specialScheduleMusicTrackMusicTrack_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public."specialScheduleMusicTrackMusicTrack"
    ADD CONSTRAINT "specialScheduleMusicTrackMusicTrack_pkey" PRIMARY KEY ("specialScheduleId", "musicTrackId");
 z   ALTER TABLE ONLY public."specialScheduleMusicTrackMusicTrack" DROP CONSTRAINT "specialScheduleMusicTrackMusicTrack_pkey";
       public            postgres    false    221    221            �           2606    16747 &   specialSchedules specialSchedules_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public."specialSchedules"
    ADD CONSTRAINT "specialSchedules_pkey" PRIMARY KEY (id);
 T   ALTER TABLE ONLY public."specialSchedules" DROP CONSTRAINT "specialSchedules_pkey";
       public            postgres    false    218            �           2606    16770    tenantUsers tenantUsers_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public."tenantUsers"
    ADD CONSTRAINT "tenantUsers_pkey" PRIMARY KEY (id);
 J   ALTER TABLE ONLY public."tenantUsers" DROP CONSTRAINT "tenantUsers_pkey";
       public            postgres    false    219            �           2606    16636    tenants tenants_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.tenants
    ADD CONSTRAINT tenants_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.tenants DROP CONSTRAINT tenants_pkey;
       public            postgres    false    213            �           2606    16615    users users_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
       public            postgres    false    212            �           1259    16693 "   music_tracks_import_hash_tenant_id    INDEX     �   CREATE UNIQUE INDEX music_tracks_import_hash_tenant_id ON public."musicTracks" USING btree ("importHash", "tenantId") WHERE ("deletedAt" IS NULL);
 6   DROP INDEX public.music_tracks_import_hash_tenant_id;
       public            postgres    false    215    215    215            �           1259    16717    regular_schedules_day_tenant_id    INDEX     �   CREATE UNIQUE INDEX regular_schedules_day_tenant_id ON public."regularSchedules" USING btree (day, "tenantId") WHERE ("deletedAt" IS NULL);
 3   DROP INDEX public.regular_schedules_day_tenant_id;
       public            postgres    false    216    216    216            �           1259    16716 '   regular_schedules_import_hash_tenant_id    INDEX     �   CREATE UNIQUE INDEX regular_schedules_import_hash_tenant_id ON public."regularSchedules" USING btree ("importHash", "tenantId") WHERE ("deletedAt" IS NULL);
 ;   DROP INDEX public.regular_schedules_import_hash_tenant_id;
       public            postgres    false    216    216    216            �           1259    16763 '   special_schedules_import_hash_tenant_id    INDEX     �   CREATE UNIQUE INDEX special_schedules_import_hash_tenant_id ON public."specialSchedules" USING btree ("importHash", "tenantId") WHERE ("deletedAt" IS NULL);
 ;   DROP INDEX public.special_schedules_import_hash_tenant_id;
       public            postgres    false    218    218    218            �           1259    16647    tenants_url    INDEX     a   CREATE UNIQUE INDEX tenants_url ON public.tenants USING btree (url) WHERE ("deletedAt" IS NULL);
    DROP INDEX public.tenants_url;
       public            postgres    false    213    213            �           1259    16626    users_email    INDEX     a   CREATE UNIQUE INDEX users_email ON public.users USING btree (email) WHERE ("deletedAt" IS NULL);
    DROP INDEX public.users_email;
       public            postgres    false    212    212            �           1259    16627    users_import_hash    INDEX     n   CREATE UNIQUE INDEX users_import_hash ON public.users USING btree ("importHash") WHERE ("deletedAt" IS NULL);
 %   DROP INDEX public.users_import_hash;
       public            postgres    false    212    212            �           2606    16660    files files_createdById_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.files
    ADD CONSTRAINT "files_createdById_fkey" FOREIGN KEY ("createdById") REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE SET NULL;
 H   ALTER TABLE ONLY public.files DROP CONSTRAINT "files_createdById_fkey";
       public          postgres    false    212    3215    214            �           2606    16655    files files_tenantId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.files
    ADD CONSTRAINT "files_tenantId_fkey" FOREIGN KEY ("tenantId") REFERENCES public.tenants(id) ON UPDATE CASCADE ON DELETE SET NULL;
 E   ALTER TABLE ONLY public.files DROP CONSTRAINT "files_tenantId_fkey";
       public          postgres    false    214    213    3217            �           2606    16665    files files_updatedById_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.files
    ADD CONSTRAINT "files_updatedById_fkey" FOREIGN KEY ("updatedById") REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE SET NULL;
 H   ALTER TABLE ONLY public.files DROP CONSTRAINT "files_updatedById_fkey";
       public          postgres    false    212    3215    214            �           2606    16683 (   musicTracks musicTracks_createdById_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."musicTracks"
    ADD CONSTRAINT "musicTracks_createdById_fkey" FOREIGN KEY ("createdById") REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE SET NULL;
 V   ALTER TABLE ONLY public."musicTracks" DROP CONSTRAINT "musicTracks_createdById_fkey";
       public          postgres    false    212    3215    215            �           2606    16678 %   musicTracks musicTracks_tenantId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."musicTracks"
    ADD CONSTRAINT "musicTracks_tenantId_fkey" FOREIGN KEY ("tenantId") REFERENCES public.tenants(id) ON UPDATE CASCADE;
 S   ALTER TABLE ONLY public."musicTracks" DROP CONSTRAINT "musicTracks_tenantId_fkey";
       public          postgres    false    215    3217    213            �           2606    16688 (   musicTracks musicTracks_updatedById_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."musicTracks"
    ADD CONSTRAINT "musicTracks_updatedById_fkey" FOREIGN KEY ("updatedById") REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE SET NULL;
 V   ALTER TABLE ONLY public."musicTracks" DROP CONSTRAINT "musicTracks_updatedById_fkey";
       public          postgres    false    212    3215    215            �           2606    16706 2   regularSchedules regularSchedules_createdById_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."regularSchedules"
    ADD CONSTRAINT "regularSchedules_createdById_fkey" FOREIGN KEY ("createdById") REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE SET NULL;
 `   ALTER TABLE ONLY public."regularSchedules" DROP CONSTRAINT "regularSchedules_createdById_fkey";
       public          postgres    false    216    3215    212            �           2606    16701 /   regularSchedules regularSchedules_tenantId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."regularSchedules"
    ADD CONSTRAINT "regularSchedules_tenantId_fkey" FOREIGN KEY ("tenantId") REFERENCES public.tenants(id) ON UPDATE CASCADE;
 ]   ALTER TABLE ONLY public."regularSchedules" DROP CONSTRAINT "regularSchedules_tenantId_fkey";
       public          postgres    false    213    216    3217            �           2606    16711 2   regularSchedules regularSchedules_updatedById_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."regularSchedules"
    ADD CONSTRAINT "regularSchedules_updatedById_fkey" FOREIGN KEY ("updatedById") REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE SET NULL;
 `   ALTER TABLE ONLY public."regularSchedules" DROP CONSTRAINT "regularSchedules_updatedById_fkey";
       public          postgres    false    216    3215    212            �           2606    16731 "   settings settings_createdById_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.settings
    ADD CONSTRAINT "settings_createdById_fkey" FOREIGN KEY ("createdById") REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE SET NULL;
 N   ALTER TABLE ONLY public.settings DROP CONSTRAINT "settings_createdById_fkey";
       public          postgres    false    3215    212    217            �           2606    16726    settings settings_tenantId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.settings
    ADD CONSTRAINT "settings_tenantId_fkey" FOREIGN KEY ("tenantId") REFERENCES public.tenants(id) ON UPDATE CASCADE;
 K   ALTER TABLE ONLY public.settings DROP CONSTRAINT "settings_tenantId_fkey";
       public          postgres    false    3217    217    213            �           2606    16736 "   settings settings_updatedById_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.settings
    ADD CONSTRAINT "settings_updatedById_fkey" FOREIGN KEY ("updatedById") REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE SET NULL;
 N   ALTER TABLE ONLY public.settings DROP CONSTRAINT "settings_updatedById_fkey";
       public          postgres    false    217    212    3215            �           2606    16753 2   specialSchedules specialSchedules_createdById_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."specialSchedules"
    ADD CONSTRAINT "specialSchedules_createdById_fkey" FOREIGN KEY ("createdById") REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE SET NULL;
 `   ALTER TABLE ONLY public."specialSchedules" DROP CONSTRAINT "specialSchedules_createdById_fkey";
       public          postgres    false    218    3215    212            �           2606    16748 /   specialSchedules specialSchedules_tenantId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."specialSchedules"
    ADD CONSTRAINT "specialSchedules_tenantId_fkey" FOREIGN KEY ("tenantId") REFERENCES public.tenants(id) ON UPDATE CASCADE;
 ]   ALTER TABLE ONLY public."specialSchedules" DROP CONSTRAINT "specialSchedules_tenantId_fkey";
       public          postgres    false    213    218    3217            �           2606    16758 2   specialSchedules specialSchedules_updatedById_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."specialSchedules"
    ADD CONSTRAINT "specialSchedules_updatedById_fkey" FOREIGN KEY ("updatedById") REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE SET NULL;
 `   ALTER TABLE ONLY public."specialSchedules" DROP CONSTRAINT "specialSchedules_updatedById_fkey";
       public          postgres    false    3215    212    218            �           2606    16781 (   tenantUsers tenantUsers_createdById_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."tenantUsers"
    ADD CONSTRAINT "tenantUsers_createdById_fkey" FOREIGN KEY ("createdById") REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE SET NULL;
 V   ALTER TABLE ONLY public."tenantUsers" DROP CONSTRAINT "tenantUsers_createdById_fkey";
       public          postgres    false    3215    219    212            �           2606    16771 %   tenantUsers tenantUsers_tenantId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."tenantUsers"
    ADD CONSTRAINT "tenantUsers_tenantId_fkey" FOREIGN KEY ("tenantId") REFERENCES public.tenants(id) ON UPDATE CASCADE ON DELETE SET NULL;
 S   ALTER TABLE ONLY public."tenantUsers" DROP CONSTRAINT "tenantUsers_tenantId_fkey";
       public          postgres    false    213    3217    219            �           2606    16786 (   tenantUsers tenantUsers_updatedById_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."tenantUsers"
    ADD CONSTRAINT "tenantUsers_updatedById_fkey" FOREIGN KEY ("updatedById") REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE SET NULL;
 V   ALTER TABLE ONLY public."tenantUsers" DROP CONSTRAINT "tenantUsers_updatedById_fkey";
       public          postgres    false    3215    219    212            �           2606    16776 #   tenantUsers tenantUsers_userId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."tenantUsers"
    ADD CONSTRAINT "tenantUsers_userId_fkey" FOREIGN KEY ("userId") REFERENCES public.users(id) ON UPDATE CASCADE;
 Q   ALTER TABLE ONLY public."tenantUsers" DROP CONSTRAINT "tenantUsers_userId_fkey";
       public          postgres    false    3215    212    219            �           2606    16637     tenants tenants_createdById_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.tenants
    ADD CONSTRAINT "tenants_createdById_fkey" FOREIGN KEY ("createdById") REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE SET NULL;
 L   ALTER TABLE ONLY public.tenants DROP CONSTRAINT "tenants_createdById_fkey";
       public          postgres    false    213    3215    212            �           2606    16642     tenants tenants_updatedById_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.tenants
    ADD CONSTRAINT "tenants_updatedById_fkey" FOREIGN KEY ("updatedById") REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE SET NULL;
 L   ALTER TABLE ONLY public.tenants DROP CONSTRAINT "tenants_updatedById_fkey";
       public          postgres    false    212    213    3215            �           2606    16616    users users_createdById_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.users
    ADD CONSTRAINT "users_createdById_fkey" FOREIGN KEY ("createdById") REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE SET NULL;
 H   ALTER TABLE ONLY public.users DROP CONSTRAINT "users_createdById_fkey";
       public          postgres    false    3215    212    212            �           2606    16621    users users_updatedById_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.users
    ADD CONSTRAINT "users_updatedById_fkey" FOREIGN KEY ("updatedById") REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE SET NULL;
 H   ALTER TABLE ONLY public.users DROP CONSTRAINT "users_updatedById_fkey";
       public          postgres    false    212    212    3215            I   �  x��\�r�}�W������~a���"'L�J�%������F�`��i:�O $��.E���Bq�����ӧO�t������>;|��_�fs?��h��^�G�޳�|���gz=���H�I�HP��b�H�y�����g��mjʿ�w$Q>"e��g%�Ԝ%�S�2���^��١IХ���(��F	5�(=��@��t�/T�O��^���|�ދ�4�j�Cj�\%�-øM�Q|���0��RӍB=�rմ�k���?��|���e�c��̝g�8m��;�������?n|�%�tU=}[���/�UMj��wΚ����ټ>�#ж�u�Om�nx�q=M���~�ϧ˹��W�����j2�������4N�u/V���lm�ʅ��>��_?;�BAsZk�yJD:�(#��B����
6�4�iW~�4;�F��D�;2'�:I����(r�0d�R�"��&��߀l��Ud�1	12ô�A����Mݼ�1]uRF�KXŔa>�
����+;�7������neM�ZM[.��f��y�Փ+�ǿ�k/�l t�gYyG��	�"��d��	�����J�5�n��v3M=N8���I5��� oY�\Ĕ@�0�$�u�D�:���%����􇦋Kċ��l2�TG%�&��9�`}�&E<0���7�x�v�9C� �� >D������DDZ���GD�U��k"0�$o�%���p�'��#��'gAq���I{u���~g~�̏a2�8Z�1i��Y~I�I������v�=������<m�8����r�Vm�!D͂��[I0(�'��y["���һO368�b��}�����BW^&��H�ݤ�l�LϙH\5z43�SJ���t��VAGBؾ~�1ƈ�QI���$⒐Dh��h
�{����Ȓ�1�}4ņ�xq�m�1ȱ�q����бA�J�#�|(�ّ���j�R��9c��w�D��"NS�U�O� �P_��k������58Y8H߇��d֝�Yj&U�bj/!ie�:��$��jѠu���,r�=��c�D��44��T�>;����f!X���&D�Z	e����T*��0jL��`���D�(��K�b2%��x�1�)�H����5�4�kԘ����E@�:�R��q-�������F%)�&G���pw�o���R'12��st�B�:��c��̘�^�I[���_��J���+yI#N&J��-�����J?���c�q�*\���^��RWM���RB@�Um)`u=����2�֥f
�7��	�]�-5�j���/:l��TO^$qv�L�o)�6���s�'��i�7R;�!"�R�K�ʐ����i��Z7�V�x�-�U����ϳ�"���p��YW��9g�U���)��:�E,FV{��g?�ׁ���~���+�b}:���z�u����q`|\�݁���ì���8�O�bm����i:]Q4J�B��A�BN��L��(�#�!f�T̵�4��NN�9���/�:�&3��I��{�mZۿ��앁O�W���҆SzX�,��r�f� "2oi\k�M�6F��7$.�.�k}
� �jϜ�Z�'�y \j���������� ����K!o{��9m8���Ad	>�d��A���|�Z ��c�>F��0�N���� ź�-�)�"YBC�:r�%3�zU��I�?0�<�O����7���}F8��k���vg���J����>۝�0������$dP����! �4Lr'$��]�Y
�_8Nq>^Py�Y'Nb䱼�h��i�*�̸y�>�}F
��f`�_$�v��op�.�-�V��gY�M5+���0n�ZR��M�[N�*=RL�x7/����ԏ{W(��ie��Yh8�!B�i�O6p*΢v�1�Ǵ-^\���qA��`����h��,X��\���K&�*^���!^���v���.O�[�mN.]R2gI���Ӛ��$.Ei�PJ��I�>F�t`��E�I���GⳒ��:�I�Vk$g<�)]��Z�"�b\>�P鳌�*���P�Q҂#V������II&˘�������(Me�N�B��(u�rg�x�\���̭Fn�Y�7s��y#l43񪽾���N��9==���n�S�x��p������_���n&ߵ%�>��a�2�r=wc�؞6<y��'��ȉ�5v�M��B�;�<���c��w&
Rx���J�0B}I���:%)3�[����c��$���7YPG9萈��p��#^a5��I"��da�rX�1��m9C��N�q$�hd��O�,���Bl���a�F��Gm<��,"]J�Ł;rE[ϧ1��y\��~�<�qE���j%N�&�/$��H��-�s�J;ᏒF���,�oI#��O#XRc0n-�^<"ۛR&&��%v.��1z'�� CoN#��[�}O���2N@!��LN)Q�a)�CN�#�� DF*����
�5��� K	;Bl]e�>�o�7�&�x7=7��m]7HQ0!VI��st?�c$g��L:�Vմ��ÐT�u�ֽ<m8Ie�"#�M&R31���2 ��ΑT�w���P$����#�a�;�_�9s,D���:fդ����/x�,Rሰ協`X�[���4E�\�2� S!��M=���8�������'L���I�i=�a�ø8�֫�1�2��2$x��fE����`K4@H�~|��h�F�� g�WS�{�9[ ��h�g�7/=�r�ʱaP�.�U���XR��
�e����f����
b��9M�'-�yBǂ��'�k;�j�.�
�>�_@�ۦ��yx����<|e�}x�g���X��bv�{�0$��0z�G�����P���Ɇ� ��0Rm��� �����.�-���Z������~��7�͛O���	�$ޞv�<����
"�GY�?$M�X#4��QF��p�G82��(f��R��HGf>A�o��y��^�y�u	H#����#+�_byC��w<NZo_�iS�UӣvЉ���ޮ����l�����]9jJ;�pG��䜫� 4.Ta��$��X����}����:{?%"&A=.�q�D����g��F���!��[�����>97r�R�m�/���0��_gM��{�h�=Xc�aVp�E2����)_ln�������,�����ᚧ�      L   �  x�͗Ko[G���޹EK�C΋�*@�0�@�tkp^�Z[R�H�_J��:��\mI�s��o����W��98z����M9��ɘ����__�}ur�͡Oѕ�8���C)������\����7W���R�W�X�w}x��(�w�((��09Y?W�������!�)fX�땾���:����d��������)B��� �,�����Q��r�n�?�Qhh��!�"Ć����(ӈ��|���t�D�0 ��(OBt�a8�R�����]C��U��޷�j>��4z�~<��oxq�E��X�S��s]�):�1�%��E��>�޴�r3l���B/���˫�\�����A��w��f��&TLb@[K*Jm��&M�5�~�v�v����=Y�ǩk�
������`���}K���ͭ�N%�����Pze0ڱ8	=>�Xi������A��*��֤�v�)V?�i���w�{���
��)�e��z#���M{�O@zW�����M��l�w����d�8;]�O_Y~?-��Oo�L�م�"g�T/~d�ӆ
�X��5���S�����nt���<�ScHd��(�Zv-��l��[��(��uu�l�jk�Q
�X���j��|r�}���i����ZH�Oxn�{D;�f.N�v�w�{��R��\�mpo|X]D�B����t�' }��7b�/cp俊x��\J֩��*r�,���9Ԝ<9�;���%? ޻ѽ'��E�#A��&��+�ى�Ub�F�����DK�0m>h�(IR��/+%�Z!�f� i�a�Tu�$\/��q�����ޏ�=Rn�M�v�2��ʘ��nn�uj悝�O@���ճY��'�Q�v�p4��V�A�~b�[����ޓu�)� �3�5�k���@<�r6ւ��r�kq;gw��mA��$0�%�5�P{>��!�)R�bE(��Bi}Htg��%�)V���b�b��G�)!�Z�B�.Z��r*<�&�-H��Ì�˥��ln���Ơ�J�r��C:X,_`��u9:W��n�j��})����F��k�l���.��.5���q�ZC�MfW��z�8��|�j���ry�h�x��f�������.Xm$d��S��#O��ee�8��_R�Mo���S�}.f��]ݼM�B,vy�9k8�S�[�&�qFnB�^W���y�x�7�qv      M   9  x���Ko�@ �{��K@t�}�BU�R(m��31��b�D�׳-�Q�	�#�jv��x��/N?_g痟���5�/��q��eo��p\|y7�:�(^L����$@*�@��"PH��8�89)&~�~�����lvR,�1>�FJ�肰����Rr���ɾ�C�@R>[+���AAN|��+{_+Y��ܻ�\��b4�����^�>:{��	AD�4$����9dI�(J��?9#�a�k?���.��O�mf��ƨ<`��:6�
h�<�D����*�� �U%��i����9�,Fܩ\�.D	ACj��d�<g��ą�p={���v����jU�u�rt��];]٥_���F|x?k����'����ΐe�6�����R��<s�2Wd!��E��![�c�a��!�p���M<t�M�M7���`��lSr�FIA�������wM�E7�t)վ��}�h���|Z3{0�"��3��[!�P �)k�bF��Ԇ���w���f�>���BD2��k�?��
K۬��&�~/>7%�������GG?�|]      R   d  x��ԽnTA�~��*͂�W��3c_*�+A"����@�hѾ?7Y))B���)�l�n��_���p;�<���W���|,�}�����?���é�^W�׏���ӛ-#3�Â��0g�w�裏�!�0��@5p�ތ��ԇ�y�z��i�1f���!�"[��}�a�{a�By΁.j������j �5(�r�jiPU�G�%�$�bQ�9lYzQ6n�DCƙ0]������@�D�����]��R}��O#���`^H��:�R8�&~a�N�ǅ⬏0��Q��2�u�l�m> U!)ɩ����֤�g�eݚ��b����d���k�<��m6���xM      N   %  x���MK1�{��e�e�L����B�Vp[��-��=��݂�R�8���7ygx�~~����m�2��65'Cywa��c�㮼�T�W�ͼ�Nk-�2�ud��V "�̊R�/����)����,��]�֠����;k�V����	?�g�u���@,�3A&2����¾J�����yڏ��(� 9����<ɏߝ]���	$6��A�é��$��.���%��_�/x���6����A���$qn�EhU�j�)�9
�D���*$�߇�q8N�+�N�N��}Ht,�c���(a݃      O     x���MK�@���{�����G���x�*����_u1��dc��+x�e�y��v�~ݣ�v���Yw��K)��ޞ��z�n2K���*���b�<êV[!85�{SBv�2�<�]���)SC�S���At�s{;��8�?�s�����`��1|Ar��{L.BL�m�L4������nNpt�KQk��� �0T�����(*!����=���(c���V�҆�Ty�����T!�NV��/���k�@`���&l������ygj�/�����s5y�      S   �   x��ϽN1����Js ��^�n�(R�A�.�^���rEDt����Ӎf���ø���p�>�e�e.���R˜�����K}_�s��s9����z};�G�УF�A'��θ�[���c�Ql�"(�B���
x2&yi�`����M)�b-�,9C\(4S�����±e�,�u�� �5%��ދ%:O���@��#��14-�՜�Pn����D      P   �   x���1k�0�w�
��-�3zOO��N2��$��'р�����[��B�vw�w�i޿�a:���--����kɗ�����m)�N����~Vwm��WDH��7�L�`��R+R�>��%.k��� 5h���4�?2�q@��,��/J���C�R���k��w����J|`f�����תM
l���C��l�Ւ=���� ��O�      Q   q  x���Mk1�Œ��YF3���)�ƅ&�}���M.��=�8P(&��;�x����~��V��o��s�9��b�;�M�}����~ܬ��w��J.����d0WHRK�8,���������D�X&A�N�7/��b0�F)'oJʇ�q�2N��C"0�;�y0ԛ辠=�2���Լ�[��d�s��b�E�1n��a�5ފB�@|���(�E����yn�]�������Ӕ)g����2S�:����d�%�F��a�]�=���<�/�D[3��;�?�`�����ϊ4�Il*DJ��,�82�Z�A��"���1V�5g�hBs��i1U��\�����ޡ�����~.z��9�c�x��      K   �   x���=�0E���lQ����Mtr� �
~�i��"���_]\t�����m{��G�m�;q�����.�2��yӜꃘɈ켭JFG �
�u�Hc��C��RȘ�O���|K��>���E��i>)*Vq��ʸ��j�F�����s��.V@-tl4P���8K,����Y�= �F�      J   �  x���[k�PF��y�az2�~ɼL�4Q%�v���8%i���Z,����a���X���vZD��Ȣ�֬W6n_7��z8�ͣ���QXS���R'�	� �1�8x+i�]E=�Z�����M�nQ߻m��ŦDz�\V���?o�rqӎ�w}�I�t�W[�-�u�V�y�0�T��� ��1�Vp���Xi���-2蕈!� A eaQ�T, �١�Άï�c��zg}������;A���G�i�$�D�����|)_8��A%��*��� K� ҆��O#�i���r�����ӌO�ݛ���|Yף��eV��q3�I�,[�����ق�>hw�1�	JpB���ZɃ4PX�!g�I/��4A2��;ګv��J���j6�'	�1��|�s�)�ş�"�v:/�n��     