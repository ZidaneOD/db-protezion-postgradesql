PGDMP      5        
         |            db_protezione    16.1    16.1 v    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    16980    db_protezione    DATABASE        CREATE DATABASE db_protezione WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Spanish_Peru.1252';
    DROP DATABASE db_protezione;
                postgres    false            �            1259    17107    tb_asistencias    TABLE     g  CREATE TABLE public.tb_asistencias (
    cod_asist integer NOT NULL,
    cod_usua integer,
    fecha_asist date NOT NULL,
    hing_asist time without time zone NOT NULL,
    hsal_asist time without time zone,
    cod_tipo_just integer,
    desc_just_asist character varying(200),
    evid_just_asist character varying(200),
    estado boolean DEFAULT true
);
 "   DROP TABLE public.tb_asistencias;
       public         heap    postgres    false            �            1259    17106    tb_asistencias_cod_asist_seq    SEQUENCE     �   CREATE SEQUENCE public.tb_asistencias_cod_asist_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.tb_asistencias_cod_asist_seq;
       public          postgres    false    235            �           0    0    tb_asistencias_cod_asist_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.tb_asistencias_cod_asist_seq OWNED BY public.tb_asistencias.cod_asist;
          public          postgres    false    234            �            1259    17073    tb_clientes    TABLE     "  CREATE TABLE public.tb_clientes (
    cod_clie integer NOT NULL,
    ruc_clie character(11) NOT NULL,
    usuario character varying(150) NOT NULL,
    pass_clie character varying(150) NOT NULL,
    nomb_clie character varying(150) NOT NULL,
    ape_clie character varying(150) NOT NULL,
    mail_clie character varying(200) NOT NULL,
    telf_clie character(9) NOT NULL,
    fech_creat date DEFAULT CURRENT_DATE,
    fech_modi date,
    cod_tipo_ruta integer,
    cod_tipo_serv integer,
    cod_perfil integer,
    estado boolean DEFAULT true
);
    DROP TABLE public.tb_clientes;
       public         heap    postgres    false            �            1259    17072    tb_clientes_cod_clie_seq    SEQUENCE     �   CREATE SEQUENCE public.tb_clientes_cod_clie_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.tb_clientes_cod_clie_seq;
       public          postgres    false    231            �           0    0    tb_clientes_cod_clie_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.tb_clientes_cod_clie_seq OWNED BY public.tb_clientes.cod_clie;
          public          postgres    false    230            �            1259    16990    tb_contratos    TABLE     (  CREATE TABLE public.tb_contratos (
    cod_contrato integer NOT NULL,
    cod_tipo_contrato integer,
    nomb_contrato character varying(150) NOT NULL,
    desc_contrato character varying(150) NOT NULL,
    inicio_contrato date NOT NULL,
    fin_contrato date,
    estado boolean DEFAULT true
);
     DROP TABLE public.tb_contratos;
       public         heap    postgres    false            �            1259    16989    tb_contratos_cod_contrato_seq    SEQUENCE     �   CREATE SEQUENCE public.tb_contratos_cod_contrato_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.tb_contratos_cod_contrato_seq;
       public          postgres    false    218            �           0    0    tb_contratos_cod_contrato_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.tb_contratos_cod_contrato_seq OWNED BY public.tb_contratos.cod_contrato;
          public          postgres    false    217            �            1259    17176    tb_hist_ind_usua    TABLE     �   CREATE TABLE public.tb_hist_ind_usua (
    cod_usua integer,
    sku_ind character varying(100),
    std_ind_usua character varying(20) NOT NULL,
    estado boolean DEFAULT true
);
 $   DROP TABLE public.tb_hist_ind_usua;
       public         heap    postgres    false            �            1259    17170    tb_indumentarias    TABLE     �   CREATE TABLE public.tb_indumentarias (
    sku_ind character varying(100) NOT NULL,
    nomb_ind character varying(100) NOT NULL,
    talla_ind character(2) NOT NULL,
    estado boolean DEFAULT true
);
 $   DROP TABLE public.tb_indumentarias;
       public         heap    postgres    false            �            1259    17158    tb_informe_averias    TABLE       CREATE TABLE public.tb_informe_averias (
    cod_inf integer NOT NULL,
    cod_ord_trab integer,
    nomb_inf character varying(100) NOT NULL,
    desc_inf character varying(150) NOT NULL,
    evid_inf character varying(200) NOT NULL,
    estado boolean DEFAULT true
);
 &   DROP TABLE public.tb_informe_averias;
       public         heap    postgres    false            �            1259    17157    tb_informe_averias_cod_inf_seq    SEQUENCE     �   CREATE SEQUENCE public.tb_informe_averias_cod_inf_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.tb_informe_averias_cod_inf_seq;
       public          postgres    false    241            �           0    0    tb_informe_averias_cod_inf_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.tb_informe_averias_cod_inf_seq OWNED BY public.tb_informe_averias.cod_inf;
          public          postgres    false    240            �            1259    17012 
   tb_modulos    TABLE       CREATE TABLE public.tb_modulos (
    cod_modul integer NOT NULL,
    nomb_modul character varying(150) NOT NULL,
    desc_modul character varying(150) NOT NULL,
    fech_creat date DEFAULT CURRENT_DATE,
    fech_modi date,
    estado boolean DEFAULT true
);
    DROP TABLE public.tb_modulos;
       public         heap    postgres    false            �            1259    17011    tb_modulos_cod_modul_seq    SEQUENCE     �   CREATE SEQUENCE public.tb_modulos_cod_modul_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.tb_modulos_cod_modul_seq;
       public          postgres    false    222            �           0    0    tb_modulos_cod_modul_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.tb_modulos_cod_modul_seq OWNED BY public.tb_modulos.cod_modul;
          public          postgres    false    221            �            1259    17133    tb_ordenes_trabajos    TABLE     �  CREATE TABLE public.tb_ordenes_trabajos (
    cod_ord_trab integer NOT NULL,
    cod_tipo_ruta integer,
    direc_ord_trab character varying(150) NOT NULL,
    desc_ord_trab character varying(150) NOT NULL,
    cod_usua integer,
    fech_ord_trab timestamp without time zone NOT NULL,
    ini_ord_trab timestamp without time zone,
    fin_ord_trab timestamp without time zone,
    evid_ord_trab character varying(200),
    cod_seg_trab integer,
    estado boolean DEFAULT true
);
 '   DROP TABLE public.tb_ordenes_trabajos;
       public         heap    postgres    false            �            1259    17132 $   tb_ordenes_trabajos_cod_ord_trab_seq    SEQUENCE     �   CREATE SEQUENCE public.tb_ordenes_trabajos_cod_ord_trab_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ;   DROP SEQUENCE public.tb_ordenes_trabajos_cod_ord_trab_seq;
       public          postgres    false    239            �           0    0 $   tb_ordenes_trabajos_cod_ord_trab_seq    SEQUENCE OWNED BY     m   ALTER SEQUENCE public.tb_ordenes_trabajos_cod_ord_trab_seq OWNED BY public.tb_ordenes_trabajos.cod_ord_trab;
          public          postgres    false    238            �            1259    17003    tb_perfiles    TABLE     �   CREATE TABLE public.tb_perfiles (
    cod_perfil integer NOT NULL,
    nomb_perfil character varying(150) NOT NULL,
    fech_creat date DEFAULT CURRENT_DATE,
    fech_modi date,
    estado boolean DEFAULT true
);
    DROP TABLE public.tb_perfiles;
       public         heap    postgres    false            �            1259    17002    tb_perfiles_cod_perfil_seq    SEQUENCE     �   CREATE SEQUENCE public.tb_perfiles_cod_perfil_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.tb_perfiles_cod_perfil_seq;
       public          postgres    false    220            �           0    0    tb_perfiles_cod_perfil_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.tb_perfiles_cod_perfil_seq OWNED BY public.tb_perfiles.cod_perfil;
          public          postgres    false    219            �            1259    17020    tb_permisos    TABLE     �   CREATE TABLE public.tb_permisos (
    cod_perfil integer,
    cod_modul integer,
    fech_creat date DEFAULT CURRENT_DATE,
    fech_modi date,
    estado boolean DEFAULT true
);
    DROP TABLE public.tb_permisos;
       public         heap    postgres    false            �            1259    17125    tb_seguimiento_trabajos    TABLE     �   CREATE TABLE public.tb_seguimiento_trabajos (
    cod_seg_trab integer NOT NULL,
    nomb_seg_trab character varying(100) NOT NULL,
    estado boolean DEFAULT true
);
 +   DROP TABLE public.tb_seguimiento_trabajos;
       public         heap    postgres    false            �            1259    17124 (   tb_seguimiento_trabajos_cod_seg_trab_seq    SEQUENCE     �   CREATE SEQUENCE public.tb_seguimiento_trabajos_cod_seg_trab_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ?   DROP SEQUENCE public.tb_seguimiento_trabajos_cod_seg_trab_seq;
       public          postgres    false    237            �           0    0 (   tb_seguimiento_trabajos_cod_seg_trab_seq    SEQUENCE OWNED BY     u   ALTER SEQUENCE public.tb_seguimiento_trabajos_cod_seg_trab_seq OWNED BY public.tb_seguimiento_trabajos.cod_seg_trab;
          public          postgres    false    236            �            1259    16982    tb_tipo_contrato    TABLE     �   CREATE TABLE public.tb_tipo_contrato (
    cod_tipo_contrato integer NOT NULL,
    nomb_tipo_contrato character varying(100) NOT NULL,
    estado boolean DEFAULT true
);
 $   DROP TABLE public.tb_tipo_contrato;
       public         heap    postgres    false            �            1259    16981 &   tb_tipo_contrato_cod_tipo_contrato_seq    SEQUENCE     �   CREATE SEQUENCE public.tb_tipo_contrato_cod_tipo_contrato_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 =   DROP SEQUENCE public.tb_tipo_contrato_cod_tipo_contrato_seq;
       public          postgres    false    216            �           0    0 &   tb_tipo_contrato_cod_tipo_contrato_seq    SEQUENCE OWNED BY     q   ALTER SEQUENCE public.tb_tipo_contrato_cod_tipo_contrato_seq OWNED BY public.tb_tipo_contrato.cod_tipo_contrato;
          public          postgres    false    215            �            1259    17099    tb_tipo_justificaciones    TABLE     �   CREATE TABLE public.tb_tipo_justificaciones (
    cod_tipo_just integer NOT NULL,
    nomb_just character varying(100),
    estado boolean DEFAULT true
);
 +   DROP TABLE public.tb_tipo_justificaciones;
       public         heap    postgres    false            �            1259    17098 )   tb_tipo_justificaciones_cod_tipo_just_seq    SEQUENCE     �   CREATE SEQUENCE public.tb_tipo_justificaciones_cod_tipo_just_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 @   DROP SEQUENCE public.tb_tipo_justificaciones_cod_tipo_just_seq;
       public          postgres    false    233            �           0    0 )   tb_tipo_justificaciones_cod_tipo_just_seq    SEQUENCE OWNED BY     w   ALTER SEQUENCE public.tb_tipo_justificaciones_cod_tipo_just_seq OWNED BY public.tb_tipo_justificaciones.cod_tipo_just;
          public          postgres    false    232            �            1259    17057    tb_tipo_rutas    TABLE     �   CREATE TABLE public.tb_tipo_rutas (
    cod_tipo_ruta integer NOT NULL,
    nomb_tipo_ruta character varying(100) NOT NULL,
    desc_tipo_ruta character varying(100) NOT NULL,
    estado boolean DEFAULT true
);
 !   DROP TABLE public.tb_tipo_rutas;
       public         heap    postgres    false            �            1259    17056    tb_tipo_rutas_cod_tipo_ruta_seq    SEQUENCE     �   CREATE SEQUENCE public.tb_tipo_rutas_cod_tipo_ruta_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public.tb_tipo_rutas_cod_tipo_ruta_seq;
       public          postgres    false    227            �           0    0    tb_tipo_rutas_cod_tipo_ruta_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public.tb_tipo_rutas_cod_tipo_ruta_seq OWNED BY public.tb_tipo_rutas.cod_tipo_ruta;
          public          postgres    false    226            �            1259    17065    tb_tipo_servicios    TABLE     �   CREATE TABLE public.tb_tipo_servicios (
    cod_tipo_serv integer NOT NULL,
    nomb_tipo_serv character varying(100) NOT NULL,
    desc_tipo_serv character varying(150) NOT NULL,
    estado boolean DEFAULT true
);
 %   DROP TABLE public.tb_tipo_servicios;
       public         heap    postgres    false            �            1259    17064 #   tb_tipo_servicios_cod_tipo_serv_seq    SEQUENCE     �   CREATE SEQUENCE public.tb_tipo_servicios_cod_tipo_serv_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 :   DROP SEQUENCE public.tb_tipo_servicios_cod_tipo_serv_seq;
       public          postgres    false    229            �           0    0 #   tb_tipo_servicios_cod_tipo_serv_seq    SEQUENCE OWNED BY     k   ALTER SEQUENCE public.tb_tipo_servicios_cod_tipo_serv_seq OWNED BY public.tb_tipo_servicios.cod_tipo_serv;
          public          postgres    false    228            �            1259    17036    tb_usuarios    TABLE     �  CREATE TABLE public.tb_usuarios (
    cod_usua integer NOT NULL,
    usuario character varying(150) NOT NULL,
    pass_usua character varying(150) NOT NULL,
    nomb_usua character varying(150) NOT NULL,
    ape_usua character varying(150) NOT NULL,
    mail_usua character varying(200) NOT NULL,
    telf_usua character(9) NOT NULL,
    fech_creat date DEFAULT CURRENT_DATE,
    fech_modi date,
    cod_contrato integer,
    cod_perfil integer,
    estado boolean DEFAULT true
);
    DROP TABLE public.tb_usuarios;
       public         heap    postgres    false            �            1259    17035    tb_usuarios_cod_usua_seq    SEQUENCE     �   CREATE SEQUENCE public.tb_usuarios_cod_usua_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.tb_usuarios_cod_usua_seq;
       public          postgres    false    225            �           0    0    tb_usuarios_cod_usua_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.tb_usuarios_cod_usua_seq OWNED BY public.tb_usuarios.cod_usua;
          public          postgres    false    224            �           2604    17110    tb_asistencias cod_asist    DEFAULT     �   ALTER TABLE ONLY public.tb_asistencias ALTER COLUMN cod_asist SET DEFAULT nextval('public.tb_asistencias_cod_asist_seq'::regclass);
 G   ALTER TABLE public.tb_asistencias ALTER COLUMN cod_asist DROP DEFAULT;
       public          postgres    false    234    235    235            �           2604    17076    tb_clientes cod_clie    DEFAULT     |   ALTER TABLE ONLY public.tb_clientes ALTER COLUMN cod_clie SET DEFAULT nextval('public.tb_clientes_cod_clie_seq'::regclass);
 C   ALTER TABLE public.tb_clientes ALTER COLUMN cod_clie DROP DEFAULT;
       public          postgres    false    230    231    231            �           2604    16993    tb_contratos cod_contrato    DEFAULT     �   ALTER TABLE ONLY public.tb_contratos ALTER COLUMN cod_contrato SET DEFAULT nextval('public.tb_contratos_cod_contrato_seq'::regclass);
 H   ALTER TABLE public.tb_contratos ALTER COLUMN cod_contrato DROP DEFAULT;
       public          postgres    false    218    217    218            �           2604    17161    tb_informe_averias cod_inf    DEFAULT     �   ALTER TABLE ONLY public.tb_informe_averias ALTER COLUMN cod_inf SET DEFAULT nextval('public.tb_informe_averias_cod_inf_seq'::regclass);
 I   ALTER TABLE public.tb_informe_averias ALTER COLUMN cod_inf DROP DEFAULT;
       public          postgres    false    241    240    241            �           2604    17015    tb_modulos cod_modul    DEFAULT     |   ALTER TABLE ONLY public.tb_modulos ALTER COLUMN cod_modul SET DEFAULT nextval('public.tb_modulos_cod_modul_seq'::regclass);
 C   ALTER TABLE public.tb_modulos ALTER COLUMN cod_modul DROP DEFAULT;
       public          postgres    false    222    221    222            �           2604    17136     tb_ordenes_trabajos cod_ord_trab    DEFAULT     �   ALTER TABLE ONLY public.tb_ordenes_trabajos ALTER COLUMN cod_ord_trab SET DEFAULT nextval('public.tb_ordenes_trabajos_cod_ord_trab_seq'::regclass);
 O   ALTER TABLE public.tb_ordenes_trabajos ALTER COLUMN cod_ord_trab DROP DEFAULT;
       public          postgres    false    239    238    239            �           2604    17006    tb_perfiles cod_perfil    DEFAULT     �   ALTER TABLE ONLY public.tb_perfiles ALTER COLUMN cod_perfil SET DEFAULT nextval('public.tb_perfiles_cod_perfil_seq'::regclass);
 E   ALTER TABLE public.tb_perfiles ALTER COLUMN cod_perfil DROP DEFAULT;
       public          postgres    false    220    219    220            �           2604    17128 $   tb_seguimiento_trabajos cod_seg_trab    DEFAULT     �   ALTER TABLE ONLY public.tb_seguimiento_trabajos ALTER COLUMN cod_seg_trab SET DEFAULT nextval('public.tb_seguimiento_trabajos_cod_seg_trab_seq'::regclass);
 S   ALTER TABLE public.tb_seguimiento_trabajos ALTER COLUMN cod_seg_trab DROP DEFAULT;
       public          postgres    false    237    236    237            �           2604    16985 "   tb_tipo_contrato cod_tipo_contrato    DEFAULT     �   ALTER TABLE ONLY public.tb_tipo_contrato ALTER COLUMN cod_tipo_contrato SET DEFAULT nextval('public.tb_tipo_contrato_cod_tipo_contrato_seq'::regclass);
 Q   ALTER TABLE public.tb_tipo_contrato ALTER COLUMN cod_tipo_contrato DROP DEFAULT;
       public          postgres    false    216    215    216            �           2604    17102 %   tb_tipo_justificaciones cod_tipo_just    DEFAULT     �   ALTER TABLE ONLY public.tb_tipo_justificaciones ALTER COLUMN cod_tipo_just SET DEFAULT nextval('public.tb_tipo_justificaciones_cod_tipo_just_seq'::regclass);
 T   ALTER TABLE public.tb_tipo_justificaciones ALTER COLUMN cod_tipo_just DROP DEFAULT;
       public          postgres    false    233    232    233            �           2604    17060    tb_tipo_rutas cod_tipo_ruta    DEFAULT     �   ALTER TABLE ONLY public.tb_tipo_rutas ALTER COLUMN cod_tipo_ruta SET DEFAULT nextval('public.tb_tipo_rutas_cod_tipo_ruta_seq'::regclass);
 J   ALTER TABLE public.tb_tipo_rutas ALTER COLUMN cod_tipo_ruta DROP DEFAULT;
       public          postgres    false    226    227    227            �           2604    17068    tb_tipo_servicios cod_tipo_serv    DEFAULT     �   ALTER TABLE ONLY public.tb_tipo_servicios ALTER COLUMN cod_tipo_serv SET DEFAULT nextval('public.tb_tipo_servicios_cod_tipo_serv_seq'::regclass);
 N   ALTER TABLE public.tb_tipo_servicios ALTER COLUMN cod_tipo_serv DROP DEFAULT;
       public          postgres    false    229    228    229            �           2604    17039    tb_usuarios cod_usua    DEFAULT     |   ALTER TABLE ONLY public.tb_usuarios ALTER COLUMN cod_usua SET DEFAULT nextval('public.tb_usuarios_cod_usua_seq'::regclass);
 C   ALTER TABLE public.tb_usuarios ALTER COLUMN cod_usua DROP DEFAULT;
       public          postgres    false    224    225    225            �          0    17107    tb_asistencias 
   TABLE DATA           �   COPY public.tb_asistencias (cod_asist, cod_usua, fecha_asist, hing_asist, hsal_asist, cod_tipo_just, desc_just_asist, evid_just_asist, estado) FROM stdin;
    public          postgres    false    235   ��       �          0    17073    tb_clientes 
   TABLE DATA           �   COPY public.tb_clientes (cod_clie, ruc_clie, usuario, pass_clie, nomb_clie, ape_clie, mail_clie, telf_clie, fech_creat, fech_modi, cod_tipo_ruta, cod_tipo_serv, cod_perfil, estado) FROM stdin;
    public          postgres    false    231   g�       x          0    16990    tb_contratos 
   TABLE DATA           �   COPY public.tb_contratos (cod_contrato, cod_tipo_contrato, nomb_contrato, desc_contrato, inicio_contrato, fin_contrato, estado) FROM stdin;
    public          postgres    false    218   s�       �          0    17176    tb_hist_ind_usua 
   TABLE DATA           S   COPY public.tb_hist_ind_usua (cod_usua, sku_ind, std_ind_usua, estado) FROM stdin;
    public          postgres    false    243   ��       �          0    17170    tb_indumentarias 
   TABLE DATA           P   COPY public.tb_indumentarias (sku_ind, nomb_ind, talla_ind, estado) FROM stdin;
    public          postgres    false    242   ^�       �          0    17158    tb_informe_averias 
   TABLE DATA           i   COPY public.tb_informe_averias (cod_inf, cod_ord_trab, nomb_inf, desc_inf, evid_inf, estado) FROM stdin;
    public          postgres    false    241   ��       |          0    17012 
   tb_modulos 
   TABLE DATA           f   COPY public.tb_modulos (cod_modul, nomb_modul, desc_modul, fech_creat, fech_modi, estado) FROM stdin;
    public          postgres    false    222   "�       �          0    17133    tb_ordenes_trabajos 
   TABLE DATA           �   COPY public.tb_ordenes_trabajos (cod_ord_trab, cod_tipo_ruta, direc_ord_trab, desc_ord_trab, cod_usua, fech_ord_trab, ini_ord_trab, fin_ord_trab, evid_ord_trab, cod_seg_trab, estado) FROM stdin;
    public          postgres    false    239   ��       z          0    17003    tb_perfiles 
   TABLE DATA           ]   COPY public.tb_perfiles (cod_perfil, nomb_perfil, fech_creat, fech_modi, estado) FROM stdin;
    public          postgres    false    220   f�       }          0    17020    tb_permisos 
   TABLE DATA           [   COPY public.tb_permisos (cod_perfil, cod_modul, fech_creat, fech_modi, estado) FROM stdin;
    public          postgres    false    223   ֥       �          0    17125    tb_seguimiento_trabajos 
   TABLE DATA           V   COPY public.tb_seguimiento_trabajos (cod_seg_trab, nomb_seg_trab, estado) FROM stdin;
    public          postgres    false    237   5�       v          0    16982    tb_tipo_contrato 
   TABLE DATA           Y   COPY public.tb_tipo_contrato (cod_tipo_contrato, nomb_tipo_contrato, estado) FROM stdin;
    public          postgres    false    216   v�       �          0    17099    tb_tipo_justificaciones 
   TABLE DATA           S   COPY public.tb_tipo_justificaciones (cod_tipo_just, nomb_just, estado) FROM stdin;
    public          postgres    false    233    �       �          0    17057    tb_tipo_rutas 
   TABLE DATA           ^   COPY public.tb_tipo_rutas (cod_tipo_ruta, nomb_tipo_ruta, desc_tipo_ruta, estado) FROM stdin;
    public          postgres    false    227   ^�       �          0    17065    tb_tipo_servicios 
   TABLE DATA           b   COPY public.tb_tipo_servicios (cod_tipo_serv, nomb_tipo_serv, desc_tipo_serv, estado) FROM stdin;
    public          postgres    false    229   �                 0    17036    tb_usuarios 
   TABLE DATA           �   COPY public.tb_usuarios (cod_usua, usuario, pass_usua, nomb_usua, ape_usua, mail_usua, telf_usua, fech_creat, fech_modi, cod_contrato, cod_perfil, estado) FROM stdin;
    public          postgres    false    225   T�       �           0    0    tb_asistencias_cod_asist_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.tb_asistencias_cod_asist_seq', 29, true);
          public          postgres    false    234            �           0    0    tb_clientes_cod_clie_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.tb_clientes_cod_clie_seq', 5, true);
          public          postgres    false    230            �           0    0    tb_contratos_cod_contrato_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.tb_contratos_cod_contrato_seq', 7, true);
          public          postgres    false    217            �           0    0    tb_informe_averias_cod_inf_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.tb_informe_averias_cod_inf_seq', 2, true);
          public          postgres    false    240            �           0    0    tb_modulos_cod_modul_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.tb_modulos_cod_modul_seq', 12, true);
          public          postgres    false    221            �           0    0 $   tb_ordenes_trabajos_cod_ord_trab_seq    SEQUENCE SET     R   SELECT pg_catalog.setval('public.tb_ordenes_trabajos_cod_ord_trab_seq', 3, true);
          public          postgres    false    238            �           0    0    tb_perfiles_cod_perfil_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.tb_perfiles_cod_perfil_seq', 5, true);
          public          postgres    false    219            �           0    0 (   tb_seguimiento_trabajos_cod_seg_trab_seq    SEQUENCE SET     V   SELECT pg_catalog.setval('public.tb_seguimiento_trabajos_cod_seg_trab_seq', 3, true);
          public          postgres    false    236            �           0    0 &   tb_tipo_contrato_cod_tipo_contrato_seq    SEQUENCE SET     T   SELECT pg_catalog.setval('public.tb_tipo_contrato_cod_tipo_contrato_seq', 8, true);
          public          postgres    false    215            �           0    0 )   tb_tipo_justificaciones_cod_tipo_just_seq    SEQUENCE SET     W   SELECT pg_catalog.setval('public.tb_tipo_justificaciones_cod_tipo_just_seq', 3, true);
          public          postgres    false    232            �           0    0    tb_tipo_rutas_cod_tipo_ruta_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.tb_tipo_rutas_cod_tipo_ruta_seq', 3, true);
          public          postgres    false    226            �           0    0 #   tb_tipo_servicios_cod_tipo_serv_seq    SEQUENCE SET     Q   SELECT pg_catalog.setval('public.tb_tipo_servicios_cod_tipo_serv_seq', 4, true);
          public          postgres    false    228            �           0    0    tb_usuarios_cod_usua_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.tb_usuarios_cod_usua_seq', 8, true);
          public          postgres    false    224            �           2606    17113 "   tb_asistencias tb_asistencias_pkey 
   CONSTRAINT     g   ALTER TABLE ONLY public.tb_asistencias
    ADD CONSTRAINT tb_asistencias_pkey PRIMARY KEY (cod_asist);
 L   ALTER TABLE ONLY public.tb_asistencias DROP CONSTRAINT tb_asistencias_pkey;
       public            postgres    false    235            �           2606    17082    tb_clientes tb_clientes_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.tb_clientes
    ADD CONSTRAINT tb_clientes_pkey PRIMARY KEY (cod_clie);
 F   ALTER TABLE ONLY public.tb_clientes DROP CONSTRAINT tb_clientes_pkey;
       public            postgres    false    231            �           2606    16996    tb_contratos tb_contratos_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.tb_contratos
    ADD CONSTRAINT tb_contratos_pkey PRIMARY KEY (cod_contrato);
 H   ALTER TABLE ONLY public.tb_contratos DROP CONSTRAINT tb_contratos_pkey;
       public            postgres    false    218            �           2606    17175 &   tb_indumentarias tb_indumentarias_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.tb_indumentarias
    ADD CONSTRAINT tb_indumentarias_pkey PRIMARY KEY (sku_ind);
 P   ALTER TABLE ONLY public.tb_indumentarias DROP CONSTRAINT tb_indumentarias_pkey;
       public            postgres    false    242            �           2606    17164 *   tb_informe_averias tb_informe_averias_pkey 
   CONSTRAINT     m   ALTER TABLE ONLY public.tb_informe_averias
    ADD CONSTRAINT tb_informe_averias_pkey PRIMARY KEY (cod_inf);
 T   ALTER TABLE ONLY public.tb_informe_averias DROP CONSTRAINT tb_informe_averias_pkey;
       public            postgres    false    241            �           2606    17019    tb_modulos tb_modulos_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY public.tb_modulos
    ADD CONSTRAINT tb_modulos_pkey PRIMARY KEY (cod_modul);
 D   ALTER TABLE ONLY public.tb_modulos DROP CONSTRAINT tb_modulos_pkey;
       public            postgres    false    222            �           2606    17141 ,   tb_ordenes_trabajos tb_ordenes_trabajos_pkey 
   CONSTRAINT     t   ALTER TABLE ONLY public.tb_ordenes_trabajos
    ADD CONSTRAINT tb_ordenes_trabajos_pkey PRIMARY KEY (cod_ord_trab);
 V   ALTER TABLE ONLY public.tb_ordenes_trabajos DROP CONSTRAINT tb_ordenes_trabajos_pkey;
       public            postgres    false    239            �           2606    17010    tb_perfiles tb_perfiles_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.tb_perfiles
    ADD CONSTRAINT tb_perfiles_pkey PRIMARY KEY (cod_perfil);
 F   ALTER TABLE ONLY public.tb_perfiles DROP CONSTRAINT tb_perfiles_pkey;
       public            postgres    false    220            �           2606    17131 4   tb_seguimiento_trabajos tb_seguimiento_trabajos_pkey 
   CONSTRAINT     |   ALTER TABLE ONLY public.tb_seguimiento_trabajos
    ADD CONSTRAINT tb_seguimiento_trabajos_pkey PRIMARY KEY (cod_seg_trab);
 ^   ALTER TABLE ONLY public.tb_seguimiento_trabajos DROP CONSTRAINT tb_seguimiento_trabajos_pkey;
       public            postgres    false    237            �           2606    16988 &   tb_tipo_contrato tb_tipo_contrato_pkey 
   CONSTRAINT     s   ALTER TABLE ONLY public.tb_tipo_contrato
    ADD CONSTRAINT tb_tipo_contrato_pkey PRIMARY KEY (cod_tipo_contrato);
 P   ALTER TABLE ONLY public.tb_tipo_contrato DROP CONSTRAINT tb_tipo_contrato_pkey;
       public            postgres    false    216            �           2606    17105 4   tb_tipo_justificaciones tb_tipo_justificaciones_pkey 
   CONSTRAINT     }   ALTER TABLE ONLY public.tb_tipo_justificaciones
    ADD CONSTRAINT tb_tipo_justificaciones_pkey PRIMARY KEY (cod_tipo_just);
 ^   ALTER TABLE ONLY public.tb_tipo_justificaciones DROP CONSTRAINT tb_tipo_justificaciones_pkey;
       public            postgres    false    233            �           2606    17063     tb_tipo_rutas tb_tipo_rutas_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.tb_tipo_rutas
    ADD CONSTRAINT tb_tipo_rutas_pkey PRIMARY KEY (cod_tipo_ruta);
 J   ALTER TABLE ONLY public.tb_tipo_rutas DROP CONSTRAINT tb_tipo_rutas_pkey;
       public            postgres    false    227            �           2606    17071 (   tb_tipo_servicios tb_tipo_servicios_pkey 
   CONSTRAINT     q   ALTER TABLE ONLY public.tb_tipo_servicios
    ADD CONSTRAINT tb_tipo_servicios_pkey PRIMARY KEY (cod_tipo_serv);
 R   ALTER TABLE ONLY public.tb_tipo_servicios DROP CONSTRAINT tb_tipo_servicios_pkey;
       public            postgres    false    229            �           2606    17045    tb_usuarios tb_usuarios_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.tb_usuarios
    ADD CONSTRAINT tb_usuarios_pkey PRIMARY KEY (cod_usua);
 F   ALTER TABLE ONLY public.tb_usuarios DROP CONSTRAINT tb_usuarios_pkey;
       public            postgres    false    225            �           2606    17119 0   tb_asistencias tb_asistencias_cod_tipo_just_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.tb_asistencias
    ADD CONSTRAINT tb_asistencias_cod_tipo_just_fkey FOREIGN KEY (cod_tipo_just) REFERENCES public.tb_tipo_justificaciones(cod_tipo_just);
 Z   ALTER TABLE ONLY public.tb_asistencias DROP CONSTRAINT tb_asistencias_cod_tipo_just_fkey;
       public          postgres    false    233    4811    235            �           2606    17114 +   tb_asistencias tb_asistencias_cod_usua_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.tb_asistencias
    ADD CONSTRAINT tb_asistencias_cod_usua_fkey FOREIGN KEY (cod_usua) REFERENCES public.tb_usuarios(cod_usua);
 U   ALTER TABLE ONLY public.tb_asistencias DROP CONSTRAINT tb_asistencias_cod_usua_fkey;
       public          postgres    false    235    4803    225            �           2606    17093 '   tb_clientes tb_clientes_cod_perfil_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.tb_clientes
    ADD CONSTRAINT tb_clientes_cod_perfil_fkey FOREIGN KEY (cod_perfil) REFERENCES public.tb_perfiles(cod_perfil);
 Q   ALTER TABLE ONLY public.tb_clientes DROP CONSTRAINT tb_clientes_cod_perfil_fkey;
       public          postgres    false    4799    220    231            �           2606    17083 *   tb_clientes tb_clientes_cod_tipo_ruta_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.tb_clientes
    ADD CONSTRAINT tb_clientes_cod_tipo_ruta_fkey FOREIGN KEY (cod_tipo_ruta) REFERENCES public.tb_tipo_rutas(cod_tipo_ruta);
 T   ALTER TABLE ONLY public.tb_clientes DROP CONSTRAINT tb_clientes_cod_tipo_ruta_fkey;
       public          postgres    false    231    227    4805            �           2606    17088 *   tb_clientes tb_clientes_cod_tipo_serv_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.tb_clientes
    ADD CONSTRAINT tb_clientes_cod_tipo_serv_fkey FOREIGN KEY (cod_tipo_serv) REFERENCES public.tb_tipo_servicios(cod_tipo_serv);
 T   ALTER TABLE ONLY public.tb_clientes DROP CONSTRAINT tb_clientes_cod_tipo_serv_fkey;
       public          postgres    false    231    4807    229            �           2606    16997 0   tb_contratos tb_contratos_cod_tipo_contrato_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.tb_contratos
    ADD CONSTRAINT tb_contratos_cod_tipo_contrato_fkey FOREIGN KEY (cod_tipo_contrato) REFERENCES public.tb_tipo_contrato(cod_tipo_contrato);
 Z   ALTER TABLE ONLY public.tb_contratos DROP CONSTRAINT tb_contratos_cod_tipo_contrato_fkey;
       public          postgres    false    4795    218    216            �           2606    17180 /   tb_hist_ind_usua tb_hist_ind_usua_cod_usua_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.tb_hist_ind_usua
    ADD CONSTRAINT tb_hist_ind_usua_cod_usua_fkey FOREIGN KEY (cod_usua) REFERENCES public.tb_usuarios(cod_usua);
 Y   ALTER TABLE ONLY public.tb_hist_ind_usua DROP CONSTRAINT tb_hist_ind_usua_cod_usua_fkey;
       public          postgres    false    243    4803    225            �           2606    17185 .   tb_hist_ind_usua tb_hist_ind_usua_sku_ind_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.tb_hist_ind_usua
    ADD CONSTRAINT tb_hist_ind_usua_sku_ind_fkey FOREIGN KEY (sku_ind) REFERENCES public.tb_indumentarias(sku_ind);
 X   ALTER TABLE ONLY public.tb_hist_ind_usua DROP CONSTRAINT tb_hist_ind_usua_sku_ind_fkey;
       public          postgres    false    243    4821    242            �           2606    17165 7   tb_informe_averias tb_informe_averias_cod_ord_trab_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.tb_informe_averias
    ADD CONSTRAINT tb_informe_averias_cod_ord_trab_fkey FOREIGN KEY (cod_ord_trab) REFERENCES public.tb_ordenes_trabajos(cod_ord_trab);
 a   ALTER TABLE ONLY public.tb_informe_averias DROP CONSTRAINT tb_informe_averias_cod_ord_trab_fkey;
       public          postgres    false    241    4817    239            �           2606    17152 9   tb_ordenes_trabajos tb_ordenes_trabajos_cod_seg_trab_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.tb_ordenes_trabajos
    ADD CONSTRAINT tb_ordenes_trabajos_cod_seg_trab_fkey FOREIGN KEY (cod_seg_trab) REFERENCES public.tb_seguimiento_trabajos(cod_seg_trab);
 c   ALTER TABLE ONLY public.tb_ordenes_trabajos DROP CONSTRAINT tb_ordenes_trabajos_cod_seg_trab_fkey;
       public          postgres    false    237    239    4815            �           2606    17142 :   tb_ordenes_trabajos tb_ordenes_trabajos_cod_tipo_ruta_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.tb_ordenes_trabajos
    ADD CONSTRAINT tb_ordenes_trabajos_cod_tipo_ruta_fkey FOREIGN KEY (cod_tipo_ruta) REFERENCES public.tb_tipo_rutas(cod_tipo_ruta);
 d   ALTER TABLE ONLY public.tb_ordenes_trabajos DROP CONSTRAINT tb_ordenes_trabajos_cod_tipo_ruta_fkey;
       public          postgres    false    239    4805    227            �           2606    17147 5   tb_ordenes_trabajos tb_ordenes_trabajos_cod_usua_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.tb_ordenes_trabajos
    ADD CONSTRAINT tb_ordenes_trabajos_cod_usua_fkey FOREIGN KEY (cod_usua) REFERENCES public.tb_usuarios(cod_usua);
 _   ALTER TABLE ONLY public.tb_ordenes_trabajos DROP CONSTRAINT tb_ordenes_trabajos_cod_usua_fkey;
       public          postgres    false    225    239    4803            �           2606    17030 &   tb_permisos tb_permisos_cod_modul_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.tb_permisos
    ADD CONSTRAINT tb_permisos_cod_modul_fkey FOREIGN KEY (cod_modul) REFERENCES public.tb_modulos(cod_modul);
 P   ALTER TABLE ONLY public.tb_permisos DROP CONSTRAINT tb_permisos_cod_modul_fkey;
       public          postgres    false    4801    223    222            �           2606    17025 '   tb_permisos tb_permisos_cod_perfil_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.tb_permisos
    ADD CONSTRAINT tb_permisos_cod_perfil_fkey FOREIGN KEY (cod_perfil) REFERENCES public.tb_perfiles(cod_perfil);
 Q   ALTER TABLE ONLY public.tb_permisos DROP CONSTRAINT tb_permisos_cod_perfil_fkey;
       public          postgres    false    4799    220    223            �           2606    17046 )   tb_usuarios tb_usuarios_cod_contrato_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.tb_usuarios
    ADD CONSTRAINT tb_usuarios_cod_contrato_fkey FOREIGN KEY (cod_contrato) REFERENCES public.tb_contratos(cod_contrato);
 S   ALTER TABLE ONLY public.tb_usuarios DROP CONSTRAINT tb_usuarios_cod_contrato_fkey;
       public          postgres    false    4797    225    218            �           2606    17051 '   tb_usuarios tb_usuarios_cod_perfil_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.tb_usuarios
    ADD CONSTRAINT tb_usuarios_cod_perfil_fkey FOREIGN KEY (cod_perfil) REFERENCES public.tb_perfiles(cod_perfil);
 Q   ALTER TABLE ONLY public.tb_usuarios DROP CONSTRAINT tb_usuarios_cod_perfil_fkey;
       public          postgres    false    225    220    4799            �   �   x����!���%�m0��
�����;�i���9=�Z KEl�o�	�W�;P��;fYc�8��o���is�<��f�8�_f� j���m��Ä�@�j��V�T���6�V&�n7L3VH�g��bx�\2�<0Z��B� �}�      �   �   x�e�AK�0�ϯ��`K2�*�uQ<�`�ӂ�mVRӤ��"�z�nOk��{�88cLr�/�M�^s4��e&��0�_�}��0h�S�8��R���1���Wp$R!�I�hܜl����K�����x2�k�e�˴�����]eHȥ�A�2r�Θ�E�1D��Gt��&�����N�\��ٟ�z(�W�̾!�m�=��$V��I�v�� ��.:�����@���+��t28�/���cU�Fa�      x   |   x�3�4��u�Wp��	r��H,JTH�Q((M-.�WHI�N##]C]C�?�.#Nc�4A5s��g�	�	i!M9-8�\����=����͌MM��$���1F��� gd�      �   O   x�3�t�w�5�44�t�	ruwt��,�2�	��C��A�&`QC#CŦ0a#d�f#�QD�a��FX`����� �]#�      �   O   x�s�w�5�44�t/M,JI,��)�/�V�,�r�H�J�¤�9����QČ�b#� �畤���E��c���� �%      �   U   x�˱�0�ڞ��"��5h�`hB��0=��5��L���CG�}r���%I��	�B{���@��橹��:-�����?%c�      |   �  x�mRKR�0]��������a� �g׍�bƱ�lw��� �8B/���4,�Ȋޓ��*3�]B����\L�P���86����`XTC3�3i02�(�f�,(�C���0� 	N�;6O��)��Ax�Y"�\��!���j�K�}B����/�S����Õ��^��\��=��s��
��ВD�5�������8w�Z},��;
�zO��TZ�9����m
���a��#y�s�p�&�_}ީ�IT��:c��I�c/̋��Ґ�j��zU�B��Q�EhQ:��H.ͭJ��h+�Ի���r����~k�^������h�+a��t �xr_<�o��\q�
vt󰻯vS�Î�Ͳ[[��ͺX�����̥���;�}���`0��d�      �   �   x��ν
�0���)�����?ݬ�P]\�\�X.�Dn�����8�P8��q,88P�[��	cN<o+�Jx�x�����\w/�8_[X���~W��堄�3$h���h��]c�0���2Y~�6A"'����P��>n��n��zH�C      z   `   x�3�tL����,.)JL�<�9�����D��P�Ѐ3Ə��ˈ�+5-U!%U�� �(S�1'X�(3Cʄ�9'35�$CƔ3���,���1z\\\ ��**      }   O   x�m͹�0Cњ�Ł(�9��#�#�Ŏx���Q�9�X/>#�Ȇ�)�V²�D��®f)�m��iV`��af?5J7      �   1   x�3�JM�,.)JL��,�2�t�SH.-*q�9�2�s2� r1z\\\ k0      v   �   x�u�;1D��>�m)8 �7qa)����kq.��BH+A�j�xf֡�j�&�	*ڤX�`4��,n�!�g��ũ킒^n�wN,��B�#&6�׳Wf�>\HY�lu����{/P�k�q��LF:p�ܞAK��E>�Z�uc|7�Vl      �   .   x�3��=�2%39���ˈ3,19193?/��5��/)�2b���� ��      �   w   x�3��/RH��L�+I���+��)M.JT(�OI,V����R�TJj\Y	�X[Afq>g@"P9T�X��4U��N�SH�LK-���+h��2�3�5�F��N���K-&۔=... .MD�      �   _   x�U�1�  gxE_��>C'W�&m�����zuѸ�%�nB5V��j�o��h�X�3߻Qb>� K��$�;��k+BH��°�g�t��(m         c  x�e�Mn�0���)�@������IPYe3�5;5�U9}ҪJ*/�x����p�z4�	�6,�h�A��&<���� -���:�lT��4�d\��\�l�b8��1���Pm��O,�
*4�Bzĩi��=��'d�1���O���j=:z�VB��n�kqn�Bם��(��B��(h�AB�2J2���W��H_�=N�s��u�]�HY&�J�@SxV���L��m,<aM*�����}_�+���/�	y�S�s���d�Qh���w�L�BK��DQv3ֶ8���pⵈ���t�NtՌ�*��u3'�{����f���]�fǿ!�y�,y�4[쟣 �U���     