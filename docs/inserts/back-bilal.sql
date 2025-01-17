PGDMP         +            	    z         
   planetqweb    14.1    14.5 C    V           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            W           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            X           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            Y           1262    16384 
   planetqweb    DATABASE     ^   CREATE DATABASE planetqweb WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'en_US.utf8';
    DROP DATABASE planetqweb;
                postgres    false            �            1259    16586 	   auditLogs    TABLE     p  CREATE TABLE public."auditLogs" (
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
       public         heap    postgres    false            �            1259    16591    files    TABLE     =  CREATE TABLE public.files (
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
       public         heap    postgres    false            �            1259    16596    musicTracks    TABLE     �  CREATE TABLE public."musicTracks" (
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
       public         heap    postgres    false            �            1259    16602 #   regularScheduleMusicTrackMusicTrack    TABLE     �   CREATE TABLE public."regularScheduleMusicTrackMusicTrack" (
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "regularScheduleId" uuid NOT NULL,
    "musicTrackId" uuid NOT NULL
);
 9   DROP TABLE public."regularScheduleMusicTrackMusicTrack";
       public         heap    postgres    false            �            1259    16605    regularSchedules    TABLE     _  CREATE TABLE public."regularSchedules" (
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
       public         heap    postgres    false            �            1259    16610    settings    TABLE     �  CREATE TABLE public.settings (
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
       public         heap    postgres    false            �            1259    16616 #   specialScheduleMusicTrackMusicTrack    TABLE     �   CREATE TABLE public."specialScheduleMusicTrackMusicTrack" (
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "specialScheduleId" uuid NOT NULL,
    "musicTrackId" uuid NOT NULL
);
 9   DROP TABLE public."specialScheduleMusicTrackMusicTrack";
       public         heap    postgres    false            �            1259    16619    specialSchedules    TABLE     �  CREATE TABLE public."specialSchedules" (
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
       public         heap    postgres    false            �            1259    16624    tenantUsers    TABLE     �  CREATE TABLE public."tenantUsers" (
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
       public         heap    postgres    false            �            1259    16629    tenants    TABLE     4  CREATE TABLE public.tenants (
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
       public         heap    postgres    false            �            1259    16636    users    TABLE     �  CREATE TABLE public.users (
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
       public         heap    postgres    false            I          0    16586 	   auditLogs 
   TABLE DATA                 public          postgres    false    209   �e       J          0    16591    files 
   TABLE DATA                 public          postgres    false    210   ��       K          0    16596    musicTracks 
   TABLE DATA                 public          postgres    false    211   )      L          0    16602 #   regularScheduleMusicTrackMusicTrack 
   TABLE DATA                 public          postgres    false    212   #      M          0    16605    regularSchedules 
   TABLE DATA                 public          postgres    false    213   �      N          0    16610    settings 
   TABLE DATA                 public          postgres    false    214   �      O          0    16616 #   specialScheduleMusicTrackMusicTrack 
   TABLE DATA                 public          postgres    false    215   �      P          0    16619    specialSchedules 
   TABLE DATA                 public          postgres    false    216   p       Q          0    16624    tenantUsers 
   TABLE DATA                 public          postgres    false    217   O!      R          0    16629    tenants 
   TABLE DATA                 public          postgres    false    218   �"      S          0    16636    users 
   TABLE DATA                 public          postgres    false    219   �#      �           2606    16643    auditLogs auditLogs_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public."auditLogs"
    ADD CONSTRAINT "auditLogs_pkey" PRIMARY KEY (id);
 F   ALTER TABLE ONLY public."auditLogs" DROP CONSTRAINT "auditLogs_pkey";
       public            postgres    false    209            �           2606    16645    files files_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.files
    ADD CONSTRAINT files_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.files DROP CONSTRAINT files_pkey;
       public            postgres    false    210            �           2606    16647    musicTracks musicTracks_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public."musicTracks"
    ADD CONSTRAINT "musicTracks_pkey" PRIMARY KEY (id);
 J   ALTER TABLE ONLY public."musicTracks" DROP CONSTRAINT "musicTracks_pkey";
       public            postgres    false    211            �           2606    16649 L   regularScheduleMusicTrackMusicTrack regularScheduleMusicTrackMusicTrack_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public."regularScheduleMusicTrackMusicTrack"
    ADD CONSTRAINT "regularScheduleMusicTrackMusicTrack_pkey" PRIMARY KEY ("regularScheduleId", "musicTrackId");
 z   ALTER TABLE ONLY public."regularScheduleMusicTrackMusicTrack" DROP CONSTRAINT "regularScheduleMusicTrackMusicTrack_pkey";
       public            postgres    false    212    212            �           2606    16651 &   regularSchedules regularSchedules_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public."regularSchedules"
    ADD CONSTRAINT "regularSchedules_pkey" PRIMARY KEY (id);
 T   ALTER TABLE ONLY public."regularSchedules" DROP CONSTRAINT "regularSchedules_pkey";
       public            postgres    false    213            �           2606    16653    settings settings_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.settings
    ADD CONSTRAINT settings_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.settings DROP CONSTRAINT settings_pkey;
       public            postgres    false    214            �           2606    16655 L   specialScheduleMusicTrackMusicTrack specialScheduleMusicTrackMusicTrack_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public."specialScheduleMusicTrackMusicTrack"
    ADD CONSTRAINT "specialScheduleMusicTrackMusicTrack_pkey" PRIMARY KEY ("specialScheduleId", "musicTrackId");
 z   ALTER TABLE ONLY public."specialScheduleMusicTrackMusicTrack" DROP CONSTRAINT "specialScheduleMusicTrackMusicTrack_pkey";
       public            postgres    false    215    215            �           2606    16657 &   specialSchedules specialSchedules_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public."specialSchedules"
    ADD CONSTRAINT "specialSchedules_pkey" PRIMARY KEY (id);
 T   ALTER TABLE ONLY public."specialSchedules" DROP CONSTRAINT "specialSchedules_pkey";
       public            postgres    false    216            �           2606    16659    tenantUsers tenantUsers_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public."tenantUsers"
    ADD CONSTRAINT "tenantUsers_pkey" PRIMARY KEY (id);
 J   ALTER TABLE ONLY public."tenantUsers" DROP CONSTRAINT "tenantUsers_pkey";
       public            postgres    false    217            �           2606    16661    tenants tenants_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.tenants
    ADD CONSTRAINT tenants_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.tenants DROP CONSTRAINT tenants_pkey;
       public            postgres    false    218            �           2606    16663    users users_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
       public            postgres    false    219            �           1259    16664 "   music_tracks_import_hash_tenant_id    INDEX     �   CREATE UNIQUE INDEX music_tracks_import_hash_tenant_id ON public."musicTracks" USING btree ("importHash", "tenantId") WHERE ("deletedAt" IS NULL);
 6   DROP INDEX public.music_tracks_import_hash_tenant_id;
       public            postgres    false    211    211    211            �           1259    16665    regular_schedules_day_tenant_id    INDEX     �   CREATE UNIQUE INDEX regular_schedules_day_tenant_id ON public."regularSchedules" USING btree (day, "tenantId") WHERE ("deletedAt" IS NULL);
 3   DROP INDEX public.regular_schedules_day_tenant_id;
       public            postgres    false    213    213    213            �           1259    16666 '   regular_schedules_import_hash_tenant_id    INDEX     �   CREATE UNIQUE INDEX regular_schedules_import_hash_tenant_id ON public."regularSchedules" USING btree ("importHash", "tenantId") WHERE ("deletedAt" IS NULL);
 ;   DROP INDEX public.regular_schedules_import_hash_tenant_id;
       public            postgres    false    213    213    213            �           1259    16667 '   special_schedules_import_hash_tenant_id    INDEX     �   CREATE UNIQUE INDEX special_schedules_import_hash_tenant_id ON public."specialSchedules" USING btree ("importHash", "tenantId") WHERE ("deletedAt" IS NULL);
 ;   DROP INDEX public.special_schedules_import_hash_tenant_id;
       public            postgres    false    216    216    216            �           1259    16668    tenants_url    INDEX     a   CREATE UNIQUE INDEX tenants_url ON public.tenants USING btree (url) WHERE ("deletedAt" IS NULL);
    DROP INDEX public.tenants_url;
       public            postgres    false    218    218            �           1259    16669    users_email    INDEX     a   CREATE UNIQUE INDEX users_email ON public.users USING btree (email) WHERE ("deletedAt" IS NULL);
    DROP INDEX public.users_email;
       public            postgres    false    219    219            �           1259    16670    users_import_hash    INDEX     n   CREATE UNIQUE INDEX users_import_hash ON public.users USING btree ("importHash") WHERE ("deletedAt" IS NULL);
 %   DROP INDEX public.users_import_hash;
       public            postgres    false    219    219            �           2606    16671    files files_createdById_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.files
    ADD CONSTRAINT "files_createdById_fkey" FOREIGN KEY ("createdById") REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE SET NULL;
 H   ALTER TABLE ONLY public.files DROP CONSTRAINT "files_createdById_fkey";
       public          postgres    false    3238    219    210            �           2606    16676    files files_tenantId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.files
    ADD CONSTRAINT "files_tenantId_fkey" FOREIGN KEY ("tenantId") REFERENCES public.tenants(id) ON UPDATE CASCADE ON DELETE SET NULL;
 E   ALTER TABLE ONLY public.files DROP CONSTRAINT "files_tenantId_fkey";
       public          postgres    false    218    3233    210            �           2606    16681    files files_updatedById_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.files
    ADD CONSTRAINT "files_updatedById_fkey" FOREIGN KEY ("updatedById") REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE SET NULL;
 H   ALTER TABLE ONLY public.files DROP CONSTRAINT "files_updatedById_fkey";
       public          postgres    false    210    3238    219            �           2606    16686 (   musicTracks musicTracks_createdById_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."musicTracks"
    ADD CONSTRAINT "musicTracks_createdById_fkey" FOREIGN KEY ("createdById") REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE SET NULL;
 V   ALTER TABLE ONLY public."musicTracks" DROP CONSTRAINT "musicTracks_createdById_fkey";
       public          postgres    false    219    3238    211            �           2606    16691 %   musicTracks musicTracks_tenantId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."musicTracks"
    ADD CONSTRAINT "musicTracks_tenantId_fkey" FOREIGN KEY ("tenantId") REFERENCES public.tenants(id) ON UPDATE CASCADE;
 S   ALTER TABLE ONLY public."musicTracks" DROP CONSTRAINT "musicTracks_tenantId_fkey";
       public          postgres    false    211    218    3233            �           2606    16696 (   musicTracks musicTracks_updatedById_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."musicTracks"
    ADD CONSTRAINT "musicTracks_updatedById_fkey" FOREIGN KEY ("updatedById") REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE SET NULL;
 V   ALTER TABLE ONLY public."musicTracks" DROP CONSTRAINT "musicTracks_updatedById_fkey";
       public          postgres    false    219    3238    211            �           2606    16701 2   regularSchedules regularSchedules_createdById_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."regularSchedules"
    ADD CONSTRAINT "regularSchedules_createdById_fkey" FOREIGN KEY ("createdById") REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE SET NULL;
 `   ALTER TABLE ONLY public."regularSchedules" DROP CONSTRAINT "regularSchedules_createdById_fkey";
       public          postgres    false    213    3238    219            �           2606    16706 /   regularSchedules regularSchedules_tenantId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."regularSchedules"
    ADD CONSTRAINT "regularSchedules_tenantId_fkey" FOREIGN KEY ("tenantId") REFERENCES public.tenants(id) ON UPDATE CASCADE;
 ]   ALTER TABLE ONLY public."regularSchedules" DROP CONSTRAINT "regularSchedules_tenantId_fkey";
       public          postgres    false    213    218    3233            �           2606    16711 2   regularSchedules regularSchedules_updatedById_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."regularSchedules"
    ADD CONSTRAINT "regularSchedules_updatedById_fkey" FOREIGN KEY ("updatedById") REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE SET NULL;
 `   ALTER TABLE ONLY public."regularSchedules" DROP CONSTRAINT "regularSchedules_updatedById_fkey";
       public          postgres    false    219    213    3238            �           2606    16716 "   settings settings_createdById_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.settings
    ADD CONSTRAINT "settings_createdById_fkey" FOREIGN KEY ("createdById") REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE SET NULL;
 N   ALTER TABLE ONLY public.settings DROP CONSTRAINT "settings_createdById_fkey";
       public          postgres    false    219    214    3238            �           2606    16721    settings settings_tenantId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.settings
    ADD CONSTRAINT "settings_tenantId_fkey" FOREIGN KEY ("tenantId") REFERENCES public.tenants(id) ON UPDATE CASCADE;
 K   ALTER TABLE ONLY public.settings DROP CONSTRAINT "settings_tenantId_fkey";
       public          postgres    false    218    3233    214            �           2606    16726 "   settings settings_updatedById_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.settings
    ADD CONSTRAINT "settings_updatedById_fkey" FOREIGN KEY ("updatedById") REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE SET NULL;
 N   ALTER TABLE ONLY public.settings DROP CONSTRAINT "settings_updatedById_fkey";
       public          postgres    false    3238    214    219            �           2606    16731 2   specialSchedules specialSchedules_createdById_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."specialSchedules"
    ADD CONSTRAINT "specialSchedules_createdById_fkey" FOREIGN KEY ("createdById") REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE SET NULL;
 `   ALTER TABLE ONLY public."specialSchedules" DROP CONSTRAINT "specialSchedules_createdById_fkey";
       public          postgres    false    219    216    3238            �           2606    16736 /   specialSchedules specialSchedules_tenantId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."specialSchedules"
    ADD CONSTRAINT "specialSchedules_tenantId_fkey" FOREIGN KEY ("tenantId") REFERENCES public.tenants(id) ON UPDATE CASCADE;
 ]   ALTER TABLE ONLY public."specialSchedules" DROP CONSTRAINT "specialSchedules_tenantId_fkey";
       public          postgres    false    3233    216    218            �           2606    16741 2   specialSchedules specialSchedules_updatedById_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."specialSchedules"
    ADD CONSTRAINT "specialSchedules_updatedById_fkey" FOREIGN KEY ("updatedById") REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE SET NULL;
 `   ALTER TABLE ONLY public."specialSchedules" DROP CONSTRAINT "specialSchedules_updatedById_fkey";
       public          postgres    false    219    3238    216            �           2606    16746 (   tenantUsers tenantUsers_createdById_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."tenantUsers"
    ADD CONSTRAINT "tenantUsers_createdById_fkey" FOREIGN KEY ("createdById") REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE SET NULL;
 V   ALTER TABLE ONLY public."tenantUsers" DROP CONSTRAINT "tenantUsers_createdById_fkey";
       public          postgres    false    219    3238    217            �           2606    16751 %   tenantUsers tenantUsers_tenantId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."tenantUsers"
    ADD CONSTRAINT "tenantUsers_tenantId_fkey" FOREIGN KEY ("tenantId") REFERENCES public.tenants(id) ON UPDATE CASCADE ON DELETE SET NULL;
 S   ALTER TABLE ONLY public."tenantUsers" DROP CONSTRAINT "tenantUsers_tenantId_fkey";
       public          postgres    false    3233    217    218            �           2606    16756 (   tenantUsers tenantUsers_updatedById_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."tenantUsers"
    ADD CONSTRAINT "tenantUsers_updatedById_fkey" FOREIGN KEY ("updatedById") REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE SET NULL;
 V   ALTER TABLE ONLY public."tenantUsers" DROP CONSTRAINT "tenantUsers_updatedById_fkey";
       public          postgres    false    3238    219    217            �           2606    16761 #   tenantUsers tenantUsers_userId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."tenantUsers"
    ADD CONSTRAINT "tenantUsers_userId_fkey" FOREIGN KEY ("userId") REFERENCES public.users(id) ON UPDATE CASCADE;
 Q   ALTER TABLE ONLY public."tenantUsers" DROP CONSTRAINT "tenantUsers_userId_fkey";
       public          postgres    false    3238    219    217            �           2606    16766     tenants tenants_createdById_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.tenants
    ADD CONSTRAINT "tenants_createdById_fkey" FOREIGN KEY ("createdById") REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE SET NULL;
 L   ALTER TABLE ONLY public.tenants DROP CONSTRAINT "tenants_createdById_fkey";
       public          postgres    false    3238    219    218            �           2606    16771     tenants tenants_updatedById_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.tenants
    ADD CONSTRAINT "tenants_updatedById_fkey" FOREIGN KEY ("updatedById") REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE SET NULL;
 L   ALTER TABLE ONLY public.tenants DROP CONSTRAINT "tenants_updatedById_fkey";
       public          postgres    false    219    218    3238            �           2606    16776    users users_createdById_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.users
    ADD CONSTRAINT "users_createdById_fkey" FOREIGN KEY ("createdById") REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE SET NULL;
 H   ALTER TABLE ONLY public.users DROP CONSTRAINT "users_createdById_fkey";
       public          postgres    false    3238    219    219            �           2606    16781    users users_updatedById_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.users
    ADD CONSTRAINT "users_updatedById_fkey" FOREIGN KEY ("updatedById") REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE SET NULL;
 H   ALTER TABLE ONLY public.users DROP CONSTRAINT "users_updatedById_fkey";
       public          postgres    false    3238    219    219            I      x��k�G�.���"M?Z}�*�x?j��/EI-J��٭�s�,�,4Q @��36���JfO��q�B"+Ȅ
�,Rf2I,F�}Ꮷ߿��Ǘ���_>��\��8�>�i��n�j�I��������?M�[�X"��@�W�x�"��[�b<�O?�>�\�9��x�����2Y�Dj�2/9ZY`����;��/���7?�s�(��b3�Fҹ�I)~����8}r�I�/��O�O����2��k�Oy�S��0������<_���~������"��k���b��K��V��[��O����a�����	|#���5��_�gӗ��y��o����_����q��柟������l�~̋���C�g����E�~οޮ�>���'��y.�����7���k�8���'y3��6���V��n�}����x�Q-Yh�	�9�h�7��"����=��2O�t���hq�M�	~�p⬓$I)hL�D�����Ԯ�iS�>�E��S���E$Б7?�s0�y�K��\��|\���N�j�r�%j�|��睝�z�v���/�z8�5]��f�z�����r��]��<�����4��ꁞ%60��.�XH1�ѐa�Z܁�s��v�V{�����g�?��O|�O?�߽V�
�@�� Hh�g4���%jH�j�u�\�+\�/�>-�PIuR2�h�ъ�X��6�`r�GX��4��v�9Cu��ч�@ՠ�YK��`u �h�U��5�3��'�HK����G�a�(��~�VP�1>b��nX����广��i��b1���k��T�	|����������2��<�n����P���V8��������������%�U����x����n��
*{Zt����y)D¬aE#�XR�Y�|�e]�ĝ/��#!l�u��b�#JfDer���B�i���(����W�%�|� ��p����Z�nҍ^���h		 9XX��e�F��U�C.��#%�X�k�E�R���;����T�r1�E������Tu=���EOV��1X�������b��iR?�����B�W�- �N���%z�t�=��R�M!)UR(�h�^V��.6P��Z	e���3nrP����8�1�'x6A	b �C�D*&s\���B5��߾)�3����kը1I��	���;�K��"�D�W��0zPPgL�h(>�7�ͣ�IJL���I���:_r��
c"i�ZI��r��k�J�\`	4x�:F�̔h[bE���J�8�w�j�U�.�ê.q��KŸH�B��r�@��o�<	��?�_�y>����y��{�5'���J��W7lO{�S�w'i����q��ú�s�~Ao�6{#���'PA��R&b�2$ifJp����rL+n�і�ǅ����+<"���O��_-�X8��juj��f>�&���fOuُGۃ�h%��.Bo$K����̧���/�o�=�̢����3K-}�ߌ��$?z7��[Q�t_�N�ۍ�ʉfc����N���B���P&$b*L1׆K������??�ӟ/fet�F47���r'ڦ�������}��q��6��G ��� ������X�4
���i�mJ2�`H�\�o�_r��)�%}��_�IW��t�a�������s�A[��Z
�9����{Q\"� &��,HH9$�U��npֿ�Ѓ��==h���!JG�����9%AdKh�T'N�df�Sߍ'_�˘W�H�b��83���������/a��f���ϭ���L��Ll8��C�c��$� ��c#����DLr'$h]or����9]NV�<{�e�9I�'|� ���4�Y�Jaܼ�{LSq
����� ����إ���h�P��L�#/�|�o����o5���Լ���*=RL��m�y5l3���{˰3.
�{�K��(s�)Y�r"1�e.�M��\NJ�L������0����B�8�^��z^���|�.#j���B����L�%�tg������.�h��	� 8L���e������k��V�#	N7g���g���зi8/k�n��a��g�c�%�-|b��x�
�,i���[4����&A ����bt�N���3��+6�����������ё��J�t�a��y.B��,I>)��Z��+^!RJ���y�A�{z��+o�b� ���YYXb��$��5�3��5o��*���x�i�����X*�M ��;bE�����)�,� �l-7�.��0#�-�S���Hr�:K�3�۹c,0�g����pћX� 4Рq]Z�_ׯTg��������ry2J��_��?��'��'�]���x�����ü�^z�V�9�?x��>S'�j�"Sķ8ʣg
�\xtz��CЃ�A���Xi@��_�A����G�"[C���"�p����ǂu�{3��-��ĩ�HP�M�d���&X��c��,f	(0'�8Rh22{�O�,�3#!�DDo�Ey�H�v�"��^ՠ"-��b1���8�]�T,��ǁ�ɘ8���J�:Mr���&q6I�>cAf�����C�����/���H}X��Q�
����s���.fg��tz0�C��a�g���<dHv^�������L�9S�Z��,������L�����P���sͭ��R@�v�T�o\o�O�x}�.8n3P~����`���JJM����9�:��+8�s�/��������?#�{�q����F�ǃt�"�	h���x�mLipF��Ѓ0R=�+#唏1G��@�tV�������`�&�p�_]N���Ƌd�
G��7W��y���@iN��Le���n�|����
?�M��a�%`��a��`���4�4;]h�SN�WE�E�$�j4�e}����w �RNF�0a�B9;?�6�����P�!��������\'w���*���XR��M
�e����f�U��(��%�i
k� 0(FK�V�P޻_��U#X�]U�"���5?d;�^P��vxg�1v��]A'��O�KN���/���*N�
�b1'��E�|���)��<����jS(DGɤׁm�ޟ�3�V�Ħ��]D���~y9�Z|�{B�o;F�;F���t��z�,�I�%�Fhb��F�7��v�Z���Ꞃ���7��:F�E���K�4�	�;1|~I�B�wМ����y�O_-zŖ��m1BGP���v`W^��:���J:{�R��0Q$遠y�#����u�^z�����'�lbP4�4�J;z�Û����rz����QsF��L䝐7oB�m��=�ⷺ|���������d�j�J����w�8�k��W� ��ce��I|6�,	�$�R֩f)�X�gn;S}X65_�^^����hR�@[0�@�0����N����u0ˉ�lI���Yz]��cC:F�<���f���\�S �W� �*����2���o��?��[�>��Ĭt�ۭ�䂰���[��� ��]�qk��{���?:��X$������/���⃒"�i9}��I�e�]�z���wD��!��2RPc����pȂ/B#]u�j�<�������CD�rD
kL�6	b��Ǣ(�����E���#���DGv��`����"S�+��t�8��PF,)颜]W�9m�!��#Ӭ�� �zM��
2f8�9�y �c�*F	�P�(��n�1��"f��� fhiBV>Ő�r�p>�F�T�0r��؃ņ�] �Y��c+Wh���	�
%�SLPy�>�I�A��>`ܰ���z�����48XFm`�[�)�#(MS]���%���$8t�� 8��6+�b����M��*��b�)(�ݸɤ��
��t=�?4���Y��3)�P|��X��$��.�鳯NB�5f�U��m2S�Ԩ�>�h�V�����.������&擳tp��E�!�O��*�P    Eb�cU{%m$��){�d�-���L��i���M3��Ͳ V���D:�O`�#I�K�NZ�g��=D��C�;��Jܕ$��0�{�C8e�R�Um^����nYwe�����Ŭ8��V�ʍ�[Q��Uf��ݐ���J�(G����t.z�Z&�V�R����@�!亴�_�ǛN*�����9A����M�4�*gw'���=�>y'K[�w=���'����Vѣ/��inI��ء������7��/���� ���o|�]�J�D|�$h�HV^P-��1����%Y�$���#��|�����L���t��aå7�� E.@g�A:�x����*s�I�G�{Re��o�h�h��}�>E�QP� y��GX��A�-�E(Ut[��;��'EVll׎��fl׾a�kYt���r�R�Eq�u��;�ki�q�!����ͻ��8�}G�U7�>$n���)f)3�MQ� �-<��������k�=)��#�FvT��'�o�r"��L�"��xm�AJC�� 6��|W��t"���n�w4�t;�C:%*�C��zJ�@`�6R���9��RI�Z`�tO�TD	��-�v�1�ʷ�_L�߁�
}=m�.]��8?�	|C�^Ϊ���>��~��';�䥿�_M+8��<��Ӵ� O�����0d=Y�oR��/!���L�4�%oQ�?_./~^�>�Oq2~f~���?��i|y�%|����_���W�?-f=?/��|<}u��W���͞�[���;��v�]A���)#�E"�L3,�R+���ӭ���w)��imw~��]=侫�.�j�E9�s�1��
�S�&馝T��P(% zm]���YȆ�.�: �p���5�t�i4���4��˫��q�u�����U�d6�䫓ޏlzj���_X_71©7CU��a��^��=x)Ȍ��q��ca!�l�o!��fDj�D�S�����.�!q E�(�f��.�h�����x���?����ב~��z���]U_ ����3\�������vgX�U9�-�0Y�pŀ�l��8������ͦT�6�e��߳'��.Bf{�}0�_|r�0�6�� !:�@.�5s�ݾq���ǋL�*��E���$W�.�i_�d;3S���]�5؀�����al
Q��L9[L&�H�x6`sZ�K�h P�ě�� �W�#"�l�s�6l�g�cF����.�h`�_�?��y��埳���l�F��/��>�o�'_�7�s�f���l2#m��<�����y�������/��;
�w�"��l�=���,%���X���&.����ٚ�kekF��i�-�H;D`�!��5���$#)�`q��/\0��î�ֶ�Gqa�����#�/��O�0&ˢO݃���g\�m���0��}~�������xq���t9��}����}���M��rIf�,A����V�H+�Rk�+ZvD�#����i�c_7Nq2D���	�V���M����͞b��>U��&q���C��=�+{*E��RCX B&9�\
�H�G�$�mm�������s >��Σ�^�
a��Xͽ�J�o�p�b�2��HnL v2F�J�@8#њ�(���rg��B���#�(�!p��,���>q��~�-�#jNW�i4��Y�����գދ�Wu5qg�,0�Q���|Z}�/��.��b�-�.@��x
|!���+R��_𥿓�#I�FQ��Ov��zi���Y�Xb���2̓O�&V�x�(U+QP��i���(������1��9D!��\�8�<�8�c)rF[S�+*�H�b����9d���m�l@C[�f��.�h�7�	������/f�|�2��n,�]Yδ����5���;ޫ�,~�x�s���v@-Î0���'��zaD%�]�Fb1IS��*T}5�֡�Z�Z�(����`c�:L`�V���wV��s,�3F�p�@M��N{C���<DI���08��5v3
Ie�x`Y�ݺ�p#��W]��=|��k��ܧ2����gҎ`��O�ԛ����q��Q�`3RȁT�kX
H)}T%xG�mI�R�0�8IjUg�˙Ut�BŘŉ���d�-�l�Pv�FC��~?�L.�oh���|�w2 �z	zqyQ��ǅk����ǓɅ�ީ��Y	~�_	���I���Q�(��#�FQ֟Q�Z��u	\��t	-ҫ��U�V�u�eO��j>�.	��!NJ#�H=D�C�1``[��ؓ�zdJM�Jf�t�p�fo��7K�m�*�@=<�R�^Q��6���^/X��v�F��~�6�Z�ɺ��z6]��7�׳7'��X:� S'�7$��z_0�~��a%	�%y�����HK�Vs{+זaG��i����e*cDp!VA����M���j�([���T����&����C��=侻�1j����r"A�����*ά���
&@:!	��g�ˁ��t�2gR����
�P{�m��4V��d���7�G�����<^ k=��~(���kmп�a���4'm)�pd@o5�pP�KU�]�ek��j�����j�8�ڞ6����C�I=侻�'����K.@C�Ė`��<i�R�!y5��L#L[%��I3�t����ur�d�1�wmR�i4���y����I�)/���|���k��	��~������K߂?}���*�k1~g}�ص�������ڠJ���)��e8�
`)������5�5e�jck�#Պ���gɇhi{�}W�69�)��
�,�o���c���8��k�4�k�w��(�΄����I5���vc����|�6\ٯ�A�<���	1��'=Bg�m��z�*4XA�H��&pb=�Q���%�M�P���4+t��=iz/q��F���FV��(|�-A��;�8�Tlt�P��ΰ��"pc�����5Vg1��D� ���.�F*�ux�\���w浅 RaV1PA�6OC 쌥�z�[ڱ��<��E`l��x�m�VXN�MV�Ɗ3�k%oxm]�Ѱ�_�s����ƈ��};���o�Ջe~����[� V����^�_��b-�]��y�O��ZA�>����z����L"s�d��ژ�3�F�D�7LM����iiN���E�!��r�ٍ�q�[���X�.pG|�� 6�H�i����*]'l=������f��{����kt�I��)y�ǀ��������)G�ʑȜ�Vq0M#Jf}?���'������� -��>^�ғ���b
���{��n`�A�2b�ŝaJ��D���^	�셍���80Y�}�'�Oh)t�(֛��x�xN��%�<��3��h){۫���i��g\�L���4��/��g��<-.������ﾉ,A;�����r[��ϋ񟴳�y	����ЉX��B������5nT��-��֟�S�˱�1� ��^��(��}R[����6��
����;H<D��C�F�	��������r�H�Z+��L���1�s0�F-{�DNs�VH��pl�<��Lّ�̇.�h^3O_��N4�O�������;\��jj���1��ّ�E�%%�$ݷ����\QK��i������B�ޜ��\���.������`� ���:8F+exM��\�I(͌���*��vU�_U�ݫ�WX�xǲ�z���)q�̻Lg���zl�<��N(�8��~bNЕ9�R=mI-bg(��$h#���c����gҀ�7�1u&�H6���L�x�З���;��'�׫���l�N4:�}�-u����b��į% �_!�6�G���9��X��X�L��w�����
pz ��Î�Z���,I�v�e���w>�c-j}GkZ1�P��i��;H<D��!�]�ȅK6d�V�T�a��h4�@�)/-��wRK@c
h���yJ��*�3�n@�A��L�Q�h�I4,����`��h���x�'�uו��o�U��gg�Ou*�� <S�.L�2�*�iRRt�lDUߨ�2�ښW��"��P�oãd    Ia�~�KQ��Z 71�!+�k��MC��n3�e��pp����T��k4�����{,��"4fFJ�H\$AyK���_�q*[��w1%��^��[X��s,�w0����JW0̪���L�����gT�����׻����^(����\/�fܨ�=aN�uxW�'"Q��i�/�Q�7���k0��X$��b���^"OΙ�T#�|��2��nc��U��U�	%�����
5�|v��q����"i�ϝ
u�k�H��әX),H�?���U��GU۵V7��H�Ƞz�}�A	�-�(�*l"a�M��h�D���J����jlg�D}u�DIa?յt��t��`IT�%Q4yfS�D!{�Zk���2�A0F���Mŕ(2j���e`wNx�䬘�u��_'{��H���O�4ߍ_����/������_��W�.�Ĭ����;�=g9ɬ,CdD�I D|�9��%�5ow?��~������v�{���C��t�qg�F":��j, �P9T-�b�Y����޹����x!�2��K���!������J ���z�
M}Q���S��@��/�g$P|_J.b(�|@�΁:�3nF��F���h�����r����.�r�2��|����.�e���Îh,����#������j�X,g@����ۯ�!W7��`�\��rRه0=�>ܾ�Y�� ����=c#�$<�u�pS��`����=��z�5CF��n��] ;�m��C�c!��T8�P���o���u�,B+��-A2��O�EQ�6.�� ��� 餋� N�1,Ј��2��<�ͦ;��鮾�3��Ƞe��jo`c�U�Վrb�/��ā^a�䁙lM-�7���H��68�b���)=�>�)����.DX�ϓ\ke���+V��F�>�v��Xr�9�j�ĩ�Uj�ˬ�&=�?M@ГU5E�ı@B��(��y�Z��m1��rָ�� L?h��T<�TgJ�T��z�i4�dãn�pL��25@���*^�2?p1�3숷�BY1@�/xV�����%c:4uk���U�7��9s�:]�"���� �P�w*ƅ�l-�%^��E��y�o�;�NV��/j�R���a���3=�?f�q�%\�$=�܁��Ykb���}K�ǥ*RhR
��KN*E�V�P��p`F��qc|�d�^��4�03��uv��U6����>x��zE��)�a�!<f�e�e�x@��	��Ę��V{Y{k�lD�٣�[0��i�=uy�h�C�÷`�;��#)�gE�Q���9nb���f�H�����u�S�9y/�]�6X@�!���¢H�QH%1'9�I�yL�рa����<�
�^�;K������;-��X;��z�k�b��k��w�FP~�~7���}��^V��Qi;�m�S������)��<F�7,�z��㯿�����I>]�"���� �h�5L"Vu��!�S*,�c�<[�ݻ7_>~�e��?/���P�Zuz �2��H����8�Lb��`���)'��%?+���\.P5"�J�d&>i	����M�:c�����R�a �~���E�ӗ�����_����/>.��e#g�V�o;B��,�53�c&��ăv��t��Y�]oQ�S~<�/��_f��c�:1�t}�(�]����9��J�A/�A}�69�Z�/��y^��W��}V�UڨSE`�9~��_zt�qIxpK�w`�a��} ��H�Җ/�ɚa{��Wb$֬���=�Z�Ƌ�3*G�t���h��_�?��/���0���|�vQ��zq��]}m�v$Xc���"S-����	(�B�	N$U�q��c�,��&���Ҟ6q���C�r�U�-�c�+�zC,�s\��g�>R�7�O0�'A3o��T!>DE�,I�Tt���������e��c^�͗���Yە���w$;Îh��,�1XB-�'�\^Gx)�q!������=�v6������ơv}����܇���l�Z�x-K�Iă�s�j�o��4�V�ƿ�#�������Qe�=<�v��`�m�%��DC$c/*�J����YR^��
�,��h��O�('^QA��Y�D�C+@��H�F�P�i|2�I>�B,@��:?X�`5�}@DrYx�m��^
>QF�iaQS�dh���v�N�� 0�ॠ�|�N[���G��ʼ�(?�t������D�]r!H.u�PĮ:n��ݼ���vnp�$�t�%��T8|]i鹇�1Pˋ�����&� -ɞfE%�F�6�;�&�q�j�̝*ħF��o�l���ǲт�t
D��"T&N�Bbp�2��0-%��)"�d�08���LX]�	'��t��)Z�l��e�~1�̪�&�z���K�L_�?�{���ҽ�ÎH�����V���<��1�bx���"�w#cC��k��@�9��kهx��C���i�N�@WWR�e�#�(��[~x��?�Yj�Q�Le���C��3�����&#��]6��Ji/<��
¨�S�훽aXU?m���L�b0�����X>P�F��.�h ʳ�ꙏ��i���������E��:��0Oc^,�e�Z,}����:1_���$\�߬��,�}!��h$�h���X�;��a4KP�����8����������ڲ�1�9숷�����5S��x�a��~j��E�T�j���A/���U�ݸ3f0D��!�]�O:�-�'�J��ˎXa)~�K��DK��43 2{"Y���+��,(Z�S� O�>��Y��[�i4�,_�5�ʦ�0���=��� \%!M
�IX[�y6�X~7���k��#YvD�TGhX���i^�ڐ�#+Y���g$[K�ҧM~�"�c���0`�8.�c��4ZgL"Bf<��Z�g�Z,'^���,��ؐl>\�0*z&�HK�,�}x���r	fn]��n O�Ջ<���b=|�?�����l�md�߆�1gQ�/3�3ͰJ��SEk��w㸶z������4��7��-l�Dx�AB������9Q.k�g�R��ӡ�K)�i�9�H>D�C�;c�ʅ��%���H�,&R2�<G�`y�#-�����}a@�\"�Q|B�%%�L��} ����e��K�<�V_�m<��~
U��O���F8R_��y}��Z�ɱ��6�!�
��s��a�5��ʈ�mօD)�8%��.	��`6m�Uy���SAX������k���H#
�_�,�;gU�>u�i4T�i��O+X�����?}]͟��ǋ��9ؾ��mc���A�1�?���iHN�/�O�0|�S":���UO�m�����%Ǽ�S���1������=�>��!�	���^$|q�+�:p`ݪuӪ�g�VG��S��|v1��h{�pxI��ᙣ����C��(0�X�D� b��r.Ep3�:6������]2�R6V��!��Ds`���+�g�b�.\b:L�ɢf�1"B�d6]8��<Y�g�
c�?&�y��lok��c�:���║ش;h&Qp���5V��h}P���6A�"�0���rD�BT1q�����XI��"�6���`���V5�Z`�aD4��C��.s,���Xp���.K<|Px��e���h����E�4Ho1e�(�FI�Ԑ"��6b��a��>�rdh���4��]�e����u�5�\���_}�U_��}��ڹ]/������Î���wX�.V�a�
���i�m�����ӥ'ؖ�����L�i�Uw���l�>�?/ŕh��`b�ɚK��&:,�/\�z�wG�38E�j{���/�s��Lo��C�cFx��S�=$�	�l�R2pgh[7��J4�){	��;
�%�9:�r�,�S#�ujm�}�2��|9z9�c˷~�j]8������o��*W?��:v�����"�-���c�d�s��[�}�5�e��mP�[�p�nOkyQ��i��t�v�L���9*Ji�0�Č�^l,�)�	�N(�    c�̞��4g���9m�%���<��ă��j�\�:KIl��4x�w�Dgνf<@���كU�`�`7��>,\���`�N����t�aZ�ۜglB��X$�;l��5��j��9~h����~V3T=}$��>D��և�!��%�4F��@��F���D�����j铻�܅1Q����
�9NI��Q
��Z%�G�6J$u�F��	�d�܉�{O!$��	5��p)���������Y�K��#~�uį&mrК:�eK}[|���P,���3p�����b�
#�gh�)�lq�a��jr�1R�+�'?�T�1[/�J����O����?�?T?�2���Ջ�/���t{ z�o����/�U�{�JÎ�.���jBEToY Q�����kps9���ٯ�3y{�k�Ԕ3v��.b�u�!���� ��3�N����Y�Ǽ��m����W�v5�~��ݦ�!ZZ[��#֤�tK�zt��s�
t�c6~҄I%��̛Ғ�E�|�a�-�;_"���`�K�q.Ӑ�HX,�h��]�����N��<<�D�E��⧯*dbs�tO��79.�y�E��?�k��rӽ�V�aG\ۖ�ָ1��$�����2+������IV�YV�Ys*�o�wv���C��%)A�(O�h�0�  �9~MP8�w��x�aU����0��>jSv��`����G�
fY"�	>X��
8=L��vA�P�nqz����D�(�����a���R0�!�g��4<�.�h ���XV�K�A�����b��S ���|d�e?�'�����ڦoW�x��g��� �e��+�������.:��jf�����.�i}�.�bd}��$�M,�\�KiP�����P���G���b����������$��q�Gzt��`����R���zt�M�$���fHU�/���6���3��e��I`.��e',Ӝ�A�3r��e��H�n��~z嫗�D�?��3����Ư.��#C��2��n;��#�v9�`<�<�ib9v	�/98����v������5�^�.���!��&끖DM&%x̏f��`f�T%Rr-�����3�� ����de��]�;Ls���C�c�'�c�rd�i��� ���\g�Sa�%MQ+a=��p*���-Ԕ�S�N	z�@cg���L�=?ͦ��w����e2�ճ������<�W��i>�v6K��~��vD�È��^���]�4��XI��H��r����r��B<�_oY}l{�e��=;�a���C�蓊d�YM2+�dّ�Y$`�W��lj��v�Wu}{�:Zj��!$���8=�?pTY�Q!L�;&;FQ�Pp�S�%��yŘ	��XVN�����Sj���Ψ8Sz�]��9<��#�t�<��V�Й�c��g��z��#rr��W���j;�Ԩ�R`\Y�������XA�i�Y��iC�8m	�."\z�}\8�K#㗥��ɺ���O��[���=q�a̢d�����Fb�Nw��`A���G�X�����W�X
��*K�eٷ����*'���-�>�A+O\�2������g̍�l��u�F3f3��\��ƫo݁���?~���𧻓_�����\0�Ya��U�1�b�NP`�H�Vk_�Y��D��F֜�Ɔܒ��i+�vy�0�C���*X�Ѕ�� �3$� 1GS@ET��J�]ۢ�f~�`�~#���E�ӾG���xP�:[$����غ2"Ab�R�6��V�)X�k�W��?������9��ZSľ�q�aJ�����8,�H���H��	��Dka�6��KL��ߝ_N�Ӫa��\X!O�����K����JAb�˼)4jR!ژ̭ci�M�,���#Zc�L(	NaV"皖"��Kpz&�H�f���h�7>.��o�Ƚ́���Ͳ��o��@x�<�<jo��b,$p|֊��,e��g��X�a�-b�E�!�=�>|EEEI��-���pY���E��g^��v��>]��۹3L�S������,���X0�,I�%J��JM,�k"���z
�-��,�]$"����I)�gV�m�3��g� �.�h>L�@�h�m��9F�|�/�u4��Eu���Q����� �bs
�a
�V<�j�ig?Z�����j�"�Q��܇���P���dUj,�D�))
ߣ�m�Vm�Z�2�2C�!�����,=�?�Ma��
+a-�wT�R)j�uKq<D�)N)pn�8�
1�i��ZH�+���TH>b����4��r|�����c����V/.�ˣ���Ԩ�?ӇkT�&N֨�.��k�\I��H��愦Dl�d�y�0�Z"F�MZ�	���'�*,�|P>���8��g`�j�(v�FC�8�Ms���bG��O���մ���6�+�s����i��s���|uk�p�����첵Z%_j�{��v���;m�H��Ȝz�}�9i�hἀ����jO�y(&��Vn��������E��xG�i�4��hw�;�\�D{�,��3֝�&X��jy�u��S&I(�GB1LI�&��Z:��S}Y� M]�р�/��u�b�r�������v_h�'��������x��ur�9�5�_��1숋_fS���#�4P#���0L�R'����vkZc�-��
��ܥv|���C�ØCC*�Z�|���&� �4E+\������{�E�<�s���T��Ƽ�d��D݅?����JF@���D)������k���-��5� ��DI��Li�ĉk�9P!>��?t��L��DO?����<{P���|���~g[���k�]/���nv�Qk��[e���;X�
����]�p�{Qն�q��=Y��M��qz�}qO&h��U"|/�jX+���e��������WB�C��.S,���7�K�HM�^%�1_��s��JCk�ba�b[aJ\���A%�T�-RiI�Ү�;bdL#��4��c�Lݭ^�Z����U��j~�����ry9F�Ɉ����˴�M?.�Y/�!GggX�1FĜ>lh�c>�Iz�#�����f�j�ӊ?T9zڨ�.3"����p�#�]�Α�'@� ���e�Ӫ�񴞴�>V�#�7G���c�����t��`A���ǂ�"��o�<����;1"G�1K2�\��R��aN�bB��.&"��"+�p
�q�I�\��h4��2�(=�ڜ�: }�5�r��x2�����+��aOs�}����,9*���Q��z���R�mk�v��5��	qZW���C��rw�\�v9�Mh_ೌ�D�"X"�t��>XU��vv�׳�����t��`q���G7N@KXdD�U�F�5�m�G�jI�J[%ql��CD�I�؏2�@�W�Hp\NQ#0k��)52�q��em!�~�&�{��|�������jg�c�ΰ#0�x#Fc���k!�!�,V�S+�{��j/~&?�۬�⭜1�N[����C,��C��q�Z���g&�e=�����4ŀ{�vwo}��w{�U(���Jt��`Q���Ǣ��J�h�[YU�	�'DN���f��)�%v_�rf��7 ͧ$ca�� ?kP��0J�f���h����1Se�+7�>�[����}�3�aG���gryV-�"	��팈Zd��L�vi|�[���V���x�����_�M��yƣ�S�����M�Lh��L���3�Z_	�e�'!i�V�R�;T�:6�zS{����{h;�eZ�E��]�%��W�0k,�a�I�:ra��0+�>E�u���s"ڢ|�0 ��4��Wg�!4�!u�F3��_Ɠ�W%SG���G���za�=����8"q��d!����H,�����Yrk���N��	�R���DY��%=�>�%N���a�J*���K����W�s�z�.BI&�!й���&=�?:��y�"��GR.0X'�&cM�6gs��S��&��Y��������N�Z�t���Jq�|�\/S4�@H    �,�Z[��nT�-kwW�b��DZ��.�bz�}WU�r�@�$H�-|e��gі��(�7H'����ޏ��Q��z�z��>��e7�xa2J"����XO�YH4�Eh7H�,�P}Z��E�!��r3r��`��0~�x��D%����K�D��{���en�%�=�?���$�s Y�%����MI�2Y+���{��&�QA�t�����M����-��0k�,��o�p���ZS!�L&E�$I�8	�̢UPE�xS�c.�XH��%�NI,��#���ֽ6��I jde�nT�i��=M������}M��N_WOճ���x��Cw�6˻�BsX.�*%$��+��oȠ��F�85��}7�R�۰V�d�r��M]�"m�!�A��c�P
�;Cc�u�#p� SS�>�ٸ�<�/X� U���M��4��[���Ĝ��S�.�,e�!����)p�c��>��K I�*�F
�Q
��,�K�;��`ee�0'���%%�L�I=����#��2�L��-��\=�V_����05��,��W��9�?�XOuH�+fǱ�&���| T��x�P�n[�� �tھ]D"����p@���	P0/��f��蜓6&˭���m���6�_�F�T2s��:Ln�`�C�c��pF��@�5�[	�����OfQ����K�8p^���S	s�
R\�:0'"�#��`>�,��e�y�0��˫���n������s��l�>�`���{��ư#:�{��9�0+��D����$Tu�ywW�������h��i�庈<Dt�!���_RN�1�"a..��Y�79Ij�U�m�����Q�6��Ys��]d,x���":'�|z��]�1:�"lT%x`$T�D`cZe���1��[bA�H��8�2�!��ČőP�����;x��ꊽ.Jc�1}ʅYk"�.ϱ؄'T�vŢ��xty���C��%�X 7�;���3��\4������x���#z��re�=t��"�`����G�r�b���8�$ v'���mr��Z꣫(i������ⵡĄ��V<�<��P0[�Lڑi��v����q:֋K�u�m;��tR� �i8�`�\��n0#J�>��AG��=�>\[-G	^���,X�]0��v�	�����w�۰d��zkt�}���C����eV��Q �Њ<QEJ�>G�%Z��3?�#�Ďl���`2?�D��$R�(�)w�q=l��ճ���
[�%���e�f$�P�JF��Ƈ8��#���E,�7��(��l��0(>�����gB�a�	�?�Be��$_}\�h������>숀��\��6�=&��s���^mvL��a`����C$D=�>H��0^�H��|�!�9js�R�j�|��]~��<WO��l�_����.S�����'�CI��� ��7��)˳�H��
l�I��!k��ƻ�G���;c���q�[��S���jk�v̞q6Қ5�ht�FL'8m��"O�;$�!�[�>.HY�񡷽�aG\�b�n<Qk 3�h_�%Y�\�wFq�)������t���[�Qz�}Q�2��	*�MdW�BC�:+����]�9l�Uʹ��T�5K�e����#Q��)v@ź}Z�d�����[�#��1GȐ�z�`}\R�����*k�`D���ހ�.���'9 �ե|��a��5&b�f�|�T��%�']
2j���|�."Az�}83P�De�� �"N�@�hp(��.i:�X9���\�\�M���=��4`�W���|qK�������V=Ӯ�D�4=�?��Rv`+�8{���D���Jhnk����,IW�=�S�jAR�<p����A�EJ�q�l��a7c�[���4�=G�#���%7{�.5��X���|�����"1�IBr�56�}�/$"���� �dm�-�%�,��e��	\#*0��%:��E��!N�{(��e&����/�X.0�5H6	"P�ȢH�X��J�R�Qh�Ŋ�`^!��4%�P[p��J��\6;L�/��T_g�������;n�>�V���Qȏ���\d���<��<xX�/����۽�����
 �6���L��w�1���W
6�zr�i�9�Z��BJi�)=侳jK��BC$\Q,]��Dn��T�z���=�������hC�^��{VSV�Æk��c��!Ӗ#�-��ĥP�����#Zt��1����+Δ1��c���������mGm��[{Pp��<��bZI]� 
��Q��+�T��M�Rȓ�����~e�Ƌ��<��׿�d6����/������oЈC�ę<�K�aJ�&���ƻ�O�w2���X:,3O���G�=��Ӑ2*��	`�����E�3q�mҌ�AyT��ldi�HE�i4��Oyߐ���յ���m��l>�q�^���մ�<[_�������Ӯ00��X��_����P���Fw{������[�R����1��y�0!�Y2&;��չ^�{w��{�f����T����E�!�_=�+��kf���*1�9j�jb�Ń�L�%����ש���������z/�������f�̃'�Es���PlpY��!��b�9m�a��lG]9Hd�2���2��պ�F���Z%~#4H��1gY`�RJ��p9�̂��oB��6R��X�W8�ҹ��(.����*�F5�0�L��/����0^�$�����t�g~���\{x�s�����}�x��������;"o5a|����iy!V	N<0��֢3[U=�/�K�Q�O���A�!��r��3B�����=^[EFl����X�oq���X����3�G�ػ7V7��-V�c �����4�&��0��f���焝���}ZR
�0/l��QA�׾��}X��u�U���!7�=(�z���[��.�@����,K����x���-�{�d��`���^Db��D�4� !qP��
�t=�Q���,H�\ճ����wz-����`�LgT}3;�V_�_Ƌ�8����ya��`?
��y �eg��ǂ��XN8�K�Yb�0$y%�(I�zZ�f�Zm3�����v�u�����wv�j �`��&f�*��Fi�-��wm�NM[��9}
cu��ާ��Caw�^s�k��	<�@��B�{M@&J���	k��]�Aa;*�A
��4�K؃�n4I֤���I~#���ӑ�B-�hL��]u98�o)T����IDe���lx.��	��D��mUX����uk�i|���������p&_�������q6��?~c�.�/�>�(�ͺ��;���T嵊	�-f�Y��})�N�^�!�Z���fU_��w����V�̬��*��>�]&0D��C�:H��c$�Uq���eEcȠ��+eJK"�]۫�SW}��Y�뷘���lV/�Z7{�za��c�6��ƭ��pt��{8D�xR�����u�U� O=�8�[؇���K��U����a��o8?����]Ysǵ~��b����Fz_P�JQ�-^�(�/�^-� � ����s��4G��H� */�e5�>=�|���H�H��� �M� �c��8�xG� 8�����1���C�F"p���NKgY:��(���S����0�~3�� ����eߖ�u>�/&y#m��sx����>k�1p��E�b2����e,��\|����ߎFֶOD;�#kׇ}��+���EQ�9���8!�r���TQq�^���=~�l1������k��c��>D-�ü�J�R����ʈ=��0Q����H	��?}�]˺1��@�=��e{����]����k&Ń�!u]U��T��]*-6�cD(O� �J�A�M��ݍ,�n�Eۮ�A���������O�rs0Ҩ�#%ZM$�ֆk�!e�\���2�����x(�/��������H#;m+Ɣ��S����Qmm� &�y6����!<˙�ߗ���~sFΞ�_�+�v���[�1��G��Ͱlc�0Mӄ �mN,���Z�k��:S    l����s?d��(Ww��]�U'�/�G�R����x�"���+a_�r��i�r�>g#c�]3���'Z.G��|+g��<�c�Z�Ja@|s5�Mɑ�����}4��0�r������@?��n�h��=(=L�m�X�ѧ�HZ,8��)"�}`Iv\��LQ���1b����]��P�\�3=��L>Č�� ��S]�]g��Y{�y1��e��^�����߼\c��ˇ�D/W^�%�>�K��x	�qD�4I�̚gY��,ȵ�O��T� ��+�Ƈ(Iw��]IRO#)I,�n��
A I�WT��XG �]S��%�K>�7���R�E�o��I����[I�Ʋ�)��G�5���mƒ��{���Q$�c0��"M���W�'�?��vѨ+<�^<]{Pxz�{�m��d�\,[������I������]5轤,ߦ4�mCB�`�x�?���b��f�ҨC̨6���$ϚoΫ�(�q_h^��rU�sw���T��������x$'��U�j�>���>��+��%LG�w�G����j�Ol��Է��|~�d�9�v�U��L����+yj��)���؄]摨"��9� :�p�-O�r$��Kv��M�LQ�HӍ7~+ຘ�Wx��U-6��9�,� |O�]kƂa����@`�J��\�GP��t��U&�a
Ns�mp���Q����e�9X�e����7�?{�5�01����s���bR�`�:��*@�K:��*q8Č:��|Χy�)L��e��/�Y{��x������8���<}2�������cQ��O�l��Y�*�����h��[ xvL���&�P��y��]?֦�?�NƦ։��hb�A����3��7h+��J$��ؤ�R }�����*J9L��{?���b"�	.�2�����[d(:�l���!VT���b���}=�LA�4O'�	�k��%��1�"�m���բ���6�p�q�F���ٙ��>�����@{d�
�:`}����}23�f���÷ڗo�d��9�䟭�u[v��5z�����c#�L� 05̘(���>`t���@���g�UĦ���v�2�維{P({���0$O����^�D �e��A��#;�њk�//�@4����L���0h:�f��#�!f����t�a�/��tr6H�t������������_��Zj�5W���r�J'9I��"l- 8��抶u�V����C"g���HX+��^=�!3>DOl�yߕ'���zE����,E�[$��G
�\��sҾ%+o;@Y7+�2N�)V�GL�hӍ�|+k�b���PA�F�V��8x�6�H�����q(=�t z��p�#oz��oM���=(<=L�u�5	�-b5V�v�6a}6	�6Z�Rn2>�F�[�(%��qQ&b
��oL:��k.���cU��!f�ǳ9��i���2����������|�5�����={�t��Pv��c����흳�a_���e]r�O�ExSb�$:jK,LI�v��:���oۋ3>DA�ü�J����W0�E'AB
�aW��|��wA*�܎��wIO7t�9j'm���o%\��Ҹ�Z����%�a�w_ �#\�	�`��!&{��@`h:<����E�^����Y����0��ۦ�[���x���a��5L���VZ�uG8s�[&$��xE����;g���9�|H����EꍪEC̨��k�]���/oL�ΐ�׸Z�_����/��˗��o�9�zx������W����uw��Gtc�B��JE���=�y�F��!Q��#�+d���ISu5��%%��*K.��v�2]� xaFLV��3*�?����������3x���y<�M��ޱ�0~Al��tZ4��a۶aG�m(g�c^k&����­2�sx�����J�Z��^P�8Ѓز����t�����#ط*2`F��ﳟ6'�Լ0�#�5�������+��s�a��Ũyq���پ����##���z��4�H Ϲ�/���/�	4����h���߁f 쩱DI�p��2q"�b�͜�C���	�!fT���?�6��I��W�A�L�2���b,�H��7��W��F�mÎ��qfm�$�}��r�,��iW"�j�6iY�'�b�p���ʃ��������(bF-�?�g�y1�^x5�6���l��(H�s#�cn�l)�ʎ��z��^g�ov$�. C�����4<f�6q�褬��t�x,���#Z�~Z ��'��a�i);�k��9�Z�1�Bvg�����En���ِ�ۂ���[�~��ܯB��	��:�`Ay&�] �xi�dV(Ř��p�� J,`qi��qpDi�Rsh��c7���� +>s~~���ٛ]4�=ho!�`c�A��8�+�U]�mؑ�;��T��J؅=�����mW�� .gn	ˮŅ !P��g',Ӝ�T(��-$�����7����sT-q�c��o����7_5?�M� ��8��-�uH;r(�]�~��ÎIqS�y��>zt�0 ���T�d��$�/�V �L��2IB�<��FVX�G0��OӁ���e�#9Č
�O����Ijk��	���|ӥ�� �7�_'�����rS��=)q;Vld���О�«a�D��P�1[0|�d�#3$� ��B�%Yb!�?*����I���)e��U�C<�#j���!fԪ��O�|�\��y�H���_܋Wxޡ��ӡ>)4��6�H��1�4���/���'�`�z�R�R�:NO���	A\�3		Zy���&��A����S#xM�ӓf�>f���\�&��n�oN޽8yӼ{�㫗o���֍�|e�O��y?s_;|��RП�U5�JB��Y�"�Hj2�h%����T��
 x�[��S�N�YV	�!fT�~?�%��6�s�NQ����?Y�x%��O�~ĸ(�͖R��T6���r=�H )�&b�?"p��T���lM�Q[ƌ�`����#p`�� ��R`�\ʑ�u��fT 4��3�e#1/})y�<˓��o?�� ߼�*�tPt�O1_�^��K���1�X�.s4�j�6��#�f����s��&֩��r @�s� ]C��Z�u���r<٘��K^1���a�[n=����yڈ�z������r������<���� ���a�-`_�E �mؑ�����c�=��F4<k�xOt��
~OQR��O��*�0����Z%뺞��e��3*�?�^4og-��{���k�؆����㧏��@�����?�N޽������혻1�#�{βZ���4�H0_��r�ܕ0w�0��lm��&h�q��|	��Ht�`��M�tD�"h\��;0�s3r�3C̨0�t�n�y�yv�|�����4�ן�*���L���z!ޮ@�^_v$��M&��`��x��h�4.�Іu�a�����RX,(	�=�"���V��ú�d�'y�1�������̟Mf?��ɹo^M>���O�#.��T���[���������aGpɲ���g�Ȑ <hv!��L��2s�K&Bq��VL��21���p7Ҵ�26Č:k�� 16����<=[�g������iT�)��5��]v$�f �E	 �#^���6��"a�/Iw�[K�<�EO���Y$�z#A�S*́�[���1�B��江a#�ٲ���?�:��i����5���X�1�#��z�n[����zؑ�P�"VO�"y��2����U4ڕ�c�H�Sb�V$�_���pɄ���u�➼.�<Č�:h>�7Ϧ��?l�fe��6�~���Ta�!�nח�sewo���giXP)qԀ�ڑ�'>K!d6��{�`2O�f�.I�q[TDK�y��λ���`����v���l�W��Y��/����u~/�fO	��_��w�>�Hp�Df���1h �l��N�}��#�ǁ�Y�% ��L�E��A I+B(x��p��H�:k��)�|�   /K������[��c�/�zT4W�e�;<�̒�ԓ���N�X�1�d�6�+��M��,�0Y������=�Z�6�xz���ÿ7"��}�H������;�^v$���*&�]t
S��J����6a!�������[�<3v���'bT0���&@0�T�VC̨��5u�ïU��?=���O��}��^`Mǜ�\_��+�i?�?;X����,%V`��6�GFFbIG��:Q�P�
���?�,jx��V�ڝ�a݇��#E�[�fԧ}�Ju����g���\�齈;fv�i��nm���v�1����,C�=�I<�s�v�{|���Xطa,���l ��mR�Guh� B�hU�d���nk>4���F��I�Y��u= \���K�;��K��j�7��rX_���#�8�
1s�� �MTs
�h�Q��;����lxR>f)&��у3����t́A\�3�A�3*��);m�Z�d�۰ʅ��DΦ���zeo?g_;@{��ǈ!��J���y�L�$;8;'�b���qF�3���v�X� ���b�����3*@_WZk^.�7������/���g��nC<� Ǳ�{ �?;`Ök0��a�wJ�����)���we[*���@���.g�`���U��͌�ae0𱢣{�u�H}s�[bl�r#����,�����#�t	^sal��{�]�)�'�uP)���/�b�Q����!K|��k�������
�'�!�[�!f�׌�}�<��7�r��ڐ�G���?!�Q[��hl-�A_v$ж�Ro�'�c-]�mL$��	&i�u�����L��$A��$LHT�yv�v ��ȩ
�C̨��濷U`���m��a�������ߕ�������V�zؑ�t�J%{"�fm_Di��>��fcBG���P/Q9�(�Z��DNs�d����F�Y��fT�>�����������}`�SD���[��wc�>�H�̀�C��p��RF�Uj@bF�X��K��Ƽ�@��{��@`@��"k�u�	�{l0�&1ׄ�|Guc>��/=��l�̧�����,ELEk�/��l�E��?�����KKɿȚ�Y��_���t���W������1�(=�����U&ß�:?;�i�N��8�|s�H��<�ir~��̺�s��������y���O�~�
=��oԻkP\#�䐛�v��DNRgM��+|�3	�9"�a%;E^�#`�12mm��|��:�m�֎~��o��0���v�b�����.���8�3c�RD��1і8����C�H˕��dJ�OE���<�V!K��.QNw:��7���[�U�3n\m���f�������-��8g�k$���Q�D��E�%fQZ��bFqp9����Dyɀ�g��v���;QF���j��JM<lbD�/�����(��\h�qv��p֘���y��vPܸü�(���V�صVO�ΔP���D��:n����~k[����	C%�m)>���wj�X�S��*y�_zz{[�ن����A�ʄ��'*eP!h��,����/�^��%(.� n���a�shP�_@lЀ*�
��D- ^L���{MM���6c�Q)�ʡC�}�-w���q����I�(d���+�ᦔ\�#��kU(��,�I��v���P��p�36�n��[C̨���ߜW�^ÿ|�"O��~=&xpP�N���|��5�qJ��Y�S��/ωpI����#�����Ωv�Q+�Q�f��5ܧ�%����e�������طJ�      J      x�ս[��G�%�޿O]��
T�/9Oԭ�)J�.�G��"��QJ&���V���=��� >�Y�\�Wf2���C�p��~���7_���ŷ�������z�j˱�����|��߿z��o0��b]S�cT�����Y�X�ϭ�J���曛��/����G���j�u�˰���U�����hq��J��_6�۫��;����}����\rj}$�tŋ��������{��萭�Ko���n���o�����q�;�H�E�kP�#)O�(J��X}O��I><~�����5��jk��J�5N_X�����Z��U��\8s���f����� W�%�B�xh߳�#8�5l��ǳ_���������Hy$J1�ounʆ��Y����^�ڏ���RӠ�N�� V'U;WՋ�%k[Rݾ����7�C:&���vMw˿������A�?<����GG6Y����Vyq�{Ï��42����o�0�B����c`���(�;��E�9h�4$�7^��t�"gG�f�P{�և>�+���P)�Ԛ6�t3�.\�$���0_H]�N'6j8=�����:ۮπ�n�j�}���u�~~u��w��6�PB����7�Q�w��e���vUb�3Ff�5=��מbwT_������p��G�1i�1x����������K�m�����n�_+�������t0ֿ��&G����C�QpY���L��<} vA<} �?�h�<l�8���gx�U�Ԓj57����)�Gu9G���Ի�X�J���i��吝y8�[ɪS3�n��(�0��{��8b��p0.L\:}R{a�2��,�h�n�����!�)[�C�Uc��օ<��f�Nyd"<��0D#U]�]J��A��I���V<�e�'�]�xP�[>M�P�m��2��F?���Z:P�`��f(�\@������[c�3��H�#���pR����z@vKmn����T���lI�!m<���9�$a�)5��=�k�=
�h����`�͚F�~@��ĺ���<h�KL@<�'�9tB�zj���w϶�d4�M����)�#VS8���Ը�ԣt,�Fk@�w	Y�0����_��t1�4�eJ�Y��ZȘ����*����7^{N���C]���5U1�,PwU+|
�l��% �>a��p��:��H���NU����#v�ï��0�N���>�b���?������}������Qs[�	/�i]�/`� m��V��qV�5�������rԆ��(i߮�߆��>7ݔ��#lxv�D��Rs�s4��\�>U�.��:ո�R�VLN�O��-jG��ǫ��v��֦F��N8l�����@R�yY]��x�������Y��O�UgM�#�p���(�������ѤQKL#���zK�B<"�Nn?�>B��V�u��sl�j-��}�������^C�Sa�yA]���`���N;Q���t.�T�㓶��#һ�:{���:C�5�$�K9核f��@�i:��U/[J�t*x�P�`a��x6��5����B|���#k��:_�]��ud��������6bNöl�T<�� ��q�F(��q3�*kJ�HZb�]�'-��G�0wWg/�&�&�E�����lGe݀�U=�x�r�mKf�������{�L��G�=�R���x�5C��Ds��x7.)q�n��x��G����.�[�1ԥ�^�Mc�p��"������v�Pkq�X��d��o%���P/Y�Bo�:�]���Z�L�Pch�xsS����n;
ÂN@�G\kV�6lb�c	���F���� ��y�P�SX� ����l���'���e�GI�������Y�/�̡�E-v	|Pk����(Q�X�uƋ[�Ь��T�ܨ�^�;po�����
\�n-vWg/��Y���X�9�*ʘ��4iN Nk���%�<��_�uځ�Gz���Z�Y�޼����{�m��zs�(U%�υֱ�rk�L�0������p���P�GRÌYhsჀ��S���6�S�U��
ɀ��9*gL̦�vy*r��������L<����%6v�����1-����ru�����υ40�H��ť	�#�:�|~.�S�}����@N��R�+#�q8��j6r�W	��R9�t����>��x�nu}�Z_-�f�n��K^|w����냷R,�(�q�(� ��.�\a�)*�s�l�fq��'i��5�:{�Gt���I.$'@��j���q0T����J�3^�,~�ժ�0َ3Hf���H��/�a�Ob�;�蒶�r���,y/xW��ܭ�����FA�^X+.�a����쑬��U�O��6�ʰ���z0�����u�er�&���=��C�N.%�#�澺�Y_�h�m��y�js���iψd<x��k�@aXIĶ������[|s��x�xa�2��<�:{T�D<SJ�@'�2�P�V+ס��&P�X�\L�t/;I����M#�=�T�ܵ�����������|���C���U&xt�D[�G��1J���y�ޥ>po&g���
9ē�p������Y���&� S�G*\��n�D�D��ij �S����/��z^|�\���^]��x�������#�^���\k��������:|�j���tRL]�v���Vg�k�榣*]2w�a���J���C<u���z؆|4���ͺ�X���v�n�}��כ�Ս����s1�SU.]�M���)=<�jm�X>�=jE��ô9�]�=�5f��&!�4��a�x=F$2�)DK�L	�W7��B_Si{Kc` G�A����-�Y�_|�~�� ��ˡ'�l����VI���q ��a	O����Tѿ{��ǳ���|�OK�8l�=�г)Oeb8�s�+���H����:�b��!V��']��j��U{�X��:泹�a�=��6/y�xT��A�`3�0Ƀ ,�5�NS~������%���Jd�ە \$c�b��m�)^ԉZ�.�ʺI�A�`���6���~C���z�����^���E�`��0N��V禲�F5����4�I\�3Kc������q�:{N���C�z�^eӜ��x�bTs��Q��$a�+�Z�ɜ��7��/�`?ɇW�q=���	J~ذq�q�����.��S��sou�pZ��-p� J+�oE��LK5��T���+����Ŋ&�bv�j�=�pLL���)��./�}5�t69�]~=�j���<�@έ+�B��G)�<��0F4�?L��Z�=�x���k��Ȋo�g,db)�X� Vʑ8�U6�l
΃�2Pkgʻ�˿�7����歺Y�{�J���3��m(#w���T��ZIB�8R?��v�X�6,�=�D�Z�=�!����A��vF��T��j�-�1���59WU��B��j�ծ���dh��v��y�����/|�kp֙�ф�ٲ�`G��'������ YW�}�i������өx������i1(S���'YS�<�5��*����n8����w�-����/W�7���C	�eR����X3�NK%$���J�݅hR8V��ss�:{���4��(�>)�{�6����9��\�X��T7\�èHC%w00�ͮ6�]���oޮ7�$�IG��\9tV5�i�A��7�Q��75J�Bp���pV�X�pv駮X�g�&�
G@�e#9�]R-TZ�&����HŃ�H��pO�X��j�!2K5���n��7��׿�卐���P�>? �b�6+��(t�R�B�=8h�\�ok�2�)��`u�����Ԕ6��-A�l�7���ж:?U��\Xw��ǘ�r~�z��uWC����gܮ���m�t�T����ò��&5S���㔆~�w��`u���T{�d���`�*��	�{#'5�K�����]�xE�Ѝ���Zud�n����+^��6����n{ɾ�[|uǏ�������r�zh炟S"��a~�o�G�-�I����K}�iju��v[u,]�4�Z���1Ə&E�g��+�A��C�#��zB�E�    �3��G�����& �M��t;��7����fG�p? <M��Vg���<T�*�t��!8�T$4JpA&�I�n���$���*���s��(��]-�����.�W��}2�F��C���$O�#V�Zj����2�D���m�����٣J�k�`�\�"L)�=����÷��sQݯ���2�a|�^g���<*h�b���N8�~O�9J�E��B�H��k��!��������p>�^Ç6�7c\61M�t�'�F��E'5'7F�[�K�k$�n��w��\�V�}{s�����1��t�E���aI*6)LϠ�%<`��6(ĜO��76-M��\��Y�����#�ɤʺ&	A��y�H`dg �+�����꯯������P����9��	�&���Kl�Ҁ��3?$q��N
��G������/�-([�Y��N`.p��m�S�����:^'E�N�B�H��I4���vq�[�m���K���hI�Ŝ�XXѢ-a;����#Q$�$��d������Ʀ!�]�=���A����4J�$w�`�ȇ�&3ҟ�Doq;�ڏ%yʩ�1wF��#Y6�8�8��Q"*���af��G�'e��������RkN+��fx�J�R�砪�iL��<R6�j༶���m�'����]Z<h�ma��U�w��Q���Ć3�I4� W�j8���0�'�9\���y���G5˅19�=�,����ihi�rf��dC�確+�;Њޢ��0��ɞQW�q�Z�
|�r ��=�b���k��=�|R���=	�?����e�m=�".j�<K4��2�sg}�Ij����!�=�b�s��:��y7H�����W�����z��.���bE�t���M���5JCḱs$ �إ�L�=X�=��� 
U�H��L$eCЮ@\O�~&�{�|��H�#�?\��,���$�f�o�2\;P��٪�m3���nx1Gj�z$}�aө���j��(k��n�E���+��M\��)�`Uu���xt�fkZT��D�-�y�"� fB����}9YJȣ�`6ᾥa�T�:~���-��fJI��U���@����!�b,��0l��eh�3P���_�������{4�.8�_��]�R�۲4탮"����Jj�S�d�H�'�4Vg28���!�A��)<1��c&��)�q0�1b�!0�筤x	�g5g��nA��۸�_�?������^?�U�F��7�h*7i/ࣖ� P�}���^��R��M����!�����`�VK��
���$�z.�{��O�V�6|���p�#.�P{,ʎL�A�5�XIap��Tu�X�^L8)� ���������=��LmH���,V��^����m�$�Ɖ�q���R~4�+i[ϗ���1�Ql���,���\>�Vr>�}�l���wF��q
�e'�zB+6F*�DB	�r�PKx��X���4�=9XT#��@;��*C��������mw��W����[�ڂ�~�H}� ������q��s�lֿ]/�u����a����~.��dݠ��bn:5�Z���uN;}""����M�����7E��*V�� &*����aLhN�����Ct����V�ˋ���������?��)�$o1؎-�
:C���x"��	����S������
g�L�HZ�.��5u��|=W7���AA�mއ��y��w��L;�l����f)�h�����dИ���H�.c8��wWgBp�2��Y>�e�ת�k�i��T�p``Z%c�}��{S����=8�n���$_��W��I���חg�h��6�pJ��*�r�y��O1/�U3��O��	��s|� |bq����-�x���\و�f�Q��թK���+���= �Y���$���U_���W��Gt
����'�^�pN�����1�x9�T9��� [����Y���.�փ��W�����b���฽��b�a��j|}��}}C��ww�悔]]=��6�d�>�J�4�%��K�-[���]I:/'ް��n'��	|Wg�o��5���Q�jV�+>��ƾ<�)�m��:�N9τc!-�h��^��Ԡ}�G�-�*��4X��x-o�.z��ƤZl8�!r-�ӂ5Ы��z"-�pu����r�Z"!L�?*5Vk1���4��F`:��8�*y _U]��n[�W�����lh��P�m"��ݕV���j�����
h/q�:�Pp*E�����!@.h��4�{���Ս/Y�6#\!����#���.!�0%�9zH;e��p�,�h`yAH}O�~7�R|�9X�����}A����>�Fi	�X��T��7*;��VKp���x��	8�$S۸̇SK�Vg��v�	|��a	4�4Hk�����,��¹K�>�t����Z`��z�7��A�.Ҫ/~�������Գ�'���6��%r避Lw�#��T�s<���S��8����k��h��)�ˤ�Ő��Tp${��&&m䰅�1U�D�Ժ�j�ޫu��/o6�%��ԗ'�貔������ѓ,��Y5��\M��D�%i
��:b��pu�p�l��*	ШZ��x�^�&��p�
�ǘ.~X_�nV�ŋ/�W7�n>��=Q6P�0/S�Mm��VI�L��JR���k��x����D������%��M
��D��j]�e�Z�-OȲMWO2AZ��]X���t%�)JmW��-���{Z����h�i;;�vaZp���zڦ��釁2�ݻ���`�(�M�#`���ր"���$�Qp�+�B1�(M0��,���5�l�%->�z�x������y�)ӬSJ/s�8ʐ�1ҠF<c��e;jd�a%��8o1��^���������������ւlU���z)�I7ka�ÊC�|��<|�Vl�ݖ\��m���(��,}Q-<�F�^�HA'����f]>�X/1��������$��7]Z��5�4�(=��Z�%����b�+�_-\.>���~uǋ����ӂlCx�����iR�����[�ۋ�l���r<O@ .��%����]��С���U}H�$��BRyX�!�R�M[���Z�q��6.���Nn7�?����/�U�^�D���>���a@�.��JTG�L5�;~A���� 6��GlԽ�ك���Q�P�ɵb7ކrTA:M
p�� u/��n�me�Oty�x%�L�`[����=b�	1�1[�B��L�h�^&���*�P��������\���1�[����Vj �}�*u3�ʓ�$�P:s���t �gm�$7G/�2rPK�C��Z�ۖ�Ot��į���t��~0�cԊ��|h�쾎*�QR-�����r�˒�����ʔ��:�w�R���Ư	}�1b"=ل�P�g<�xU��Vʿ�\���O�r�9�/�=��Ҷk�4��8��4[��r�NEŞ�J�?\�=����H4���'))�����IM�Ĥ���lb�+�F�}���]�vE��i�������oq
������]?���u�l��4%����m�:�&�6⶯���w��N���i�zwq�'��t�`�����A�u6}��d�ExO����̟����RZK�e�OI�-!�3��;�=qj����!ge�����=�N�� ��<X��iHI;�")}y�N�ؽq���s�~�b�H�S��k�H��;�>�i\������{���ŏ���]��Y�__�~��<^Y�`�9���bW_�
�IfXI4�dy������e�j�{�:{h���p�IF�� �#�h0�99��υvo:�#��������'$\j��+�Lx\W=�N�ƶ�i����y��m��$?�zj2����OBr�stշe��4��˴l�x|nS��%c�&j�$
,i��(=t���ng����KV��W�io�o֫��/�0�����q�8�I++��}������-A��RN�'��^����G8�D%@�wU��<F�ޓ�f�'.�{���0/��?��:]J��',x�1Ɨ	    ���M,9*xg��Y�_�@�G$S9���މ���?HX<�h��T�enu�؍�TN'3���(}�Z�6��^� [�}��4c5T�n�m�VRB����t��i�m:���c���q_� ��[)�+f�ρ����J_Ʃy���4�h�0Ҵ�2X��&��b�1 �g �'ͻ�.^]�e
�4���n��sN�GR--�NF9���O��਌Ѓ�^͉K�'�'������ϩ�<i,�T.V+s/����1qb�)�.�1�ŋ��|O��%����W?~���ŏ����o��pv�p<��!��bf8Q�5>L�"�OI���,�^&�[�=� �!I~'<�'�$��ζ�qt��!|.��R}E7o%������j�d�hy����NY[�BI�^
��au2Q�ʭ��ˍ5g�^fWNJ�1!-��|������d�Xڭy�QT��b���k5mLE_��	l���:���k	V�6�Y���>\~>V΂����N�Whhi��[ʹB[�Քb"��H	�+K?���pu�X��]�z���Ea���w��HH��T��s���n��Fq~ʣ�%��z��4V;�kJ����x��@7{+ݐ!��O�N�9\�=���r�3��CRu�jp��7�˛�JO1ׄ��j!����0՚��n�6��Z�)���S݆OZ�}��=t��A�]Z�]s�����,'�'E9�Wf�swu�x��<8�y�ن��4�ʪ�}�a�I��\<�Dy�ū��m�'�T��N�/"Ω�!C��Aw(�h�4����!U�h��|�����������	*ξc���&�)�<��ަ�2�t;���"��^�Hjy���|������'����o�����Yd&��@���:��ds I40J\8K7��XEwt릙����Qu8�!TR)o�H7=�'�G�������Eu���!����1J���?qX;p����@�I� �:Rs�t'��O�N�{�/��\(�d��"� ��@F��`�X�xN�BK6��Ϊ� 5�pXk�U�\�`��Y�#����������1}:'��@�M�;x�m���DSb<��\v2&���a*�y�:{X9�YoU��WD�����\ ��qL^T>�#���G�.��ͯ׫΋��m�ʶ��L�����u�#��pB��K��I��9lt'���tD�wWg�]�b�KΙ�gB2���k��L�ǌ��,#)�<@T5�p�cs#��M-}}�^�&t�֋o���w�ϙޭ�|�9�����J���M��*�qͺ&�+𬆋'wp./�t�lwq����l�`y�?7EQ��J�C�<5�깸���4���Ԉ/��lO5J	ߐ1�v�u{�~j^s��:%Տ�N����٣��`Ȯ�Zw2�&U�MJWM�e"��	��~8�&8�b��.]7������Z�^e}���[|q���~����f���_��d[���o�\�n�}.%�6��F�S@M*5���l��G.�vg�n'���z��)�0���t�q(S��\t�F,|����?��Ŷc�\[����W/�&�Bf|d[F,E�.3g�1ju����Q*1�6��O&.���H���D�)ce��F�}�)�0rb�)Z�Ɛ)��$H+�R�ٕ�9��yhr�$�K�!/�Z]��n�Sq�l�m�t�
'��2O�;�	f�f�Z?*�Ғ�]X��S������]i�`�
I�����Jjp��hN�8�$��QwK﹏���]���H2�)�&�(oA�H�U��X�z�����D�p�� ��K��.U�ʰv~x�5���Y���Se>$I�_��*R��C����i�������q^��~�އ��ǎ)�N���l%��C��^�Q�t�#�7��JJ�h�8�3�"�%ܵI\�Vg�k�ւJ3|,�/���͂�3GoyS>��u��s�u�w��'Z�ex�,����R�$�߶�T #�W,�	��}��L�]Wg�c�nd�ݶO��2�$�����B���hZs����*��VQ�Z���VXЁ@��I��gM+���?����ulV��7]m�r������>��|!hC�7��dN������\����?>�X �S3�WgwN�����o�2�<[�ڪ�3�ޗ����J"u��eJ�A��2�^k����}#N����ǻM~�v*�z�:{�C�һ]+�P��z�P�~j��.z���F�� =���(9����K�Ѩ5�z�8��~�U���=b��AZ~;8im*k	�x<vcoC;^�	�l�0f	V8�����l梣UVw��R�)�A��1�s�<M*p��W�2���>e�]�/5˰��������_cH���c���m1�ߣ���M��{�.�3�D�S��y2x��A�i���jk<�� �hԡR+�E��n9���[�y��y��q�����j<��=��V|k0G������:)�j��)�vF���ԠY�L��1�[�/�Q(���"	�2A���B�y*=��l�Y�?j������0xV�4	�<�ؠZ3���u�3�> 5�@�.�^~c���N$��$��9P�@�HR����L,wu�Q!���~ɜ�oB��2M����K/���|:���=)��4�[��Xl�npA�K6��%o�|ؤ(cJ��Cm;ȹ��T��e�=�6�����WӖv_�n�g��\yn��WQ��mIq�@GZ6�ܾ���<�vX�9�����T��ݗ���@,>�d7�(͵�R���=�]����`��n�v��`��ݯ��E��4�^LZC�K� �R��ߢ�鬩��>�;�e�pu��kh^I�U�xK�w�$O�>H��"�_G4��!U3�K|
z�G�cR���K���h�d�t8��'����Fs��{dʹtgԾ�B����]��/�T�������v��Β���0��c�u��!�fr��s����{t��~,ٟ�Mɵ��G�B�)����.�DK{_ē[�:*>��m�t����S��Wg�ݢ�`ܺ$O{y2�"�h��B*�N�/]��h����m�ik�)���+؏4�$�tt `�
t$]����V�e�Ԯ0�7\�:Lw��E�.�]j?e�Vg�vR��C��tv��I�ǂg5��@������7��M_|��-̃�8SrzZ�it�@���Q��>�)q��-��������_�=�r9��T��G^�T�g����l��ɜ�&7�=3�ƒub3|*�U�7,����VP�\9Fg�$�n%���x��bNd�1/7�KwDZ�Vg���K��rQ�A	:X�s�p~�"�)'���NJ�VX���lC�/SZM�����<]����>��E�~a�5���M�����!��Ae~�3�`���j�м�kiC�����:��Cԫ��{����W��p�
��F��e�C��S4�CL�L�1;\�=�܌�[�(e��1{Y�z�d]��C��qu�+v!�P������g�V�Z[g�b����XLs'2� �L�:X�=�D�At$wKzE0!�R$��d�ޝ��Z_%T���}���Ғ17�f�M������Br��-Y�������c���T�Ȕ2�fһ9X�=�1���Vz�Uua��Y���:ٴ�������o���/��z�A������m�ͣ;�My�(�v	\�U�E!�?�Õm� &���3�Щ������M��o��W�gMM�f=����)g��q,%�NR6��	��� VPV7-��׿<�o�欋�v\`bK%�vP&РQ�bG<��vR|�5�8�a�pu�x�6z�ѫ+6ihHN �ĕm�l�3��N=������5�㫛�:���;'�2�E�d�u��o�($辡-sRf�QS�����Xr�F��^
Ɔ�*���� owL���r��T/rS�(���2�������R��L��OÉ#�$��"m�"ܫ�67l;�LUA,�N!��j��I6�L	~�p�Ȉ������ޭ�[�j'���w�7�[���H�������Ѽ^_�������p��/��qD�Zg,���PX���Lq��,�����>X    ��Y�uȩ�&#����bM c�ֹR�mS��rzE)��2d�3�^�e&��̱��T�m�/��A�U�����N����H���y�^���� �I=�"�9H��c��'�>�@��=���o_&��c�y�v�l����̠��h���z\x��,S���������A&�Gzm+\�XTvهj��ݧ"� X2}L=��$�tar�9�$�}ڛ�@�x�SJ܈��&�8S1H�`��}ң��,t��t��VV�r�k<{��mju�X�h��IJ{��]�~RRБ#�}���J� ��R��"c���D�qrG�{4zw���nsw�x�����W�����O����Vx/gwƧ�C�'1J��!�ՀtJ�(���z�܃W�;�D����졭�E(-�,K���Ῡʄ��{5ɐ��ph�aa�j4/-�l��q�<�Z��uuu��Z��;���-�����)+C�x~���K$����e;T���n2�!�-���Ö��hju����FE�$�[mƓu�ģ5�ۘhJ�opr����&����3!Z���]�}s��׫�n�ΝSJ����6�,9�P�^�*Gu
.�ѣ=��b�k�Grɽ��#���fxAFÌ�JEB�+�Oy���0j�`i�e '98��-E��$��5��h��I���O�5?4x	�7�0���QK�{�8�cA{H�J��X��=�A�t<`IS�������A�,�v;��IS� �� yS#^!�-�M�K�3ѼP~��'_��ы�b��������F�L�/N��r<��S&�ʥ��y@\�U���cͭ�Q+��������1�����$%y����.��-[j��)団b�+��Ig.�qc�:�h��!|ͬ�ߧ�θ��n��O:a$������m���6�]h+�|�������ݲ$TT��~�:��|s����O���V�!�����R��`i4�K�z�2���-�Y�_|�~R�A����	S�񓋊ޗO=*
[cYf���8���0q	l�����	NѹrW&�,u�|6�2D�15oݔCZ\
=dx����CUz8Ã�4p����=l�&YѴV�|�O��E���@�`?�(��
tG��I�4N�Nw8B`ju�pz���$� ,7�F�3Bw���TEsM���(�r��F�1:�x��Q��w�����6������M����L7���͊����9i(clMBڤ�O�c
�5���Bj���(�����
hju�(�Gޚ�+��8����n����E��`ɢ����n�f�<��4J�YN:��7�Z�����C'�P���*I�:��+�>U19o���-��S*o���)nt�:{<���#�0[��;�şu�R��0}����#涗R��A0��`˕R�ː�]���oޮ7��usv3�a8'�JzSN��j��y�a��'�����ˢ�dL��O�oP�u��m�mp]ӥðu��8NE��*2�%+����DH���q�q�fl��9��х��#�̰Y2~y{m���P��t�C�zO�*	E�XRڶ� x
�0^f�[��� �;�:{��!l����I:����*���x�2uk#��������\e������T|!����z��ۛ�������N�/��;���gjD�%W?�4��sn 礳	�H�-na{��4�{��G�}�am���L����Z����9L޳g�pd<�1ۻ�*,[��Gf�l�������fuG��-ȏ>+<��CaXX{i�.wCà���ó�F{D��/l^��9�S���Q���� }��n      K      x��]krG��?���#O��U�6�DJ�IIi�3���4�bO�'�;�6�@P"�&A�D($�	U5����2+�p��d��iu���uu1s����1�u�?�X��G������'�w����đ�>!�A�G����j�%����#߅���7�}������t2��׏(����(:����'Ə>�Ra2`r�e���Hp�gRy��&Qd��(pΰ,yi���e�P���8�$⒒HS������������h�x�N��)Gܦ�\���#��� x�[��~0����qu\l3���i�cZKPH�`��8���F&ⵉS��P��5U�.��f��ҩdMd�9	#R��ѡ`06S�+P��L��/���M��������z�Φ3kߎ_ک?�����G�?�����W�� ��]q���QcŅ1�0�:�
�*��G���E}��.�/�����W�Cߵ�q��v
���q�d5Z
��a���9��0��v6�P�R�;�gÙ�q!�.�坫"wgUx�):��q�"`0�� 쨴�J�%�2�6,_\����q׶X;BZp.�1�q8�w��/��vg�;���eӌC�ܻ(L�FܹUԝ��vgQD�β�U��R�L��Ȣ$V$��܎b�".���u���Ў���z���Κ��;��Ey7�]L�0�Ӧw��ø��En����E����f������iwc�Q[�MG������µv�/G14����qZ~�vta����6o�ߺ3;Y|��:����!5[K�V�W#l�.P���,"�%��A�UB�Q��*.��lZ�N��Y�U��ɰ���xڎ[�����z��[��0��Sm�&��5p���pS�3� .�c�)J��8�5@�4��l�qe擩���b����X�p|^v��z���,,��LkB{v�0�n�M^�n?�Q:e#�'����w����(�Ty����8V�c�m�:9����`�}�������l\=���o�u�b��#�	�)nư�"���(M��0���8���X�`W�;��5IDp��` G)	��(1��T�zR���6,�E��YcFtP��ǫ�~���2D�5?�7>���[V=�a׻�r h�ɺ�pE�3�.4'R��P���'�� ���Lx��3��g��=�q��&�8姙Og�껃b�q^�h�C`�_`�.z6	�L����jz�lۧ&&����jrS�3jb��V����%�I���D��VaK0�4WB�MA�Œ�߼h�E.���W҆�<&#��
�9��}G���I�r�)���͇p�y�2��-��hI��K�$r{xBx�M�@�(	2`������͆q�o{�ꅝL2�Xؐ�����}5�q=]��.�n���P�/�/&�:�Fj��nnIwFCa�8�f�#�FV�6���Q����8�^Κ���-�ӁO�׊{H>�&��V덳�jm֥VV�; vL��(����Vg����i����<��$�� ����Zݐ?6���T'�x	J���e�yQZ̻�-ϛ�u�	��M}6�Ղ�ui����5���s��@�G,���sd�Fpg}�n�ra�bu��*^~J����d>�N�0�I�z��ި�;|��0�B�xy�O��f���U-庰���윣%4��,ET��re,2��8ѹ�.���-\l;	ݨ��}��{�MaO�����߻�i46�g���g7̧�#�I�#��.��PQ+�~�oIwf�O����X{!����Bg�*�x�m�V����">����Y;)q�݇=��<���.�G���Z+I=�Q:�4g!:��x�	���k�a)��|�R���J;��� E��U9��H*ͤ�|I�ϫc�a�껷64m����Kr>v]u2�� Q���ѫ�{��9-����jX�-�E�<1���^�]Y)�1F[j��3���)�C!���R)��q�5�kr�ҝQc!�a���"��A.����\��a >��9Q;��2�����*�M��{�΍�,��j����n?�NEUw*�>����I [ڐd�%)�6�auԤ�c� ym/�꯰�ƛB�sIJ>xX���� �Z������ހ0DIJ���ǴJi���TK��]�@u�7�ῄ-`j���_�G�-(��t�����	��t�xOcO�#�Ar�	��}ռ?�.�r����?}�����gA�#f�ZKu���Wk��	�WA�p�$P`t`D�x�����i]��o�]�+N��v\���I3/%8�������^[@i-p�����C�H�I�}�)'E��i�\�la�o~(U3������ ��18�^�̺�ʵ�퇔GE���aD��8��"�_��m��4�z�~X��l�)p����|�5�k�oVoH����O�!Z5�,4�+��u�I�YyN�̦��찫^��h;.^m�-PU�~���~l?�n?��
�Q����2�+%���A�(cIQe��/�V>`z L�M�i�ƫſk�ۏ��БXƐL�V��;f))��\?3�W��X~|	�����O��C��Y��j��?�a���t����.�BXfB�!&7ؖu#������zW�wo��8y����+�B�^�uC���J!�b���
���. Oq�R��~ؾ�����zt� 4)ΐH�c[Y�����[�퇓I��x�`[pրi��$N�d�>'��\�J"�q���O2�Zg=(T �1)�w�a��u�G��x]���tg�?�J�$,jr�"����g�;c`yI e�׳����ʞƏ�I�L���j�]~+*ϐk`a,TJ����Ȓ�����w���5�	���<~��M-�ӺU��,,�6x'rsLN�3�$2�)ͬ�8�%�<n�����"���������Z��n����%[o%oK�Y��4>@�	�
�l�1��^	��2�T:���������e����R�j�����������,�(�n��3�����$W��S��:��wɢ\��x�Y&#28��5�\���k�7;e����/5��ㇷ�t�&�'���E�KK�]CsQJ�󈸠l�%Ǎ�B~����$q��N�>'����r��j. �u��i�q�]�:q���`�u�ɖ����"Ɉ�4j�|O��5�w�������_�~�ȏo�ݰ�Y��づT�O!���n�ɩ ��Q�r��aɭ�:�L^I̯�W�X���}(���������1�Bx�w�Wn!�}we'�4FG�Q���lCE�Jl$7��$���א�_�݇��m3?����o�@ܶ��ZJ)H9�1���B��#�4�O�ۨ��)�m�ؗ�ǒSl�i㫃a{y�A��w�;�/�h��=���9;#�-]��>����Tr���A%��cp�R���,�L0(w4��55������,^�l����LWz�H�Rq W�O�RNk�w�7��D�ȅ1krA=��'Fb�ƈ�i�g5�� ����|��仏�o��w�򢤏�F�K)D�ך�3C�b%����Y)R�$��9E�*�!������^�?k濼	��h|����9���YR��,t��f6))�D���ۡ$A	H6q�ay]`�	�ϫ,��m��?����g��l��պc���g��km�
��E,%�8�	�R	{G�U*�E�r]�x����^�:x���Ą���y�nzm\^��#�kb�`�	��[i!li�"�H��4F{�=�S�_��rhq�Ǯrh�U��6�q�'�Ds�h��vi$�[��p�)ݝ�L)q+��%�m��HY9eZh]���8�n�L��/�Us�S;���|SxK�z���ӊ�ƣ/�wK����`@�@�a�cr�
RZ̤��E�>�ɴ��(��w��� g=$�d�.9�%�fd�έ�n?ȂR��H)��BVx����EEY�毦������a P���ݖ� ���9F���7Bp8h� �ԑE��x�����Ć�𲜶P�7�A5�W�τ���Ƈ \Mz����D� �  <���EI�����f5c=��H��ͤ�o>V48b$��T��J��|�!�����T	��-/�������������6!j�`rd}L!+��Z>�fٽW�vr������j�r.%U��R�O"nI��D��"����rdp4(���tQ�t�P�H�H�^-f�.-�!�~|��΋ �*d#A��R����F��櫎�o4Ü�<�:�.#��.��p���,QC�q��Z��(	��K�.U7�,��漩����}S�����Dj}}i�M��t�s��c�p���\n�r#%W�xꐴB'.96��rʴLO6��zَ����S0�����},ql]��Z�����.�j8�j@�0ʢP���;z�Rx�L@��&7$? Z��45]��t�y�ImzH�m��CK�嶞d2������S�ƋOR���ơ:�
��0�g�ɬ��
��+o8��ՋY�J7�&&"�f�g��c�k�c�oK�sIhRXi`�23� �S$"�BHJ�Hq���ѣQ�$�QS���"V��|� dY����T���}oI�X�	>D�ȭ*� '��
A%����gvr^�4!.�Y�9\��5�\W*�o�����ŏ�^�ȅ	R�~m��{B�tw���'bѹ��F�4���+��x��ت^���#���\��<�	��3|��z}
�t���%;��y��3E�B(��:�(�WI�r��m�1��$ӊ#;�� @T�8_w]����������PI�����AQ�$y�0��͚����c�..�/6ŵd��YF�֪�Hߐn?�R2,����;��u�Ia�	@�*�rpq�r�|Д$z���ׯ�N_콪N_�|t��#&�V�׬RVc3��C����i��iɁ]�A8a���ޔ@�];v���kǹY��xqZ�7�g��M�&܏��d"gW�M�(2\����t�16���F$�r)C�a��5�s�\r�g7�"�:ͭ�j�i������d#]֙@ Φ�\0^+�{5F��k�R�L>[&̥��-<0���v��%��.���x;�Rv�،�7��7��*g~;�8��p�|�^���%����oH�n�(��Xg��ωa��u$Z���|q��k?���6��s;~_�O��p�]D?�gճ�y���t��E���z�ӏ|K��x/���+�{�c���@DF�x�Z�2��p����wyoZ�M��D12/>|�������;��ޯ����뷇���z@� �Z�%$�O�Z�V����Ά=�.'6R.Jf� �w���%3�_��^7�Wobn]^�Py���� �&|���1&��7}tK��(S��LH�ݝc�3k������N����lu�\�j�3�ĺ�[�����lte_ Br2��E���ۏ��2�"b�1�k��NA ��I�`�]3m�f?m�S�K|�,��v\1��C ƹ#��u5�S�o�oHw `ɩ��!��՗�cd%�H`��b	c^zr��v���]j'��幟��:�'��r�;d�ʷPY�՚�%�\ָ�v�[��GةĂ�)B��[x�0O�f8'������py3�˘�{���C��%#lzA�g��=UK��8:��&)D�H��yd�r�'u���W��|�r�`GU��/��:�Α{LE������^6�V��0C���	j)D)���n��I�hm꿱�
��/ჷ����_�a~�|n�W�yf���sK Un|pQ`�"���Z�E�X&%5_��\'ݙ�g�hn�q���l�EV���T9�(.��W���z�r�P������X˫pY�D���U��A[!Q�R���~��l�^��3�uҝYT�wi�0"!���e��C�8�-� ��_��ŭ}і���^�2؀9w�9I��߸�<p�o��27-0�b��Iwf��	;� V�i�̨aW��Vaj��-�e�񰛐��l1f�"�8F��	��J��|÷�r�rbF�ƽ�$�n�\�KW/E\+�w)�_���,�~      L   b  x��ԽnTA�~��*͂�W����KE�b%H$vC?�C�hѾ?7Y))B���)�l�n��_���p;�<���W���|��}�>��8>�ݷé�^W�׏���ӛ-#3�ʂ��0g�w����S�u
�p	�PJt0�ѕt����Z��#@���3X]� k��}�a�{a�By΁.j��ո�R��@j�P��dM�S+:^�&KT%"HZ���Y��g��r�'Z0΄�毴���G҄ �m�0�_��k3���F��0+��*H��+�Z9qI��]8.�r	�(��={F�T�9�u/J7�Ԅ�&���C��.�-�7�uk|���𵤑��k�<��m6��5xS      M   #  x���MK1�{���*:�L2�f֓�
�Z�m��SEe���[���$����/�����/WW��.l7���v��C�r�m�Ӵ�9_�g}uT�Ph�Z`MΙ1'!�ȱ>��ˇ��_��r�X�w�J!`[��P:���N�o·�	�x�Z�F'`)
�	Cb��.��}U�:��&�q?NB1�*ʪ�������d�;�����Xk%�2
!��*CI�����M����K�P����"���Z�.�62���|�����I�LG�qZ ���1�d�
%�݇      N   �   x����
�0F�>E�(z�Mr�6urp(�
��科��`}+8�|8p���zV�����2��>L�x=��i�w[��ɺ�0��@6I��%�D
CT)�׌�!��eza{l��r�R�@@Ä�PT��F�"���V�
u.��ع��䔷�h �%����b�i%����dY�]?k      O   �   x��ϽN1����Js ��^�n�(R�A�.�^���rEDt����Ӎf���ø���p�>�e�e.���R˜�����K}_�s��s9����z};�G�УF�AG�zg�·��OZ������(6Tp!Y`K<���f0�~�ئP�\��!.�)�j����`��2U�C�:KeҚ�F�l������@�T��O�	���jNH(7K�� �.�&      P   �   x����j�@�{=��F	Ɋ۽�?�J��A(��O�wĠ� ��QB�@ ���o���8�ߎ�0_��6/����kɗ�L���m)�N����~RwmI^�+"$�.�M�`#b�R+�oU���5}
�D�t��x���W�{�޺�"?h����{����7]c
�A�f�+A�A���bjv_�j2s��`g��,�j�v��P-9p�w���i��O�      Q   q  x���Mk1�Œ��Y������C�B�>I��8���R�߳��b����#��A������n����==矣�S��n����E��f����.�X���2P��!���6�=R\^w��������j!�^=����S�LVPs�%�avܽ�S-o�"X�w6���M��1'S2=&�0��i1-I��\"5�Ca&���z9̅"68ȁ#p���������4?�m���q���X}�2�gQ �m�3�G��*y���پQJyw�A��-E��hk�z����Y�&�
��% s���#`��b���/2[��RWU�[� �x��(M�������6���i7X��gY��;�W8W�)      R   �   x����
1D���tQ�J7�D+aY�]�� "���"hc��́3̶�6��m�~�.�x�b,�po�n��Mx䃫-$�3�'�y���Eʚ�|�x.���ZʫC�ǋ�C�|�+�H�2�B.�_Wτ������^s��A$���EQI�������z%
F�      S   �  x���[o�0����@ʦ-��v��v��� � ۝��pH�F��K�A�u*7�lK��~�ӏ'W������[��,h��n�����j��UH0�-��0a��2��A�4����x6<�~�.����O~�k�o>�	O{ݶ�a6���H�yR���f�%6�$��Ʒ�N~�b����l����9�](8!Rrd��Nj(�U�3�d&��>�Px(� ����t���Wm��JY��R�U�fU�N�������_8{��w��+0mE@���v��c�a�I�}�Y{������Q���v�]ڪX=�GF�7���L'u�Sl�u� ��d��E��*�������oi�ɏ�:� ��2j�Fp��q����%
��+FQ�B �F�����a�ͺ^��l�ղ��Y��|T�A��(�""��B؉�C*���"��ߚ�i��t� dd�     