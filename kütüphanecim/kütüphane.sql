PGDMP         ;                x            odev4    12.3    12.3 m    †           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            °           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            ¢           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            £           1262    41092    odev4    DATABASE     á   CREATE DATABASE odev4 WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'Turkish_Turkey.1254' LC_CTYPE = 'Turkish_Turkey.1254';
    DROP DATABASE odev4;
                postgres    false            ◊            1259    41146    admins    TABLE     ¿   CREATE TABLE public.admins (
    admin_id integer NOT NULL,
    admin_kad character varying(20),
    admin_password character varying(500),
    admin_updated_at timestamp without time zone
);
    DROP TABLE public.admins;
       public         heap    postgres    false            ÷            1259    41144    admins_admin_id_seq    SEQUENCE     ã   CREATE SEQUENCE public.admins_admin_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.admins_admin_id_seq;
       public          postgres    false    215            §           0    0    admins_admin_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.admins_admin_id_seq OWNED BY public.admins.admin_id;
          public          postgres    false    214            œ            1259    41111    alinan_kitap    TABLE     Z   CREATE TABLE public.alinan_kitap (
    al_id integer NOT NULL,
    al_kitap_id integer
);
     DROP TABLE public.alinan_kitap;
       public         heap    postgres    false            Œ            1259    41109    alinan_kitap_al_id_seq    SEQUENCE     é   CREATE SEQUENCE public.alinan_kitap_al_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.alinan_kitap_al_id_seq;
       public          postgres    false    207            •           0    0    alinan_kitap_al_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.alinan_kitap_al_id_seq OWNED BY public.alinan_kitap.al_id;
          public          postgres    false    206            ﬂ            1259    41181    bakim    TABLE     U   CREATE TABLE public.bakim (
    bakim_id integer NOT NULL,
    b_kitap_id integer
);
    DROP TABLE public.bakim;
       public         heap    postgres    false            ﬁ            1259    41179    bakim_bakim_id_seq    SEQUENCE     ä   CREATE SEQUENCE public.bakim_bakim_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.bakim_bakim_id_seq;
       public          postgres    false    223            ¶           0    0    bakim_bakim_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.bakim_bakim_id_seq OWNED BY public.bakim.bakim_id;
          public          postgres    false    222            Ÿ            1259    41157    hediye    TABLE     o   CREATE TABLE public.hediye (
    puan_id integer NOT NULL,
    puan_miktar integer,
    puan_uye_id integer
);
    DROP TABLE public.hediye;
       public         heap    postgres    false            ÿ            1259    41155    hediye_puan_id_seq    SEQUENCE     ä   CREATE SEQUENCE public.hediye_puan_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.hediye_puan_id_seq;
       public          postgres    false    217            ß           0    0    hediye_puan_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.hediye_puan_id_seq OWNED BY public.hediye.puan_id;
          public          postgres    false    216            Õ            1259    41103    kategori    TABLE     `   CREATE TABLE public.kategori (
    kat_id integer NOT NULL,
    kat_ad character varying(20)
);
    DROP TABLE public.kategori;
       public         heap    postgres    false            Ã            1259    41101    kategori_kat_id_seq    SEQUENCE     ã   CREATE SEQUENCE public.kategori_kat_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.kategori_kat_id_seq;
       public          postgres    false    205            ®           0    0    kategori_kat_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.kategori_kat_id_seq OWNED BY public.kategori.kat_id;
          public          postgres    false    204            —            1259    41119    kitap    TABLE     ã   CREATE TABLE public.kitap (
    kitap_id integer NOT NULL,
    kitap_ad character varying(20),
    katag_id integer,
    tur_id integer
);
    DROP TABLE public.kitap;
       public         heap    postgres    false            –            1259    41117    kitap_kitap_id_seq    SEQUENCE     ä   CREATE SEQUENCE public.kitap_kitap_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.kitap_kitap_id_seq;
       public          postgres    false    209            ©           0    0    kitap_kitap_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.kitap_kitap_id_seq OWNED BY public.kitap.kitap_id;
          public          postgres    false    208            Á            1259    41213    kul_kit    TABLE     j   CREATE TABLE public.kul_kit (
    kk_id integer NOT NULL,
    kk_kul_id integer,
    kk_kit_id integer
);
    DROP TABLE public.kul_kit;
       public         heap    postgres    false            Ê            1259    41211    kul_kit_kk_id_seq    SEQUENCE     â   CREATE SEQUENCE public.kul_kit_kk_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.kul_kit_kk_id_seq;
       public          postgres    false    231            ™           0    0    kul_kit_kk_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.kul_kit_kk_id_seq OWNED BY public.kul_kit.kk_id;
          public          postgres    false    230            ’            1259    41138 	   kullanici    TABLE        CREATE TABLE public.kullanici (
    k_id integer NOT NULL,
    k_ad character varying(20),
    k_pass character varying(20)
);
    DROP TABLE public.kullanici;
       public         heap    postgres    false            ‘            1259    41136    kullanici_k_id_seq    SEQUENCE     ä   CREATE SEQUENCE public.kullanici_k_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.kullanici_k_id_seq;
       public          postgres    false    213            ´           0    0    kullanici_k_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.kullanici_k_id_seq OWNED BY public.kullanici.k_id;
          public          postgres    false    212            ›            1259    41173    stok    TABLE     o   CREATE TABLE public.stok (
    stok_id integer NOT NULL,
    stok_kitap_id integer,
    stok_miktar integer
);
    DROP TABLE public.stok;
       public         heap    postgres    false            ·            1259    41189 	   stok_iade    TABLE     d   CREATE TABLE public.stok_iade (
    stok__iade_id integer NOT NULL,
    stok_iade_miktar integer
);
    DROP TABLE public.stok_iade;
       public         heap    postgres    false            ‡            1259    41187    stok_iade_stok__iade_id_seq    SEQUENCE     ì   CREATE SEQUENCE public.stok_iade_stok__iade_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.stok_iade_stok__iade_id_seq;
       public          postgres    false    225            ¨           0    0    stok_iade_stok__iade_id_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.stok_iade_stok__iade_id_seq OWNED BY public.stok_iade.stok__iade_id;
          public          postgres    false    224            „            1259    41197    stok_ihtiyac    TABLE     Ä   CREATE TABLE public.stok_ihtiyac (
    stok_ihtiyac_id integer NOT NULL,
    ihtiyac_miktar integer,
    ih_kitap_id integer
);
     DROP TABLE public.stok_ihtiyac;
       public         heap    postgres    false            ‚            1259    41195     stok_ihtiyac_stok_ihtiyac_id_seq    SEQUENCE     ò   CREATE SEQUENCE public.stok_ihtiyac_stok_ihtiyac_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public.stok_ihtiyac_stok_ihtiyac_id_seq;
       public          postgres    false    227            ≠           0    0     stok_ihtiyac_stok_ihtiyac_id_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE public.stok_ihtiyac_stok_ihtiyac_id_seq OWNED BY public.stok_ihtiyac.stok_ihtiyac_id;
          public          postgres    false    226            ‹            1259    41171    stok_stok_id_seq    SEQUENCE     à   CREATE SEQUENCE public.stok_stok_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.stok_stok_id_seq;
       public          postgres    false    221            Æ           0    0    stok_stok_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.stok_stok_id_seq OWNED BY public.stok.stok_id;
          public          postgres    false    220            À            1259    41095    tur    TABLE     [   CREATE TABLE public.tur (
    tur_id integer NOT NULL,
    tur_ad character varying(20)
);
    DROP TABLE public.tur;
       public         heap    postgres    false                         1259    41093    tur_tur_id_seq    SEQUENCE     Ü   CREATE SEQUENCE public.tur_tur_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.tur_tur_id_seq;
       public          postgres    false    203            Ø           0    0    tur_tur_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.tur_tur_id_seq OWNED BY public.tur.tur_id;
          public          postgres    false    202            €            1259    41165    uye    TABLE     [   CREATE TABLE public.uye (
    uye_id integer NOT NULL,
    uye_ad character varying(20)
);
    DROP TABLE public.uye;
       public         heap    postgres    false            Â            1259    41205 	   uye_kitap    TABLE     n   CREATE TABLE public.uye_kitap (
    uk_id integer NOT NULL,
    uk_uye_id integer,
    uk_kitap_id integer
);
    DROP TABLE public.uye_kitap;
       public         heap    postgres    false            ‰            1259    41203    uye_kitap_uk_id_seq    SEQUENCE     ã   CREATE SEQUENCE public.uye_kitap_uk_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.uye_kitap_uk_id_seq;
       public          postgres    false    229            ∞           0    0    uye_kitap_uk_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.uye_kitap_uk_id_seq OWNED BY public.uye_kitap.uk_id;
          public          postgres    false    228            ⁄            1259    41163    uye_uye_id_seq    SEQUENCE     Ü   CREATE SEQUENCE public.uye_uye_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.uye_uye_id_seq;
       public          postgres    false    219            ±           0    0    uye_uye_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.uye_uye_id_seq OWNED BY public.uye.uye_id;
          public          postgres    false    218            ”            1259    41130 	   ver_kitap    TABLE     Y   CREATE TABLE public.ver_kitap (
    ver_id integer NOT NULL,
    ver_kitap_id integer
);
    DROP TABLE public.ver_kitap;
       public         heap    postgres    false            “            1259    41128    ver_kitap_ver_id_seq    SEQUENCE     å   CREATE SEQUENCE public.ver_kitap_ver_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.ver_kitap_ver_id_seq;
       public          postgres    false    211            ≤           0    0    ver_kitap_ver_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.ver_kitap_ver_id_seq OWNED BY public.ver_kitap.ver_id;
          public          postgres    false    210            €
           2604    41149    admins admin_id    DEFAULT     r   ALTER TABLE ONLY public.admins ALTER COLUMN admin_id SET DEFAULT nextval('public.admins_admin_id_seq'::regclass);
 >   ALTER TABLE public.admins ALTER COLUMN admin_id DROP DEFAULT;
       public          postgres    false    215    214    215            ◊
           2604    41114    alinan_kitap al_id    DEFAULT     x   ALTER TABLE ONLY public.alinan_kitap ALTER COLUMN al_id SET DEFAULT nextval('public.alinan_kitap_al_id_seq'::regclass);
 A   ALTER TABLE public.alinan_kitap ALTER COLUMN al_id DROP DEFAULT;
       public          postgres    false    206    207    207            ﬂ
           2604    41184    bakim bakim_id    DEFAULT     p   ALTER TABLE ONLY public.bakim ALTER COLUMN bakim_id SET DEFAULT nextval('public.bakim_bakim_id_seq'::regclass);
 =   ALTER TABLE public.bakim ALTER COLUMN bakim_id DROP DEFAULT;
       public          postgres    false    222    223    223            ‹
           2604    41160    hediye puan_id    DEFAULT     p   ALTER TABLE ONLY public.hediye ALTER COLUMN puan_id SET DEFAULT nextval('public.hediye_puan_id_seq'::regclass);
 =   ALTER TABLE public.hediye ALTER COLUMN puan_id DROP DEFAULT;
       public          postgres    false    217    216    217            ÷
           2604    41106    kategori kat_id    DEFAULT     r   ALTER TABLE ONLY public.kategori ALTER COLUMN kat_id SET DEFAULT nextval('public.kategori_kat_id_seq'::regclass);
 >   ALTER TABLE public.kategori ALTER COLUMN kat_id DROP DEFAULT;
       public          postgres    false    205    204    205            ÿ
           2604    41122    kitap kitap_id    DEFAULT     p   ALTER TABLE ONLY public.kitap ALTER COLUMN kitap_id SET DEFAULT nextval('public.kitap_kitap_id_seq'::regclass);
 =   ALTER TABLE public.kitap ALTER COLUMN kitap_id DROP DEFAULT;
       public          postgres    false    208    209    209            „
           2604    41216    kul_kit kk_id    DEFAULT     n   ALTER TABLE ONLY public.kul_kit ALTER COLUMN kk_id SET DEFAULT nextval('public.kul_kit_kk_id_seq'::regclass);
 <   ALTER TABLE public.kul_kit ALTER COLUMN kk_id DROP DEFAULT;
       public          postgres    false    230    231    231            ⁄
           2604    41141    kullanici k_id    DEFAULT     p   ALTER TABLE ONLY public.kullanici ALTER COLUMN k_id SET DEFAULT nextval('public.kullanici_k_id_seq'::regclass);
 =   ALTER TABLE public.kullanici ALTER COLUMN k_id DROP DEFAULT;
       public          postgres    false    212    213    213            ﬁ
           2604    41176    stok stok_id    DEFAULT     l   ALTER TABLE ONLY public.stok ALTER COLUMN stok_id SET DEFAULT nextval('public.stok_stok_id_seq'::regclass);
 ;   ALTER TABLE public.stok ALTER COLUMN stok_id DROP DEFAULT;
       public          postgres    false    221    220    221            ‡
           2604    41192    stok_iade stok__iade_id    DEFAULT     Ç   ALTER TABLE ONLY public.stok_iade ALTER COLUMN stok__iade_id SET DEFAULT nextval('public.stok_iade_stok__iade_id_seq'::regclass);
 F   ALTER TABLE public.stok_iade ALTER COLUMN stok__iade_id DROP DEFAULT;
       public          postgres    false    225    224    225            ·
           2604    41200    stok_ihtiyac stok_ihtiyac_id    DEFAULT     å   ALTER TABLE ONLY public.stok_ihtiyac ALTER COLUMN stok_ihtiyac_id SET DEFAULT nextval('public.stok_ihtiyac_stok_ihtiyac_id_seq'::regclass);
 K   ALTER TABLE public.stok_ihtiyac ALTER COLUMN stok_ihtiyac_id DROP DEFAULT;
       public          postgres    false    226    227    227            ’
           2604    41098 
   tur tur_id    DEFAULT     h   ALTER TABLE ONLY public.tur ALTER COLUMN tur_id SET DEFAULT nextval('public.tur_tur_id_seq'::regclass);
 9   ALTER TABLE public.tur ALTER COLUMN tur_id DROP DEFAULT;
       public          postgres    false    202    203    203            ›
           2604    41168 
   uye uye_id    DEFAULT     h   ALTER TABLE ONLY public.uye ALTER COLUMN uye_id SET DEFAULT nextval('public.uye_uye_id_seq'::regclass);
 9   ALTER TABLE public.uye ALTER COLUMN uye_id DROP DEFAULT;
       public          postgres    false    218    219    219            ‚
           2604    41208    uye_kitap uk_id    DEFAULT     r   ALTER TABLE ONLY public.uye_kitap ALTER COLUMN uk_id SET DEFAULT nextval('public.uye_kitap_uk_id_seq'::regclass);
 >   ALTER TABLE public.uye_kitap ALTER COLUMN uk_id DROP DEFAULT;
       public          postgres    false    228    229    229            Ÿ
           2604    41133    ver_kitap ver_id    DEFAULT     t   ALTER TABLE ONLY public.ver_kitap ALTER COLUMN ver_id SET DEFAULT nextval('public.ver_kitap_ver_id_seq'::regclass);
 ?   ALTER TABLE public.ver_kitap ALTER COLUMN ver_id DROP DEFAULT;
       public          postgres    false    211    210    211            ç          0    41146    admins 
   TABLE DATA           W   COPY public.admins (admin_id, admin_kad, admin_password, admin_updated_at) FROM stdin;
    public          postgres    false    215   zr       Ö          0    41111    alinan_kitap 
   TABLE DATA           :   COPY public.alinan_kitap (al_id, al_kitap_id) FROM stdin;
    public          postgres    false    207   ór       ï          0    41181    bakim 
   TABLE DATA           5   COPY public.bakim (bakim_id, b_kitap_id) FROM stdin;
    public          postgres    false    223   ¥r       è          0    41157    hediye 
   TABLE DATA           C   COPY public.hediye (puan_id, puan_miktar, puan_uye_id) FROM stdin;
    public          postgres    false    217   —r       É          0    41103    kategori 
   TABLE DATA           2   COPY public.kategori (kat_id, kat_ad) FROM stdin;
    public          postgres    false    205   Ór       á          0    41119    kitap 
   TABLE DATA           E   COPY public.kitap (kitap_id, kitap_ad, katag_id, tur_id) FROM stdin;
    public          postgres    false    209   s       ù          0    41213    kul_kit 
   TABLE DATA           >   COPY public.kul_kit (kk_id, kk_kul_id, kk_kit_id) FROM stdin;
    public          postgres    false    231   Rs       ã          0    41138 	   kullanici 
   TABLE DATA           7   COPY public.kullanici (k_id, k_ad, k_pass) FROM stdin;
    public          postgres    false    213   os       ì          0    41173    stok 
   TABLE DATA           C   COPY public.stok (stok_id, stok_kitap_id, stok_miktar) FROM stdin;
    public          postgres    false    221   ¢s       ó          0    41189 	   stok_iade 
   TABLE DATA           D   COPY public.stok_iade (stok__iade_id, stok_iade_miktar) FROM stdin;
    public          postgres    false    225   øs       ô          0    41197    stok_ihtiyac 
   TABLE DATA           T   COPY public.stok_ihtiyac (stok_ihtiyac_id, ihtiyac_miktar, ih_kitap_id) FROM stdin;
    public          postgres    false    227   ‹s       Å          0    41095    tur 
   TABLE DATA           -   COPY public.tur (tur_id, tur_ad) FROM stdin;
    public          postgres    false    203   t       ë          0    41165    uye 
   TABLE DATA           -   COPY public.uye (uye_id, uye_ad) FROM stdin;
    public          postgres    false    219   -t       õ          0    41205 	   uye_kitap 
   TABLE DATA           B   COPY public.uye_kitap (uk_id, uk_uye_id, uk_kitap_id) FROM stdin;
    public          postgres    false    229   Jt       â          0    41130 	   ver_kitap 
   TABLE DATA           9   COPY public.ver_kitap (ver_id, ver_kitap_id) FROM stdin;
    public          postgres    false    211   gt       ≥           0    0    admins_admin_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.admins_admin_id_seq', 1, false);
          public          postgres    false    214            ¥           0    0    alinan_kitap_al_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.alinan_kitap_al_id_seq', 1, false);
          public          postgres    false    206            µ           0    0    bakim_bakim_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.bakim_bakim_id_seq', 1, false);
          public          postgres    false    222            ∂           0    0    hediye_puan_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.hediye_puan_id_seq', 1, false);
          public          postgres    false    216            ∑           0    0    kategori_kat_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.kategori_kat_id_seq', 1, true);
          public          postgres    false    204            ∏           0    0    kitap_kitap_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.kitap_kitap_id_seq', 4, true);
          public          postgres    false    208            π           0    0    kul_kit_kk_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.kul_kit_kk_id_seq', 1, false);
          public          postgres    false    230            ∫           0    0    kullanici_k_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.kullanici_k_id_seq', 2, true);
          public          postgres    false    212            ª           0    0    stok_iade_stok__iade_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.stok_iade_stok__iade_id_seq', 1, false);
          public          postgres    false    224            º           0    0     stok_ihtiyac_stok_ihtiyac_id_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public.stok_ihtiyac_stok_ihtiyac_id_seq', 3, true);
          public          postgres    false    226            Ω           0    0    stok_stok_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.stok_stok_id_seq', 1, false);
          public          postgres    false    220            æ           0    0    tur_tur_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.tur_tur_id_seq', 1, true);
          public          postgres    false    202            ø           0    0    uye_kitap_uk_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.uye_kitap_uk_id_seq', 1, false);
          public          postgres    false    228            ¿           0    0    uye_uye_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.uye_uye_id_seq', 1, true);
          public          postgres    false    218            ¡           0    0    ver_kitap_ver_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.ver_kitap_ver_id_seq', 1, false);
          public          postgres    false    210            Ò
           2606    41154    admins admins_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.admins
    ADD CONSTRAINT admins_pkey PRIMARY KEY (admin_id);
 <   ALTER TABLE ONLY public.admins DROP CONSTRAINT admins_pkey;
       public            postgres    false    215            È
           2606    41116    alinan_kitap alinan_kitap_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY public.alinan_kitap
    ADD CONSTRAINT alinan_kitap_pkey PRIMARY KEY (al_id);
 H   ALTER TABLE ONLY public.alinan_kitap DROP CONSTRAINT alinan_kitap_pkey;
       public            postgres    false    207            ˘
           2606    41186    bakim bakim_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.bakim
    ADD CONSTRAINT bakim_pkey PRIMARY KEY (bakim_id);
 :   ALTER TABLE ONLY public.bakim DROP CONSTRAINT bakim_pkey;
       public            postgres    false    223            Û
           2606    41162    hediye hediye_pkey 
   CONSTRAINT     U   ALTER TABLE ONLY public.hediye
    ADD CONSTRAINT hediye_pkey PRIMARY KEY (puan_id);
 <   ALTER TABLE ONLY public.hediye DROP CONSTRAINT hediye_pkey;
       public            postgres    false    217            Á
           2606    41108    kategori kategori_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.kategori
    ADD CONSTRAINT kategori_pkey PRIMARY KEY (kat_id);
 @   ALTER TABLE ONLY public.kategori DROP CONSTRAINT kategori_pkey;
       public            postgres    false    205            Î
           2606    41127    kitap kitap_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.kitap
    ADD CONSTRAINT kitap_pkey PRIMARY KEY (kitap_id);
 :   ALTER TABLE ONLY public.kitap DROP CONSTRAINT kitap_pkey;
       public            postgres    false    209                       2606    41218    kul_kit kul_kit_pkey 
   CONSTRAINT     U   ALTER TABLE ONLY public.kul_kit
    ADD CONSTRAINT kul_kit_pkey PRIMARY KEY (kk_id);
 >   ALTER TABLE ONLY public.kul_kit DROP CONSTRAINT kul_kit_pkey;
       public            postgres    false    231            Ô
           2606    41143    kullanici kullanici_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.kullanici
    ADD CONSTRAINT kullanici_pkey PRIMARY KEY (k_id);
 B   ALTER TABLE ONLY public.kullanici DROP CONSTRAINT kullanici_pkey;
       public            postgres    false    213            ˚
           2606    41194    stok_iade stok_iade_pkey 
   CONSTRAINT     a   ALTER TABLE ONLY public.stok_iade
    ADD CONSTRAINT stok_iade_pkey PRIMARY KEY (stok__iade_id);
 B   ALTER TABLE ONLY public.stok_iade DROP CONSTRAINT stok_iade_pkey;
       public            postgres    false    225            ˝
           2606    41202    stok_ihtiyac stok_ihtiyac_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.stok_ihtiyac
    ADD CONSTRAINT stok_ihtiyac_pkey PRIMARY KEY (stok_ihtiyac_id);
 H   ALTER TABLE ONLY public.stok_ihtiyac DROP CONSTRAINT stok_ihtiyac_pkey;
       public            postgres    false    227            ˜
           2606    41178    stok stok_pkey 
   CONSTRAINT     Q   ALTER TABLE ONLY public.stok
    ADD CONSTRAINT stok_pkey PRIMARY KEY (stok_id);
 8   ALTER TABLE ONLY public.stok DROP CONSTRAINT stok_pkey;
       public            postgres    false    221            Â
           2606    41100    tur tur_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.tur
    ADD CONSTRAINT tur_pkey PRIMARY KEY (tur_id);
 6   ALTER TABLE ONLY public.tur DROP CONSTRAINT tur_pkey;
       public            postgres    false    203            ˇ
           2606    41210    uye_kitap uye_kitap_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY public.uye_kitap
    ADD CONSTRAINT uye_kitap_pkey PRIMARY KEY (uk_id);
 B   ALTER TABLE ONLY public.uye_kitap DROP CONSTRAINT uye_kitap_pkey;
       public            postgres    false    229            ı
           2606    41170    uye uye_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.uye
    ADD CONSTRAINT uye_pkey PRIMARY KEY (uye_id);
 6   ALTER TABLE ONLY public.uye DROP CONSTRAINT uye_pkey;
       public            postgres    false    219            Ì
           2606    41135    ver_kitap ver_kitap_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.ver_kitap
    ADD CONSTRAINT ver_kitap_pkey PRIMARY KEY (ver_id);
 B   ALTER TABLE ONLY public.ver_kitap DROP CONSTRAINT ver_kitap_pkey;
       public            postgres    false    211            ç      xúã—„‚‚ ≈ ©      Ö      xúã—„‚‚ ≈ ©      ï      xúã—„‚‚ ≈ ©      è      xúã—„‚‚ ≈ ©      É      xú3‰t Ã…ÃU.-J/Âä—„‚‚ 7ô      á   )   xú3‚442"NCNC.c(¿|NSCC#∏ä=... ◊ƒˆ      ù      xúã—„‚‚ ≈ ©      ã   #   xú3‰LL…ÕÃ„L,IÃNÃK™2Ã544‰ä—„‚‚ vf|      ì      xúã—„‚‚ ≈ ©      ó      xúã—„‚‚ ≈ ©      ô      xú3‰442Ê4‚2Ê46R1z\\\ l£      Å      xú3‰ÙH≠LMNÃ„ä—„‚‚ !v™      ë      xúã—„‚‚ ≈ ©      õ      xúã—„‚‚ ≈ ©      â      xúã—„‚‚ ≈ ©     