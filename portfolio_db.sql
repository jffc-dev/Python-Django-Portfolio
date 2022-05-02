--
-- PostgreSQL database dump
--

-- Dumped from database version 13.6
-- Dumped by pg_dump version 13.6

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: Portfolio_contactoasunto; Type: TABLE; Schema: public; Owner: portfolio_user
--

CREATE TABLE public."Portfolio_contactoasunto" (
    idioma_id bigint NOT NULL,
    "nombreCorto" character varying(50) NOT NULL,
    "nombreLargo" character varying(100) NOT NULL
);


ALTER TABLE public."Portfolio_contactoasunto" OWNER TO portfolio_user;

--
-- Name: Portfolio_formacion; Type: TABLE; Schema: public; Owner: portfolio_user
--

CREATE TABLE public."Portfolio_formacion" (
    id bigint NOT NULL,
    "rangoFecha" character varying(150) NOT NULL,
    posicion character varying(150) NOT NULL,
    empresa character varying(150) NOT NULL,
    descripcion text,
    tipo character varying(3) NOT NULL,
    idioma_id bigint NOT NULL
);


ALTER TABLE public."Portfolio_formacion" OWNER TO portfolio_user;

--
-- Name: Portfolio_formacion_id_seq; Type: SEQUENCE; Schema: public; Owner: portfolio_user
--

CREATE SEQUENCE public."Portfolio_formacion_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Portfolio_formacion_id_seq" OWNER TO portfolio_user;

--
-- Name: Portfolio_formacion_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: portfolio_user
--

ALTER SEQUENCE public."Portfolio_formacion_id_seq" OWNED BY public."Portfolio_formacion".id;


--
-- Name: Portfolio_habilidad; Type: TABLE; Schema: public; Owner: portfolio_user
--

CREATE TABLE public."Portfolio_habilidad" (
    id bigint NOT NULL,
    titulo character varying(30) NOT NULL,
    porcentaje integer NOT NULL,
    tipo character varying(3) NOT NULL,
    idioma_id bigint
);


ALTER TABLE public."Portfolio_habilidad" OWNER TO portfolio_user;

--
-- Name: Portfolio_habilidad_id_seq; Type: SEQUENCE; Schema: public; Owner: portfolio_user
--

CREATE SEQUENCE public."Portfolio_habilidad_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Portfolio_habilidad_id_seq" OWNER TO portfolio_user;

--
-- Name: Portfolio_habilidad_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: portfolio_user
--

ALTER SEQUENCE public."Portfolio_habilidad_id_seq" OWNED BY public."Portfolio_habilidad".id;


--
-- Name: Portfolio_idioma; Type: TABLE; Schema: public; Owner: portfolio_user
--

CREATE TABLE public."Portfolio_idioma" (
    id bigint NOT NULL,
    clave character varying(2) NOT NULL,
    titulo character varying(20) NOT NULL,
    imagen character varying(100) NOT NULL
);


ALTER TABLE public."Portfolio_idioma" OWNER TO portfolio_user;

--
-- Name: Portfolio_idioma_id_seq; Type: SEQUENCE; Schema: public; Owner: portfolio_user
--

CREATE SEQUENCE public."Portfolio_idioma_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Portfolio_idioma_id_seq" OWNER TO portfolio_user;

--
-- Name: Portfolio_idioma_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: portfolio_user
--

ALTER SEQUENCE public."Portfolio_idioma_id_seq" OWNED BY public."Portfolio_idioma".id;


--
-- Name: Portfolio_idiomaentorno; Type: TABLE; Schema: public; Owner: portfolio_user
--

CREATE TABLE public."Portfolio_idiomaentorno" (
    idioma_id bigint NOT NULL,
    titulo character varying(50) NOT NULL,
    "acercaCorreo" character varying(50) NOT NULL,
    "acercaCumpleanos" character varying(50) NOT NULL,
    "acercaTelefono" character varying(50) NOT NULL,
    "menuAcerca" character varying(50) NOT NULL,
    "menuBlog" character varying(50) NOT NULL,
    "menuContacto" character varying(50) NOT NULL,
    "menuInicio" character varying(50) NOT NULL,
    "menuPortafolio" character varying(50) NOT NULL,
    "menuResumen" character varying(50) NOT NULL,
    "resumenEducacion" character varying(50) NOT NULL,
    "resumenExperiencia" character varying(50) NOT NULL,
    "resumenHabilidades" character varying(50) NOT NULL,
    "resumenPremios" character varying(50) NOT NULL,
    "contactoAsuntoEtiqueta" character varying(50) NOT NULL,
    "contactoBotonEtiqueta" character varying(50) NOT NULL,
    "contactoCorreoEtiqueta" character varying(50) NOT NULL,
    "contactoCorreoGuia" character varying(50) NOT NULL,
    "contactoMensajeEtiqueta" character varying(50) NOT NULL,
    "contactoMensajeGuia" character varying(50) NOT NULL,
    "contactoSubitulo" character varying(50) NOT NULL,
    "contactoTelefonoEtiqueta" character varying(50) NOT NULL,
    "contactoTelefonoGuia" character varying(50) NOT NULL,
    "contactoTitulo" character varying(50) NOT NULL,
    "inicioPrefijoSoy" character varying(50) NOT NULL,
    "acercaPresentacion" character varying(50) NOT NULL,
    "blogUltimasNoticias" character varying(50) NOT NULL,
    "portafolioClientes" character varying(50) NOT NULL,
    "portafolioMisTrabajos" character varying(50) NOT NULL,
    "portafolioPrecios" character varying(50) NOT NULL,
    "portafolioPreciosDetalles" character varying(50) NOT NULL,
    "portafolioTestimonios" character varying(50) NOT NULL,
    "resumenBotonContratarme" character varying(50) NOT NULL,
    "resumenBotonCv" character varying(50) NOT NULL,
    "resumenHabilidadesBlandas" character varying(50) NOT NULL,
    "resumenHabilidadesIdiomas" character varying(50) NOT NULL,
    "acercaDireccion" character varying(50) NOT NULL
);


ALTER TABLE public."Portfolio_idiomaentorno" OWNER TO portfolio_user;

--
-- Name: Portfolio_perfil; Type: TABLE; Schema: public; Owner: portfolio_user
--

CREATE TABLE public."Portfolio_perfil" (
    idioma_id bigint NOT NULL,
    "nombreCorto" character varying(50) NOT NULL,
    "nombreLargo" character varying(100) NOT NULL,
    "enlacePresentacion" character varying(100) NOT NULL,
    "imagenPerfil" character varying(100) NOT NULL,
    "soyLista" character varying(200) NOT NULL,
    saludo character varying(50) NOT NULL,
    descipcion text,
    "enlaceLinkedin" character varying(100) NOT NULL,
    "enlaceGithub" character varying(100) NOT NULL,
    "enlaceTwitter" character varying(100) NOT NULL,
    "archivoCv" character varying(100) NOT NULL,
    correo character varying(50) NOT NULL,
    cumpleanos character varying(50) NOT NULL,
    direccion character varying(100) NOT NULL,
    telefono character varying(50) NOT NULL
);


ALTER TABLE public."Portfolio_perfil" OWNER TO portfolio_user;

--
-- Name: Portfolio_perfilservicios; Type: TABLE; Schema: public; Owner: portfolio_user
--

CREATE TABLE public."Portfolio_perfilservicios" (
    idioma_id bigint NOT NULL,
    "servicio1Texto" character varying(50) NOT NULL,
    "servicio1Url" character varying(100) NOT NULL,
    "servicio2Texto" character varying(50) NOT NULL,
    "servicio2Url" character varying(100) NOT NULL,
    "servicio3Texto" character varying(50) NOT NULL,
    "servicio3Url" character varying(100) NOT NULL,
    "servicio4Texto" character varying(50) NOT NULL,
    "servicio4Url" character varying(100) NOT NULL
);


ALTER TABLE public."Portfolio_perfilservicios" OWNER TO portfolio_user;

--
-- Name: Portfolio_testimonial; Type: TABLE; Schema: public; Owner: portfolio_user
--

CREATE TABLE public."Portfolio_testimonial" (
    id bigint NOT NULL,
    "nombreUsuario" character varying(50) NOT NULL,
    "nombreCargo" character varying(50) NOT NULL,
    titulo character varying(100) NOT NULL,
    texto text,
    "imagenPerfil" character varying(100) NOT NULL,
    "mostrarPagina" boolean NOT NULL
);


ALTER TABLE public."Portfolio_testimonial" OWNER TO portfolio_user;

--
-- Name: Portfolio_testimonial_id_seq; Type: SEQUENCE; Schema: public; Owner: portfolio_user
--

CREATE SEQUENCE public."Portfolio_testimonial_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Portfolio_testimonial_id_seq" OWNER TO portfolio_user;

--
-- Name: Portfolio_testimonial_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: portfolio_user
--

ALTER SEQUENCE public."Portfolio_testimonial_id_seq" OWNED BY public."Portfolio_testimonial".id;


--
-- Name: auth_group; Type: TABLE; Schema: public; Owner: portfolio_user
--

CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);


ALTER TABLE public.auth_group OWNER TO portfolio_user;

--
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: portfolio_user
--

CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_id_seq OWNER TO portfolio_user;

--
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: portfolio_user
--

ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;


--
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: portfolio_user
--

CREATE TABLE public.auth_group_permissions (
    id bigint NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_group_permissions OWNER TO portfolio_user;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: portfolio_user
--

CREATE SEQUENCE public.auth_group_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_permissions_id_seq OWNER TO portfolio_user;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: portfolio_user
--

ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;


--
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: portfolio_user
--

CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


ALTER TABLE public.auth_permission OWNER TO portfolio_user;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: portfolio_user
--

CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_permission_id_seq OWNER TO portfolio_user;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: portfolio_user
--

ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;


--
-- Name: auth_user; Type: TABLE; Schema: public; Owner: portfolio_user
--

CREATE TABLE public.auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(150) NOT NULL,
    last_name character varying(150) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);


ALTER TABLE public.auth_user OWNER TO portfolio_user;

--
-- Name: auth_user_groups; Type: TABLE; Schema: public; Owner: portfolio_user
--

CREATE TABLE public.auth_user_groups (
    id bigint NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE public.auth_user_groups OWNER TO portfolio_user;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: portfolio_user
--

CREATE SEQUENCE public.auth_user_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_groups_id_seq OWNER TO portfolio_user;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: portfolio_user
--

ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;


--
-- Name: auth_user_id_seq; Type: SEQUENCE; Schema: public; Owner: portfolio_user
--

CREATE SEQUENCE public.auth_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_id_seq OWNER TO portfolio_user;

--
-- Name: auth_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: portfolio_user
--

ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;


--
-- Name: auth_user_user_permissions; Type: TABLE; Schema: public; Owner: portfolio_user
--

CREATE TABLE public.auth_user_user_permissions (
    id bigint NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_user_user_permissions OWNER TO portfolio_user;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: portfolio_user
--

CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_user_permissions_id_seq OWNER TO portfolio_user;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: portfolio_user
--

ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;


--
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: portfolio_user
--

CREATE TABLE public.django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id integer NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);


ALTER TABLE public.django_admin_log OWNER TO portfolio_user;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: portfolio_user
--

CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_admin_log_id_seq OWNER TO portfolio_user;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: portfolio_user
--

ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;


--
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: portfolio_user
--

CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE public.django_content_type OWNER TO portfolio_user;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: portfolio_user
--

CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_content_type_id_seq OWNER TO portfolio_user;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: portfolio_user
--

ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;


--
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: portfolio_user
--

CREATE TABLE public.django_migrations (
    id bigint NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


ALTER TABLE public.django_migrations OWNER TO portfolio_user;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: portfolio_user
--

CREATE SEQUENCE public.django_migrations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_migrations_id_seq OWNER TO portfolio_user;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: portfolio_user
--

ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;


--
-- Name: django_session; Type: TABLE; Schema: public; Owner: portfolio_user
--

CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE public.django_session OWNER TO portfolio_user;

--
-- Name: Portfolio_formacion id; Type: DEFAULT; Schema: public; Owner: portfolio_user
--

ALTER TABLE ONLY public."Portfolio_formacion" ALTER COLUMN id SET DEFAULT nextval('public."Portfolio_formacion_id_seq"'::regclass);


--
-- Name: Portfolio_habilidad id; Type: DEFAULT; Schema: public; Owner: portfolio_user
--

ALTER TABLE ONLY public."Portfolio_habilidad" ALTER COLUMN id SET DEFAULT nextval('public."Portfolio_habilidad_id_seq"'::regclass);


--
-- Name: Portfolio_idioma id; Type: DEFAULT; Schema: public; Owner: portfolio_user
--

ALTER TABLE ONLY public."Portfolio_idioma" ALTER COLUMN id SET DEFAULT nextval('public."Portfolio_idioma_id_seq"'::regclass);


--
-- Name: Portfolio_testimonial id; Type: DEFAULT; Schema: public; Owner: portfolio_user
--

ALTER TABLE ONLY public."Portfolio_testimonial" ALTER COLUMN id SET DEFAULT nextval('public."Portfolio_testimonial_id_seq"'::regclass);


--
-- Name: auth_group id; Type: DEFAULT; Schema: public; Owner: portfolio_user
--

ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);


--
-- Name: auth_group_permissions id; Type: DEFAULT; Schema: public; Owner: portfolio_user
--

ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);


--
-- Name: auth_permission id; Type: DEFAULT; Schema: public; Owner: portfolio_user
--

ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);


--
-- Name: auth_user id; Type: DEFAULT; Schema: public; Owner: portfolio_user
--

ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);


--
-- Name: auth_user_groups id; Type: DEFAULT; Schema: public; Owner: portfolio_user
--

ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);


--
-- Name: auth_user_user_permissions id; Type: DEFAULT; Schema: public; Owner: portfolio_user
--

ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);


--
-- Name: django_admin_log id; Type: DEFAULT; Schema: public; Owner: portfolio_user
--

ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);


--
-- Name: django_content_type id; Type: DEFAULT; Schema: public; Owner: portfolio_user
--

ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);


--
-- Name: django_migrations id; Type: DEFAULT; Schema: public; Owner: portfolio_user
--

ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);


--
-- Data for Name: Portfolio_contactoasunto; Type: TABLE DATA; Schema: public; Owner: portfolio_user
--

COPY public."Portfolio_contactoasunto" (idioma_id, "nombreCorto", "nombreLargo") FROM stdin;
\.


--
-- Data for Name: Portfolio_formacion; Type: TABLE DATA; Schema: public; Owner: portfolio_user
--

COPY public."Portfolio_formacion" (id, "rangoFecha", posicion, empresa, descripcion, tipo, idioma_id) FROM stdin;
1	2008 - 2018	Secundaria Finalizada	Colegio Particular Mixto Santa Clara	Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incidiei dunt ut labore et dolore magna aliqua. Ut enim ad minim veniam quis nostrud	EDU	1
2	2008 - 2018	Finished Secondary	Colegio Particular Mixto Santa Clara	TEST	EDU	2
\.


--
-- Data for Name: Portfolio_habilidad; Type: TABLE DATA; Schema: public; Owner: portfolio_user
--

COPY public."Portfolio_habilidad" (id, titulo, porcentaje, tipo, idioma_id) FROM stdin;
2	HTML	80	HRD	\N
3	CSS	50	HRD	\N
\.


--
-- Data for Name: Portfolio_idioma; Type: TABLE DATA; Schema: public; Owner: portfolio_user
--

COPY public."Portfolio_idioma" (id, clave, titulo, imagen) FROM stdin;
1	es	Español	idiomas/spain.png
2	en	English	idiomas/usa.png
\.


--
-- Data for Name: Portfolio_idiomaentorno; Type: TABLE DATA; Schema: public; Owner: portfolio_user
--

COPY public."Portfolio_idiomaentorno" (idioma_id, titulo, "acercaCorreo", "acercaCumpleanos", "acercaTelefono", "menuAcerca", "menuBlog", "menuContacto", "menuInicio", "menuPortafolio", "menuResumen", "resumenEducacion", "resumenExperiencia", "resumenHabilidades", "resumenPremios", "contactoAsuntoEtiqueta", "contactoBotonEtiqueta", "contactoCorreoEtiqueta", "contactoCorreoGuia", "contactoMensajeEtiqueta", "contactoMensajeGuia", "contactoSubitulo", "contactoTelefonoEtiqueta", "contactoTelefonoGuia", "contactoTitulo", "inicioPrefijoSoy", "acercaPresentacion", "blogUltimasNoticias", "portafolioClientes", "portafolioMisTrabajos", "portafolioPrecios", "portafolioPreciosDetalles", "portafolioTestimonios", "resumenBotonContratarme", "resumenBotonCv", "resumenHabilidadesBlandas", "resumenHabilidadesIdiomas", "acercaDireccion") FROM stdin;
1	Javier Flores - Página personal	Correo	Cumpleaños	Teléfono	Información	Blog	Contacto	Inicio	Portafolio	Resumen			Habilidades	Premios											Soy	Presentación									Habilidades blandas	Idiomas	Dirección
2	Javier Flores - Personal Resume				About			Home																	hi												
\.


--
-- Data for Name: Portfolio_perfil; Type: TABLE DATA; Schema: public; Owner: portfolio_user
--

COPY public."Portfolio_perfil" (idioma_id, "nombreCorto", "nombreLargo", "enlacePresentacion", "imagenPerfil", "soyLista", saludo, descipcion, "enlaceLinkedin", "enlaceGithub", "enlaceTwitter", "archivoCv", correo, cumpleanos, direccion, telefono) FROM stdin;
1	Javier Flores Cárdenas	Javier Fernando Flores Cárdenas		perfiles/melgar.jpg	desarrollador|programador|diseñador|freelancer	Hola!	I discovered my passion for design when I was a sophomore in\r\nHigh School; It was then when it became clear what I wanted to\r\ndo for a living. I pursued my career at the amazing Valencia\r\nCollege where I started my major in Print Design. A year later\r\nI took a begginer’s Web class, where I discovered the love for\r\ncode. After that, I switched my major to Interactive Design\r\nand started the never-ending journey of becoming a web\r\ndeveloper along with sharpening my eye for design.1	https://www.linkedin.com/in/jffc-dev/	https://github.com/jffc-dev		cvs/napoli.jpg	jffc.dev@gmail.com	24/05/2002	Arequipa, Perú	+51 957786155
\.


--
-- Data for Name: Portfolio_perfilservicios; Type: TABLE DATA; Schema: public; Owner: portfolio_user
--

COPY public."Portfolio_perfilservicios" (idioma_id, "servicio1Texto", "servicio1Url", "servicio2Texto", "servicio2Url", "servicio3Texto", "servicio3Url", "servicio4Texto", "servicio4Url") FROM stdin;
1	Desarrollador web	laptop	Diseñador web	paint-bucket	Desarrollador y tester	world	Desarrollador móvil	settings
\.


--
-- Data for Name: Portfolio_testimonial; Type: TABLE DATA; Schema: public; Owner: portfolio_user
--

COPY public."Portfolio_testimonial" (id, "nombreUsuario", "nombreCargo", titulo, texto, "imagenPerfil", "mostrarPagina") FROM stdin;
\.


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: portfolio_user
--

COPY public.auth_group (id, name) FROM stdin;
\.


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: portfolio_user
--

COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: portfolio_user
--

COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add log entry	1	add_logentry
2	Can change log entry	1	change_logentry
3	Can delete log entry	1	delete_logentry
4	Can view log entry	1	view_logentry
5	Can add permission	2	add_permission
6	Can change permission	2	change_permission
7	Can delete permission	2	delete_permission
8	Can view permission	2	view_permission
9	Can add group	3	add_group
10	Can change group	3	change_group
11	Can delete group	3	delete_group
12	Can view group	3	view_group
13	Can add user	4	add_user
14	Can change user	4	change_user
15	Can delete user	4	delete_user
16	Can view user	4	view_user
17	Can add content type	5	add_contenttype
18	Can change content type	5	change_contenttype
19	Can delete content type	5	delete_contenttype
20	Can view content type	5	view_contenttype
21	Can add session	6	add_session
22	Can change session	6	change_session
23	Can delete session	6	delete_session
24	Can view session	6	view_session
25	Can add formacion	7	add_formacion
26	Can change formacion	7	change_formacion
27	Can delete formacion	7	delete_formacion
28	Can view formacion	7	view_formacion
29	Can add habilidad	8	add_habilidad
30	Can change habilidad	8	change_habilidad
31	Can delete habilidad	8	delete_habilidad
32	Can view habilidad	8	view_habilidad
33	Can add idioma palabra	9	add_idiomapalabra
34	Can change idioma palabra	9	change_idiomapalabra
35	Can delete idioma palabra	9	delete_idiomapalabra
36	Can view idioma palabra	9	view_idiomapalabra
37	Can add idioma entorno	10	add_idiomaentorno
38	Can change idioma entorno	10	change_idiomaentorno
39	Can delete idioma entorno	10	delete_idiomaentorno
40	Can view idioma entorno	10	view_idiomaentorno
41	Can add idioma	11	add_idioma
42	Can change idioma	11	change_idioma
43	Can delete idioma	11	delete_idioma
44	Can view idioma	11	view_idioma
45	Can add contacto asunto	12	add_contactoasunto
46	Can change contacto asunto	12	change_contactoasunto
47	Can delete contacto asunto	12	delete_contactoasunto
48	Can view contacto asunto	12	view_contactoasunto
49	Can add perfil	13	add_perfil
50	Can change perfil	13	change_perfil
51	Can delete perfil	13	delete_perfil
52	Can view perfil	13	view_perfil
53	Can add perfil servicios	14	add_perfilservicios
54	Can change perfil servicios	14	change_perfilservicios
55	Can delete perfil servicios	14	delete_perfilservicios
56	Can view perfil servicios	14	view_perfilservicios
57	Can add testimonial	15	add_testimonial
58	Can change testimonial	15	change_testimonial
59	Can delete testimonial	15	delete_testimonial
60	Can view testimonial	15	view_testimonial
\.


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: portfolio_user
--

COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
1	pbkdf2_sha256$260000$gmalrhpXfBQktV6zy75fn8$vybypr4D7nT9EjlrJBsl4IyJZWnGigm2sPU66JN3gM4=	2022-05-01 21:16:16.106474+00	t	jflores				t	t	2022-02-19 19:22:47.942611+00
\.


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: portfolio_user
--

COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: portfolio_user
--

COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: portfolio_user
--

COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
1	2022-02-19 19:24:18.945217+00	1	Formacion object (1)	1	[{"added": {}}]	7	1
2	2022-03-03 16:06:47.867536+00	1	Idioma object (1)	1	[{"added": {}}]	11	1
3	2022-03-03 16:07:21.941214+00	1	IdiomaEntorno object (1)	1	[{"added": {}}]	10	1
4	2022-03-03 16:20:42.621371+00	2	Clave: en, Titulo: English	1	[{"added": {}}]	11	1
5	2022-03-06 02:46:08.926972+00	1	Entorno para el idioma: Español	2	[{"changed": {"fields": ["MenuAcerca"]}}]	10	1
6	2022-03-06 02:53:55.985184+00	2	Entorno para el idioma: English	1	[{"added": {}}]	10	1
7	2022-03-07 17:53:04.957571+00	1	Entorno para el idioma: Español	2	[{"changed": {"fields": ["MenuInicio"]}}]	10	1
8	2022-03-07 17:57:52.423202+00	1	Idioma: Español	1	[{"added": {}}]	13	1
9	2022-03-07 17:58:45.530875+00	1	Entorno para el idioma: Español	2	[{"changed": {"fields": ["InicioPrefijoSoy"]}}]	10	1
10	2022-03-07 19:21:31.022544+00	2	Idioma: English, Posicion: Finished Secondary	1	[{"added": {}}]	7	1
11	2022-03-07 19:45:55.6147+00	1	Entorno para el idioma: Español	2	[{"changed": {"fields": ["MenuResumen", "MenuPortafolio", "MenuBlog", "MenuContacto"]}}]	10	1
12	2022-03-07 20:07:56.149095+00	1	Idioma: Español	2	[{"changed": {"fields": ["SoyLista"]}}]	13	1
13	2022-03-07 21:08:04.438833+00	1	Idioma: Español	2	[{"changed": {"fields": ["Saludo"]}}]	13	1
14	2022-03-07 21:08:16.000108+00	1	Idioma: Español	2	[{"changed": {"fields": ["Saludo"]}}]	13	1
15	2022-03-07 22:12:57.795298+00	1	Idioma: Español	2	[{"changed": {"fields": ["NombreCorto", "NombreLargo"]}}]	13	1
16	2022-03-07 22:23:54.048762+00	1	Entorno para el idioma: Español	2	[{"changed": {"fields": ["AcercaPresentacion", "AcercaCumpleanos", "AcercaTelefono", "AcercaCorreo"]}}]	10	1
17	2022-03-25 06:09:26.349601+00	1	Entorno para el idioma: Español	2	[{"changed": {"fields": ["AcercaCumpleanos", "AcercaTelefono", "AcercaCorreo", "AcercaDireccion"]}}]	10	1
18	2022-03-25 06:09:28.546194+00	1	Idioma: Español	2	[{"changed": {"fields": ["Cumpleanos", "Telefono", "Correo", "Direccion"]}}]	13	1
19	2022-03-25 06:15:08.357761+00	1	Idioma: Español	2	[{"changed": {"fields": ["Descipcion"]}}]	13	1
20	2022-03-25 06:15:35.210779+00	1	Idioma: Español	2	[{"changed": {"fields": ["Descipcion"]}}]	13	1
21	2022-03-25 06:23:13.807472+00	1	PerfilServicios object (1)	1	[{"added": {}}]	14	1
22	2022-03-26 06:14:45.840621+00	1	Entorno para el idioma: Español	2	[{"changed": {"fields": ["ResumenHabilidades", "ResumenHabilidadesBlandas", "ResumenHabilidadesIdiomas", "ResumenPremios"]}}]	10	1
23	2022-03-26 06:38:22.596745+00	2	Idioma: Español, Título: HTML	1	[{"added": {}}]	8	1
24	2022-03-26 06:49:12.025734+00	2	Idioma: Todos, Título: HTML	2	[{"changed": {"fields": ["Idioma"]}}]	8	1
25	2022-03-26 06:52:43.531153+00	3	Idioma: Todos, Título: CSS	1	[{"added": {}}]	8	1
26	2022-03-26 20:18:58.751442+00	1	Idioma: Español	2	[{"changed": {"fields": ["EnlaceLinkedin", "EnlaceGithub"]}}]	13	1
27	2022-03-26 20:36:54.156637+00	1	Clave: es, Titulo: Español	2	[{"changed": {"fields": ["Imagen"]}}]	11	1
28	2022-05-01 21:16:38.177627+00	2	Clave: en, Titulo: English	2	[{"changed": {"fields": ["Imagen"]}}]	11	1
29	2022-05-01 23:35:19.586053+00	2	Entorno para el idioma: English	2	[{"changed": {"fields": ["InicioPrefijoSoy"]}}]	10	1
30	2022-05-01 23:42:20.048967+00	3	Idioma: Todos, Título: CSS	2	[{"changed": {"fields": ["Porcentaje"]}}]	8	1
\.


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: portfolio_user
--

COPY public.django_content_type (id, app_label, model) FROM stdin;
1	admin	logentry
2	auth	permission
3	auth	group
4	auth	user
5	contenttypes	contenttype
6	sessions	session
7	Portfolio	formacion
8	Portfolio	habilidad
9	Portfolio	idiomapalabra
10	Portfolio	idiomaentorno
11	Portfolio	idioma
12	Portfolio	contactoasunto
13	Portfolio	perfil
14	Portfolio	perfilservicios
15	Portfolio	testimonial
\.


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: portfolio_user
--

COPY public.django_migrations (id, app, name, applied) FROM stdin;
1	Portfolio	0001_initial	2022-02-19 19:12:57.176396+00
2	contenttypes	0001_initial	2022-02-19 19:12:57.284461+00
3	auth	0001_initial	2022-02-19 19:12:58.391291+00
4	admin	0001_initial	2022-02-19 19:12:58.567195+00
5	admin	0002_logentry_remove_auto_add	2022-02-19 19:12:58.591276+00
6	admin	0003_logentry_add_action_flag_choices	2022-02-19 19:12:58.60824+00
7	contenttypes	0002_remove_content_type_name	2022-02-19 19:12:58.671453+00
8	auth	0002_alter_permission_name_max_length	2022-02-19 19:12:58.693351+00
9	auth	0003_alter_user_email_max_length	2022-02-19 19:12:58.714343+00
10	auth	0004_alter_user_username_opts	2022-02-19 19:12:58.727294+00
11	auth	0005_alter_user_last_login_null	2022-02-19 19:12:58.739212+00
12	auth	0006_require_contenttypes_0002	2022-02-19 19:12:58.742256+00
13	auth	0007_alter_validators_add_error_messages	2022-02-19 19:12:58.753227+00
14	auth	0008_alter_user_username_max_length	2022-02-19 19:12:58.807348+00
15	auth	0009_alter_user_last_name_max_length	2022-02-19 19:12:58.818288+00
16	auth	0010_alter_group_name_max_length	2022-02-19 19:12:58.829258+00
17	auth	0011_update_proxy_permissions	2022-02-19 19:12:58.838234+00
18	auth	0012_alter_user_first_name_max_length	2022-02-19 19:12:58.84721+00
19	sessions	0001_initial	2022-02-19 19:12:58.993682+00
20	Portfolio	0002_auto_20220303_1106	2022-03-03 16:06:22.250245+00
21	Portfolio	0003_auto_20220305_2142	2022-03-06 02:42:11.767643+00
22	Portfolio	0004_auto_20220305_2304	2022-03-06 04:04:18.681584+00
23	Portfolio	0005_auto_20220307_1716	2022-03-07 22:16:12.404092+00
24	Portfolio	0006_auto_20220307_1801	2022-03-07 23:01:28.326774+00
\.


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: portfolio_user
--

COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
18m69mzz2nq94yq2ges11y6ob4w7xecr	.eJxVjMsOwiAQRf-FtSE8BgSX7vsNZAamUjU0Ke3K-O_apAvd3nPOfYmE21rT1nlJUxEXocXpdyPMD247KHdst1nmua3LRHJX5EG7HObCz-vh_h1U7PVb-2wiaQaP5AMAaIwhG4sKjA4RjHP27NhmS-BQcQnEbjSKRgzeEbN4fwDCcDea:1nLVJn:NOHymVUCSJSLA_eSuIG0pv26116F53ykgMDMPzrsXGc	2022-03-05 19:22:55.750755+00
g9qy4muo9vc52rqseybgnzdhb45h2ny3	.eJxVjMsOwiAQRf-FtSE8BgSX7vsNZAamUjU0Ke3K-O_apAvd3nPOfYmE21rT1nlJUxEXocXpdyPMD247KHdst1nmua3LRHJX5EG7HObCz-vh_h1U7PVb-2wiaQaP5AMAaIwhG4sKjA4RjHP27NhmS-BQcQnEbjSKRgzeEbN4fwDCcDea:1nPnwc:gsGVw_wBb80C8FxEqDcDGYmeFATjxQWBWPIbC9LjDpc	2022-03-17 16:04:46.076282+00
qr53sfbggtxdnypwywn9cz6csbiyhwfy	.eJxVjMsOwiAQRf-FtSE8BgSX7vsNZAamUjU0Ke3K-O_apAvd3nPOfYmE21rT1nlJUxEXocXpdyPMD247KHdst1nmua3LRHJX5EG7HObCz-vh_h1U7PVb-2wiaQaP5AMAaIwhG4sKjA4RjHP27NhmS-BQcQnEbjSKRgzeEbN4fwDCcDea:1nXd0X:PAd-KsrUYM72L9_YEC5luDgPBpoz0OxvEHXdpceBWVQ	2022-04-08 06:01:09.548732+00
qwzvaoj5wiapcyru3xn6lymsdeicz8vr	.eJxVjMsOwiAQRf-FtSE8BgSX7vsNZAamUjU0Ke3K-O_apAvd3nPOfYmE21rT1nlJUxEXocXpdyPMD247KHdst1nmua3LRHJX5EG7HObCz-vh_h1U7PVb-2wiaQaP5AMAaIwhG4sKjA4RjHP27NhmS-BQcQnEbjSKRgzeEbN4fwDCcDea:1nlGvQ:zKVrP9HbnJBZPlXBYH7KVRYnj3h5HWwkAz2HbBoMf_I	2022-05-15 21:16:16.129176+00
\.


--
-- Name: Portfolio_formacion_id_seq; Type: SEQUENCE SET; Schema: public; Owner: portfolio_user
--

SELECT pg_catalog.setval('public."Portfolio_formacion_id_seq"', 2, true);


--
-- Name: Portfolio_habilidad_id_seq; Type: SEQUENCE SET; Schema: public; Owner: portfolio_user
--

SELECT pg_catalog.setval('public."Portfolio_habilidad_id_seq"', 3, true);


--
-- Name: Portfolio_idioma_id_seq; Type: SEQUENCE SET; Schema: public; Owner: portfolio_user
--

SELECT pg_catalog.setval('public."Portfolio_idioma_id_seq"', 2, true);


--
-- Name: Portfolio_testimonial_id_seq; Type: SEQUENCE SET; Schema: public; Owner: portfolio_user
--

SELECT pg_catalog.setval('public."Portfolio_testimonial_id_seq"', 1, false);


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: portfolio_user
--

SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: portfolio_user
--

SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: portfolio_user
--

SELECT pg_catalog.setval('public.auth_permission_id_seq', 60, true);


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: portfolio_user
--

SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: portfolio_user
--

SELECT pg_catalog.setval('public.auth_user_id_seq', 1, true);


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: portfolio_user
--

SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: portfolio_user
--

SELECT pg_catalog.setval('public.django_admin_log_id_seq', 30, true);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: portfolio_user
--

SELECT pg_catalog.setval('public.django_content_type_id_seq', 15, true);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: portfolio_user
--

SELECT pg_catalog.setval('public.django_migrations_id_seq', 24, true);


--
-- Name: Portfolio_contactoasunto Portfolio_contactoasunto_pkey; Type: CONSTRAINT; Schema: public; Owner: portfolio_user
--

ALTER TABLE ONLY public."Portfolio_contactoasunto"
    ADD CONSTRAINT "Portfolio_contactoasunto_pkey" PRIMARY KEY (idioma_id);


--
-- Name: Portfolio_formacion Portfolio_formacion_pkey; Type: CONSTRAINT; Schema: public; Owner: portfolio_user
--

ALTER TABLE ONLY public."Portfolio_formacion"
    ADD CONSTRAINT "Portfolio_formacion_pkey" PRIMARY KEY (id);


--
-- Name: Portfolio_habilidad Portfolio_habilidad_pkey; Type: CONSTRAINT; Schema: public; Owner: portfolio_user
--

ALTER TABLE ONLY public."Portfolio_habilidad"
    ADD CONSTRAINT "Portfolio_habilidad_pkey" PRIMARY KEY (id);


--
-- Name: Portfolio_idioma Portfolio_idioma_pkey; Type: CONSTRAINT; Schema: public; Owner: portfolio_user
--

ALTER TABLE ONLY public."Portfolio_idioma"
    ADD CONSTRAINT "Portfolio_idioma_pkey" PRIMARY KEY (id);


--
-- Name: Portfolio_idiomaentorno Portfolio_idiomaentorno_pkey; Type: CONSTRAINT; Schema: public; Owner: portfolio_user
--

ALTER TABLE ONLY public."Portfolio_idiomaentorno"
    ADD CONSTRAINT "Portfolio_idiomaentorno_pkey" PRIMARY KEY (idioma_id);


--
-- Name: Portfolio_perfil Portfolio_perfil_pkey; Type: CONSTRAINT; Schema: public; Owner: portfolio_user
--

ALTER TABLE ONLY public."Portfolio_perfil"
    ADD CONSTRAINT "Portfolio_perfil_pkey" PRIMARY KEY (idioma_id);


--
-- Name: Portfolio_perfilservicios Portfolio_perfilservicios_pkey; Type: CONSTRAINT; Schema: public; Owner: portfolio_user
--

ALTER TABLE ONLY public."Portfolio_perfilservicios"
    ADD CONSTRAINT "Portfolio_perfilservicios_pkey" PRIMARY KEY (idioma_id);


--
-- Name: Portfolio_testimonial Portfolio_testimonial_pkey; Type: CONSTRAINT; Schema: public; Owner: portfolio_user
--

ALTER TABLE ONLY public."Portfolio_testimonial"
    ADD CONSTRAINT "Portfolio_testimonial_pkey" PRIMARY KEY (id);


--
-- Name: auth_group auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: portfolio_user
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- Name: auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq; Type: CONSTRAINT; Schema: public; Owner: portfolio_user
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);


--
-- Name: auth_group_permissions auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: portfolio_user
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_group auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: portfolio_user
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- Name: auth_permission auth_permission_content_type_id_codename_01ab375a_uniq; Type: CONSTRAINT; Schema: public; Owner: portfolio_user
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);


--
-- Name: auth_permission auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: portfolio_user
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: portfolio_user
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq; Type: CONSTRAINT; Schema: public; Owner: portfolio_user
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);


--
-- Name: auth_user auth_user_pkey; Type: CONSTRAINT; Schema: public; Owner: portfolio_user
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: portfolio_user
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq; Type: CONSTRAINT; Schema: public; Owner: portfolio_user
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);


--
-- Name: auth_user auth_user_username_key; Type: CONSTRAINT; Schema: public; Owner: portfolio_user
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);


--
-- Name: django_admin_log django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: portfolio_user
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- Name: django_content_type django_content_type_app_label_model_76bd3d3b_uniq; Type: CONSTRAINT; Schema: public; Owner: portfolio_user
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);


--
-- Name: django_content_type django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: portfolio_user
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- Name: django_migrations django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: portfolio_user
--

ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- Name: django_session django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: portfolio_user
--

ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- Name: Portfolio_formacion_idioma_id_b3f344a1; Type: INDEX; Schema: public; Owner: portfolio_user
--

CREATE INDEX "Portfolio_formacion_idioma_id_b3f344a1" ON public."Portfolio_formacion" USING btree (idioma_id);


--
-- Name: Portfolio_habilidad_idioma_id_4326d1a0; Type: INDEX; Schema: public; Owner: portfolio_user
--

CREATE INDEX "Portfolio_habilidad_idioma_id_4326d1a0" ON public."Portfolio_habilidad" USING btree (idioma_id);


--
-- Name: auth_group_name_a6ea08ec_like; Type: INDEX; Schema: public; Owner: portfolio_user
--

CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);


--
-- Name: auth_group_permissions_group_id_b120cbf9; Type: INDEX; Schema: public; Owner: portfolio_user
--

CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);


--
-- Name: auth_group_permissions_permission_id_84c5c92e; Type: INDEX; Schema: public; Owner: portfolio_user
--

CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);


--
-- Name: auth_permission_content_type_id_2f476e4b; Type: INDEX; Schema: public; Owner: portfolio_user
--

CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);


--
-- Name: auth_user_groups_group_id_97559544; Type: INDEX; Schema: public; Owner: portfolio_user
--

CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);


--
-- Name: auth_user_groups_user_id_6a12ed8b; Type: INDEX; Schema: public; Owner: portfolio_user
--

CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);


--
-- Name: auth_user_user_permissions_permission_id_1fbb5f2c; Type: INDEX; Schema: public; Owner: portfolio_user
--

CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);


--
-- Name: auth_user_user_permissions_user_id_a95ead1b; Type: INDEX; Schema: public; Owner: portfolio_user
--

CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);


--
-- Name: auth_user_username_6821ab7c_like; Type: INDEX; Schema: public; Owner: portfolio_user
--

CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);


--
-- Name: django_admin_log_content_type_id_c4bce8eb; Type: INDEX; Schema: public; Owner: portfolio_user
--

CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);


--
-- Name: django_admin_log_user_id_c564eba6; Type: INDEX; Schema: public; Owner: portfolio_user
--

CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);


--
-- Name: django_session_expire_date_a5c62663; Type: INDEX; Schema: public; Owner: portfolio_user
--

CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);


--
-- Name: django_session_session_key_c0390e0f_like; Type: INDEX; Schema: public; Owner: portfolio_user
--

CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);


--
-- Name: Portfolio_contactoasunto Portfolio_contactoas_idioma_id_30cbe1d7_fk_Portfolio; Type: FK CONSTRAINT; Schema: public; Owner: portfolio_user
--

ALTER TABLE ONLY public."Portfolio_contactoasunto"
    ADD CONSTRAINT "Portfolio_contactoas_idioma_id_30cbe1d7_fk_Portfolio" FOREIGN KEY (idioma_id) REFERENCES public."Portfolio_idioma"(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: Portfolio_formacion Portfolio_formacion_idioma_id_b3f344a1_fk_Portfolio_idioma_id; Type: FK CONSTRAINT; Schema: public; Owner: portfolio_user
--

ALTER TABLE ONLY public."Portfolio_formacion"
    ADD CONSTRAINT "Portfolio_formacion_idioma_id_b3f344a1_fk_Portfolio_idioma_id" FOREIGN KEY (idioma_id) REFERENCES public."Portfolio_idioma"(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: Portfolio_habilidad Portfolio_habilidad_idioma_id_4326d1a0_fk_Portfolio_idioma_id; Type: FK CONSTRAINT; Schema: public; Owner: portfolio_user
--

ALTER TABLE ONLY public."Portfolio_habilidad"
    ADD CONSTRAINT "Portfolio_habilidad_idioma_id_4326d1a0_fk_Portfolio_idioma_id" FOREIGN KEY (idioma_id) REFERENCES public."Portfolio_idioma"(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: Portfolio_idiomaentorno Portfolio_idiomaento_idioma_id_1ae22e74_fk_Portfolio; Type: FK CONSTRAINT; Schema: public; Owner: portfolio_user
--

ALTER TABLE ONLY public."Portfolio_idiomaentorno"
    ADD CONSTRAINT "Portfolio_idiomaento_idioma_id_1ae22e74_fk_Portfolio" FOREIGN KEY (idioma_id) REFERENCES public."Portfolio_idioma"(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: Portfolio_perfil Portfolio_perfil_idioma_id_07a45ca3_fk_Portfolio_idioma_id; Type: FK CONSTRAINT; Schema: public; Owner: portfolio_user
--

ALTER TABLE ONLY public."Portfolio_perfil"
    ADD CONSTRAINT "Portfolio_perfil_idioma_id_07a45ca3_fk_Portfolio_idioma_id" FOREIGN KEY (idioma_id) REFERENCES public."Portfolio_idioma"(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: Portfolio_perfilservicios Portfolio_perfilserv_idioma_id_ee56117c_fk_Portfolio; Type: FK CONSTRAINT; Schema: public; Owner: portfolio_user
--

ALTER TABLE ONLY public."Portfolio_perfilservicios"
    ADD CONSTRAINT "Portfolio_perfilserv_idioma_id_ee56117c_fk_Portfolio" FOREIGN KEY (idioma_id) REFERENCES public."Portfolio_idioma"(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: portfolio_user
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: portfolio_user
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: portfolio_user
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: portfolio_user
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: portfolio_user
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: portfolio_user
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: portfolio_user
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: portfolio_user
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: portfolio_user
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- PostgreSQL database dump complete
--

