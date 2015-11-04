--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: auth_group; Type: TABLE; Schema: public; Owner: pancakes; Tablespace: 
--

CREATE TABLE auth_group (
    id integer NOT NULL,
    name character varying(80) NOT NULL
);


ALTER TABLE auth_group OWNER TO pancakes;

--
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: pancakes
--

CREATE SEQUENCE auth_group_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE auth_group_id_seq OWNER TO pancakes;

--
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: pancakes
--

ALTER SEQUENCE auth_group_id_seq OWNED BY auth_group.id;


--
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: pancakes; Tablespace: 
--

CREATE TABLE auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE auth_group_permissions OWNER TO pancakes;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: pancakes
--

CREATE SEQUENCE auth_group_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE auth_group_permissions_id_seq OWNER TO pancakes;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: pancakes
--

ALTER SEQUENCE auth_group_permissions_id_seq OWNED BY auth_group_permissions.id;


--
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: pancakes; Tablespace: 
--

CREATE TABLE auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


ALTER TABLE auth_permission OWNER TO pancakes;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: pancakes
--

CREATE SEQUENCE auth_permission_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE auth_permission_id_seq OWNER TO pancakes;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: pancakes
--

ALTER SEQUENCE auth_permission_id_seq OWNED BY auth_permission.id;


--
-- Name: auth_user; Type: TABLE; Schema: public; Owner: pancakes; Tablespace: 
--

CREATE TABLE auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(30) NOT NULL,
    first_name character varying(30) NOT NULL,
    last_name character varying(30) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);


ALTER TABLE auth_user OWNER TO pancakes;

--
-- Name: auth_user_groups; Type: TABLE; Schema: public; Owner: pancakes; Tablespace: 
--

CREATE TABLE auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE auth_user_groups OWNER TO pancakes;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: pancakes
--

CREATE SEQUENCE auth_user_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE auth_user_groups_id_seq OWNER TO pancakes;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: pancakes
--

ALTER SEQUENCE auth_user_groups_id_seq OWNED BY auth_user_groups.id;


--
-- Name: auth_user_id_seq; Type: SEQUENCE; Schema: public; Owner: pancakes
--

CREATE SEQUENCE auth_user_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE auth_user_id_seq OWNER TO pancakes;

--
-- Name: auth_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: pancakes
--

ALTER SEQUENCE auth_user_id_seq OWNED BY auth_user.id;


--
-- Name: auth_user_user_permissions; Type: TABLE; Schema: public; Owner: pancakes; Tablespace: 
--

CREATE TABLE auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE auth_user_user_permissions OWNER TO pancakes;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: pancakes
--

CREATE SEQUENCE auth_user_user_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE auth_user_user_permissions_id_seq OWNER TO pancakes;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: pancakes
--

ALTER SEQUENCE auth_user_user_permissions_id_seq OWNED BY auth_user_user_permissions.id;


--
-- Name: cakes_ingredient; Type: TABLE; Schema: public; Owner: pancakes; Tablespace: 
--

CREATE TABLE cakes_ingredient (
    id integer NOT NULL,
    name character varying(1024) NOT NULL
);


ALTER TABLE cakes_ingredient OWNER TO pancakes;

--
-- Name: cakes_ingredient_id_seq; Type: SEQUENCE; Schema: public; Owner: pancakes
--

CREATE SEQUENCE cakes_ingredient_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE cakes_ingredient_id_seq OWNER TO pancakes;

--
-- Name: cakes_ingredient_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: pancakes
--

ALTER SEQUENCE cakes_ingredient_id_seq OWNED BY cakes_ingredient.id;


--
-- Name: cakes_recipe; Type: TABLE; Schema: public; Owner: pancakes; Tablespace: 
--

CREATE TABLE cakes_recipe (
    id integer NOT NULL,
    name character varying(1024) NOT NULL
);


ALTER TABLE cakes_recipe OWNER TO pancakes;

--
-- Name: cakes_recipe_id_seq; Type: SEQUENCE; Schema: public; Owner: pancakes
--

CREATE SEQUENCE cakes_recipe_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE cakes_recipe_id_seq OWNER TO pancakes;

--
-- Name: cakes_recipe_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: pancakes
--

ALTER SEQUENCE cakes_recipe_id_seq OWNED BY cakes_recipe.id;


--
-- Name: cakes_recipecontent; Type: TABLE; Schema: public; Owner: pancakes; Tablespace: 
--

CREATE TABLE cakes_recipecontent (
    id integer NOT NULL,
    recipe_id integer NOT NULL
);


ALTER TABLE cakes_recipecontent OWNER TO pancakes;

--
-- Name: cakes_recipecontent_contents; Type: TABLE; Schema: public; Owner: pancakes; Tablespace: 
--

CREATE TABLE cakes_recipecontent_contents (
    id integer NOT NULL,
    recipecontent_id integer NOT NULL,
    ingredient_id integer NOT NULL
);


ALTER TABLE cakes_recipecontent_contents OWNER TO pancakes;

--
-- Name: cakes_recipecontent_contents_id_seq; Type: SEQUENCE; Schema: public; Owner: pancakes
--

CREATE SEQUENCE cakes_recipecontent_contents_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE cakes_recipecontent_contents_id_seq OWNER TO pancakes;

--
-- Name: cakes_recipecontent_contents_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: pancakes
--

ALTER SEQUENCE cakes_recipecontent_contents_id_seq OWNED BY cakes_recipecontent_contents.id;


--
-- Name: cakes_recipecontent_id_seq; Type: SEQUENCE; Schema: public; Owner: pancakes
--

CREATE SEQUENCE cakes_recipecontent_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE cakes_recipecontent_id_seq OWNER TO pancakes;

--
-- Name: cakes_recipecontent_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: pancakes
--

ALTER SEQUENCE cakes_recipecontent_id_seq OWNED BY cakes_recipecontent.id;


--
-- Name: cakes_variation; Type: TABLE; Schema: public; Owner: pancakes; Tablespace: 
--

CREATE TABLE cakes_variation (
    id integer NOT NULL,
    name character varying(1024) NOT NULL,
    ingredient_id integer NOT NULL
);


ALTER TABLE cakes_variation OWNER TO pancakes;

--
-- Name: cakes_variation_id_seq; Type: SEQUENCE; Schema: public; Owner: pancakes
--

CREATE SEQUENCE cakes_variation_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE cakes_variation_id_seq OWNER TO pancakes;

--
-- Name: cakes_variation_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: pancakes
--

ALTER SEQUENCE cakes_variation_id_seq OWNED BY cakes_variation.id;


--
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: pancakes; Tablespace: 
--

CREATE TABLE django_admin_log (
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


ALTER TABLE django_admin_log OWNER TO pancakes;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: pancakes
--

CREATE SEQUENCE django_admin_log_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE django_admin_log_id_seq OWNER TO pancakes;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: pancakes
--

ALTER SEQUENCE django_admin_log_id_seq OWNED BY django_admin_log.id;


--
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: pancakes; Tablespace: 
--

CREATE TABLE django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE django_content_type OWNER TO pancakes;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: pancakes
--

CREATE SEQUENCE django_content_type_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE django_content_type_id_seq OWNER TO pancakes;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: pancakes
--

ALTER SEQUENCE django_content_type_id_seq OWNED BY django_content_type.id;


--
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: pancakes; Tablespace: 
--

CREATE TABLE django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


ALTER TABLE django_migrations OWNER TO pancakes;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: pancakes
--

CREATE SEQUENCE django_migrations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE django_migrations_id_seq OWNER TO pancakes;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: pancakes
--

ALTER SEQUENCE django_migrations_id_seq OWNED BY django_migrations.id;


--
-- Name: django_session; Type: TABLE; Schema: public; Owner: pancakes; Tablespace: 
--

CREATE TABLE django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE django_session OWNER TO pancakes;

--
-- Name: id; Type: DEFAULT; Schema: public; Owner: pancakes
--

ALTER TABLE ONLY auth_group ALTER COLUMN id SET DEFAULT nextval('auth_group_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: pancakes
--

ALTER TABLE ONLY auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('auth_group_permissions_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: pancakes
--

ALTER TABLE ONLY auth_permission ALTER COLUMN id SET DEFAULT nextval('auth_permission_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: pancakes
--

ALTER TABLE ONLY auth_user ALTER COLUMN id SET DEFAULT nextval('auth_user_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: pancakes
--

ALTER TABLE ONLY auth_user_groups ALTER COLUMN id SET DEFAULT nextval('auth_user_groups_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: pancakes
--

ALTER TABLE ONLY auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('auth_user_user_permissions_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: pancakes
--

ALTER TABLE ONLY cakes_ingredient ALTER COLUMN id SET DEFAULT nextval('cakes_ingredient_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: pancakes
--

ALTER TABLE ONLY cakes_recipe ALTER COLUMN id SET DEFAULT nextval('cakes_recipe_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: pancakes
--

ALTER TABLE ONLY cakes_recipecontent ALTER COLUMN id SET DEFAULT nextval('cakes_recipecontent_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: pancakes
--

ALTER TABLE ONLY cakes_recipecontent_contents ALTER COLUMN id SET DEFAULT nextval('cakes_recipecontent_contents_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: pancakes
--

ALTER TABLE ONLY cakes_variation ALTER COLUMN id SET DEFAULT nextval('cakes_variation_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: pancakes
--

ALTER TABLE ONLY django_admin_log ALTER COLUMN id SET DEFAULT nextval('django_admin_log_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: pancakes
--

ALTER TABLE ONLY django_content_type ALTER COLUMN id SET DEFAULT nextval('django_content_type_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: pancakes
--

ALTER TABLE ONLY django_migrations ALTER COLUMN id SET DEFAULT nextval('django_migrations_id_seq'::regclass);


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: pancakes
--

COPY auth_group (id, name) FROM stdin;
\.


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pancakes
--

SELECT pg_catalog.setval('auth_group_id_seq', 1, false);


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: pancakes
--

COPY auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pancakes
--

SELECT pg_catalog.setval('auth_group_permissions_id_seq', 1, false);


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: pancakes
--

COPY auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add log entry	1	add_logentry
2	Can change log entry	1	change_logentry
3	Can delete log entry	1	delete_logentry
4	Can add permission	2	add_permission
5	Can change permission	2	change_permission
6	Can delete permission	2	delete_permission
7	Can add group	3	add_group
8	Can change group	3	change_group
9	Can delete group	3	delete_group
10	Can add user	4	add_user
11	Can change user	4	change_user
12	Can delete user	4	delete_user
13	Can add content type	5	add_contenttype
14	Can change content type	5	change_contenttype
15	Can delete content type	5	delete_contenttype
16	Can add session	6	add_session
17	Can change session	6	change_session
18	Can delete session	6	delete_session
19	Can add recipe	7	add_recipe
20	Can change recipe	7	change_recipe
21	Can delete recipe	7	delete_recipe
22	Can add ingredient	8	add_ingredient
23	Can change ingredient	8	change_ingredient
24	Can delete ingredient	8	delete_ingredient
25	Can add variation	9	add_variation
26	Can change variation	9	change_variation
27	Can delete variation	9	delete_variation
28	Can add recipe content	10	add_recipecontent
29	Can change recipe content	10	change_recipecontent
30	Can delete recipe content	10	delete_recipecontent
\.


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pancakes
--

SELECT pg_catalog.setval('auth_permission_id_seq', 30, true);


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: pancakes
--

COPY auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
1	pbkdf2_sha256$20000$8gy4jnXspyd6$9CbyjykezBL2DvZteZxreUeBjEyCjJYwYqlDevJkpVs=	2015-11-04 02:31:14.627363+05	t	lobziq			lobziq@gmail.com	t	t	2015-11-03 00:19:42.435301+05
\.


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: pancakes
--

COPY auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pancakes
--

SELECT pg_catalog.setval('auth_user_groups_id_seq', 1, false);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pancakes
--

SELECT pg_catalog.setval('auth_user_id_seq', 1, true);


--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: pancakes
--

COPY auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pancakes
--

SELECT pg_catalog.setval('auth_user_user_permissions_id_seq', 1, false);


--
-- Data for Name: cakes_ingredient; Type: TABLE DATA; Schema: public; Owner: pancakes
--

COPY cakes_ingredient (id, name) FROM stdin;
1	Печенье
2	Молоко
3	Блины
4	Кот
6	Картошка
7	Масло подсолнечное
5	Чай
8	мука
9	яйцо
10	сахар
11	уксус
12	джем
13	мед жидкий  
14	сода пищевая
15	масло сливочное
16	сахарная пудра
\.


--
-- Name: cakes_ingredient_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pancakes
--

SELECT pg_catalog.setval('cakes_ingredient_id_seq', 16, true);


--
-- Data for Name: cakes_recipe; Type: TABLE DATA; Schema: public; Owner: pancakes
--

COPY cakes_recipe (id, name) FROM stdin;
1	Печенье с молоком
2	Кот и блины
3	Жареная картошка
4	Печенье с чаем
5	Печенье сэндвич
\.


--
-- Name: cakes_recipe_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pancakes
--

SELECT pg_catalog.setval('cakes_recipe_id_seq', 5, true);


--
-- Data for Name: cakes_recipecontent; Type: TABLE DATA; Schema: public; Owner: pancakes
--

COPY cakes_recipecontent (id, recipe_id) FROM stdin;
3	1
4	2
6	4
7	3
8	5
\.


--
-- Data for Name: cakes_recipecontent_contents; Type: TABLE DATA; Schema: public; Owner: pancakes
--

COPY cakes_recipecontent_contents (id, recipecontent_id, ingredient_id) FROM stdin;
7	3	1
8	3	2
11	4	3
12	4	4
14	6	1
15	6	5
16	7	6
17	7	7
18	8	8
19	8	9
20	8	10
21	8	11
22	8	12
23	8	13
24	8	14
25	8	15
26	8	16
\.


--
-- Name: cakes_recipecontent_contents_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pancakes
--

SELECT pg_catalog.setval('cakes_recipecontent_contents_id_seq', 26, true);


--
-- Name: cakes_recipecontent_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pancakes
--

SELECT pg_catalog.setval('cakes_recipecontent_id_seq', 8, true);


--
-- Data for Name: cakes_variation; Type: TABLE DATA; Schema: public; Owner: pancakes
--

COPY cakes_variation (id, name, ingredient_id) FROM stdin;
1	ПЕЧЕНЬЕ БОЛЬШЕВИК ЮБИЛЕЙНОЕ 250Г КК УТРЕННЕЕ С КАКАО	1
2	Чеширский кот	4
3	Масло "Идеал" подсолнечное рафинированное 1л	7
4	Масло "Олейна" подсолнечное рафинированное 1л	7
5	Масло "Злато" подсолнечное рафинированное 1л	7
6	Чай "Гринфилд" Лемон спарк 1,5г*25	5
7	Чай "Липтон" черный листовой 100г	5
8	Чай "Черный Дракон" Молочный улун 100г м/у	5
\.


--
-- Name: cakes_variation_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pancakes
--

SELECT pg_catalog.setval('cakes_variation_id_seq', 8, true);


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: pancakes
--

COPY django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
1	2015-11-03 02:14:53.602709+05	1	Печенье	1		8	1
2	2015-11-03 02:15:02.715727+05	2	Молоко	1		8	1
3	2015-11-03 02:15:09.331947+05	1	Печенье с молоком	2	Changed name and ingredients.	7	1
4	2015-11-03 03:08:51.521911+05	1	ПЕЧЕНЬЕ БОЛЬШЕВИК ЮБИЛЕЙНОЕ 250Г КК УТРЕННЕЕ С КАКАО	1		9	1
5	2015-11-03 03:16:59.154995+05	3	RecipeContent object	1		10	1
6	2015-11-03 03:17:03.922988+05	3	RecipeContent object	2	Changed contents.	10	1
7	2015-11-03 03:18:47.007648+05	1	ПЕЧЕНЬЕ БОЛЬШЕВИК ЮБИЛЕЙНОЕ 250Г КК УТРЕННЕЕ С КАКАО	2	No fields changed.	9	1
8	2015-11-03 03:28:52.869102+05	3	Печенье с молоком	2	No fields changed.	10	1
9	2015-11-03 03:29:20.441843+05	2	Кот и блины	1		7	1
10	2015-11-03 03:29:26.227447+05	3	Блины	1		8	1
11	2015-11-03 03:29:31.038798+05	4	Кот	1		8	1
12	2015-11-03 03:29:33.616781+05	4	Кот и блины	1		10	1
13	2015-11-03 03:29:37.114555+05	4	Кот и блины	2	No fields changed.	10	1
14	2015-11-03 03:59:14.577278+05	2	Чеширский кот	1		9	1
15	2015-11-03 14:56:26.387896+05	3	Жареная картошка	1		7	1
16	2015-11-03 14:56:40.943371+05	4	Печенье с чаем	1		7	1
17	2015-11-03 15:00:15.146867+05	2	Чеширский кот	2	No fields changed.	9	1
18	2015-11-03 15:01:08.087788+05	4	Кот	2	No fields changed.	8	1
19	2015-11-03 15:06:30.309584+05	5	Печенье с чаем	1		10	1
20	2015-11-03 15:06:39.883669+05	5	Чай	1		8	1
21	2015-11-03 15:06:44.436512+05	6	Картошка	1		8	1
22	2015-11-03 15:06:56.452958+05	7	Масло подсолнечное	1		8	1
23	2015-11-03 15:10:37.416386+05	6	Печенье с чаем	1		10	1
24	2015-11-03 15:10:52.381064+05	5	Печенье с чаем	3		10	1
25	2015-11-03 15:11:08.25202+05	7	Жареная картошка	1		10	1
26	2015-11-03 15:13:19.686755+05	7	Масло подсолнечное	2	Added variation "Масло "Идеал" подсолнечное рафинированное 1л". Added variation "Масло "Олейна" подсолнечное рафинированное 1л". Added variation "Масло "Злато" подсолнечное рафинированное 1л".	8	1
27	2015-11-03 15:16:03.516532+05	5	Чай	2	Added variation "Чай "Гринфилд" Лемон спарк 1,5г*25". Added variation "Чай "Липтон" черный листовой 100г". Added variation "Чай "Черный Дракон" Молочный улун 100г м/у".	8	1
28	2015-11-04 15:25:51.931078+05	5	Печенье сэндвич	1		7	1
29	2015-11-04 15:26:50.018635+05	8	мука	1		8	1
30	2015-11-04 15:26:59.656074+05	9	яйцо	1		8	1
31	2015-11-04 15:27:12.465629+05	10	сахар	1		8	1
32	2015-11-04 15:27:16.301267+05	11	уксус	1		8	1
33	2015-11-04 15:27:19.842973+05	12	джем	1		8	1
34	2015-11-04 15:27:25.60585+05	13	мед жидкий  	1		8	1
35	2015-11-04 15:27:32.524623+05	14	сода пищевая	1		8	1
36	2015-11-04 15:27:39.44434+05	15	масло сливочное	1		8	1
37	2015-11-04 15:27:44.249619+05	16	сахарная пудра	1		8	1
38	2015-11-04 15:28:21.856272+05	8	Печенье сэндвич content	1		10	1
\.


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pancakes
--

SELECT pg_catalog.setval('django_admin_log_id_seq', 38, true);


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: pancakes
--

COPY django_content_type (id, app_label, model) FROM stdin;
1	admin	logentry
2	auth	permission
3	auth	group
4	auth	user
5	contenttypes	contenttype
6	sessions	session
7	cakes	recipe
8	cakes	ingredient
9	cakes	variation
10	cakes	recipecontent
\.


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pancakes
--

SELECT pg_catalog.setval('django_content_type_id_seq', 10, true);


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: pancakes
--

COPY django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2015-11-02 22:58:57.004951+05
2	auth	0001_initial	2015-11-02 22:58:57.163089+05
3	admin	0001_initial	2015-11-02 22:58:57.22559+05
4	contenttypes	0002_remove_content_type_name	2015-11-02 22:58:57.256825+05
5	auth	0002_alter_permission_name_max_length	2015-11-02 22:58:57.27245+05
6	auth	0003_alter_user_email_max_length	2015-11-02 22:58:57.27245+05
7	auth	0004_alter_user_username_opts	2015-11-02 22:58:57.288087+05
8	auth	0005_alter_user_last_login_null	2015-11-02 22:58:57.288087+05
9	auth	0006_require_contenttypes_0002	2015-11-02 22:58:57.288087+05
10	sessions	0001_initial	2015-11-02 22:58:57.334952+05
11	cakes	0001_initial	2015-11-03 00:30:15.764273+05
12	cakes	0002_auto_20151103_0213	2015-11-03 02:13:56.705916+05
13	cakes	0003_auto_20151103_0306	2015-11-03 03:07:05.029446+05
14	cakes	0004_recipecontent	2015-11-03 03:14:26.95311+05
\.


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pancakes
--

SELECT pg_catalog.setval('django_migrations_id_seq', 14, true);


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: pancakes
--

COPY django_session (session_key, session_data, expire_date) FROM stdin;
18k8ypof0sp49fkv0ih2lshw8g3lg8h9	Y2VkMjBlNTVkMWM3NTcyODAxY2ZlNDhkZDAyMGMwY2VmNzU1NTJmNDp7Il9hdXRoX3VzZXJfaGFzaCI6ImQzNTVjZmVhN2QzMjA1MDNmYzVlMmVjZTFiN2RjMDE0OWYyNGRlYjkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=	2015-11-18 02:31:14.632361+05
\.


--
-- Name: auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: pancakes; Tablespace: 
--

ALTER TABLE ONLY auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- Name: auth_group_permissions_group_id_permission_id_key; Type: CONSTRAINT; Schema: public; Owner: pancakes; Tablespace: 
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_key UNIQUE (group_id, permission_id);


--
-- Name: auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: pancakes; Tablespace: 
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: pancakes; Tablespace: 
--

ALTER TABLE ONLY auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- Name: auth_permission_content_type_id_codename_key; Type: CONSTRAINT; Schema: public; Owner: pancakes; Tablespace: 
--

ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_key UNIQUE (content_type_id, codename);


--
-- Name: auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: pancakes; Tablespace: 
--

ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: pancakes; Tablespace: 
--

ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups_user_id_group_id_key; Type: CONSTRAINT; Schema: public; Owner: pancakes; Tablespace: 
--

ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_key UNIQUE (user_id, group_id);


--
-- Name: auth_user_pkey; Type: CONSTRAINT; Schema: public; Owner: pancakes; Tablespace: 
--

ALTER TABLE ONLY auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: pancakes; Tablespace: 
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions_user_id_permission_id_key; Type: CONSTRAINT; Schema: public; Owner: pancakes; Tablespace: 
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_key UNIQUE (user_id, permission_id);


--
-- Name: auth_user_username_key; Type: CONSTRAINT; Schema: public; Owner: pancakes; Tablespace: 
--

ALTER TABLE ONLY auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);


--
-- Name: cakes_ingredient_pkey; Type: CONSTRAINT; Schema: public; Owner: pancakes; Tablespace: 
--

ALTER TABLE ONLY cakes_ingredient
    ADD CONSTRAINT cakes_ingredient_pkey PRIMARY KEY (id);


--
-- Name: cakes_recipe_pkey; Type: CONSTRAINT; Schema: public; Owner: pancakes; Tablespace: 
--

ALTER TABLE ONLY cakes_recipe
    ADD CONSTRAINT cakes_recipe_pkey PRIMARY KEY (id);


--
-- Name: cakes_recipecontent_contents_pkey; Type: CONSTRAINT; Schema: public; Owner: pancakes; Tablespace: 
--

ALTER TABLE ONLY cakes_recipecontent_contents
    ADD CONSTRAINT cakes_recipecontent_contents_pkey PRIMARY KEY (id);


--
-- Name: cakes_recipecontent_contents_recipecontent_id_ingredient_id_key; Type: CONSTRAINT; Schema: public; Owner: pancakes; Tablespace: 
--

ALTER TABLE ONLY cakes_recipecontent_contents
    ADD CONSTRAINT cakes_recipecontent_contents_recipecontent_id_ingredient_id_key UNIQUE (recipecontent_id, ingredient_id);


--
-- Name: cakes_recipecontent_pkey; Type: CONSTRAINT; Schema: public; Owner: pancakes; Tablespace: 
--

ALTER TABLE ONLY cakes_recipecontent
    ADD CONSTRAINT cakes_recipecontent_pkey PRIMARY KEY (id);


--
-- Name: cakes_variation_pkey; Type: CONSTRAINT; Schema: public; Owner: pancakes; Tablespace: 
--

ALTER TABLE ONLY cakes_variation
    ADD CONSTRAINT cakes_variation_pkey PRIMARY KEY (id);


--
-- Name: django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: pancakes; Tablespace: 
--

ALTER TABLE ONLY django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- Name: django_content_type_app_label_21b6f2a9_uniq; Type: CONSTRAINT; Schema: public; Owner: pancakes; Tablespace: 
--

ALTER TABLE ONLY django_content_type
    ADD CONSTRAINT django_content_type_app_label_21b6f2a9_uniq UNIQUE (app_label, model);


--
-- Name: django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: pancakes; Tablespace: 
--

ALTER TABLE ONLY django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- Name: django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: pancakes; Tablespace: 
--

ALTER TABLE ONLY django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- Name: django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: pancakes; Tablespace: 
--

ALTER TABLE ONLY django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- Name: auth_group_name_28c1c9b2_like; Type: INDEX; Schema: public; Owner: pancakes; Tablespace: 
--

CREATE INDEX auth_group_name_28c1c9b2_like ON auth_group USING btree (name varchar_pattern_ops);


--
-- Name: auth_group_permissions_0e939a4f; Type: INDEX; Schema: public; Owner: pancakes; Tablespace: 
--

CREATE INDEX auth_group_permissions_0e939a4f ON auth_group_permissions USING btree (group_id);


--
-- Name: auth_group_permissions_8373b171; Type: INDEX; Schema: public; Owner: pancakes; Tablespace: 
--

CREATE INDEX auth_group_permissions_8373b171 ON auth_group_permissions USING btree (permission_id);


--
-- Name: auth_permission_417f1b1c; Type: INDEX; Schema: public; Owner: pancakes; Tablespace: 
--

CREATE INDEX auth_permission_417f1b1c ON auth_permission USING btree (content_type_id);


--
-- Name: auth_user_groups_0e939a4f; Type: INDEX; Schema: public; Owner: pancakes; Tablespace: 
--

CREATE INDEX auth_user_groups_0e939a4f ON auth_user_groups USING btree (group_id);


--
-- Name: auth_user_groups_e8701ad4; Type: INDEX; Schema: public; Owner: pancakes; Tablespace: 
--

CREATE INDEX auth_user_groups_e8701ad4 ON auth_user_groups USING btree (user_id);


--
-- Name: auth_user_user_permissions_8373b171; Type: INDEX; Schema: public; Owner: pancakes; Tablespace: 
--

CREATE INDEX auth_user_user_permissions_8373b171 ON auth_user_user_permissions USING btree (permission_id);


--
-- Name: auth_user_user_permissions_e8701ad4; Type: INDEX; Schema: public; Owner: pancakes; Tablespace: 
--

CREATE INDEX auth_user_user_permissions_e8701ad4 ON auth_user_user_permissions USING btree (user_id);


--
-- Name: auth_user_username_6ad76874_like; Type: INDEX; Schema: public; Owner: pancakes; Tablespace: 
--

CREATE INDEX auth_user_username_6ad76874_like ON auth_user USING btree (username varchar_pattern_ops);


--
-- Name: cakes_recipecontent_contents_70544ee1; Type: INDEX; Schema: public; Owner: pancakes; Tablespace: 
--

CREATE INDEX cakes_recipecontent_contents_70544ee1 ON cakes_recipecontent_contents USING btree (recipecontent_id);


--
-- Name: cakes_recipecontent_contents_7a06a9e2; Type: INDEX; Schema: public; Owner: pancakes; Tablespace: 
--

CREATE INDEX cakes_recipecontent_contents_7a06a9e2 ON cakes_recipecontent_contents USING btree (ingredient_id);


--
-- Name: cakes_recipecontent_da50e9c3; Type: INDEX; Schema: public; Owner: pancakes; Tablespace: 
--

CREATE INDEX cakes_recipecontent_da50e9c3 ON cakes_recipecontent USING btree (recipe_id);


--
-- Name: cakes_variation_7a06a9e2; Type: INDEX; Schema: public; Owner: pancakes; Tablespace: 
--

CREATE INDEX cakes_variation_7a06a9e2 ON cakes_variation USING btree (ingredient_id);


--
-- Name: django_admin_log_417f1b1c; Type: INDEX; Schema: public; Owner: pancakes; Tablespace: 
--

CREATE INDEX django_admin_log_417f1b1c ON django_admin_log USING btree (content_type_id);


--
-- Name: django_admin_log_e8701ad4; Type: INDEX; Schema: public; Owner: pancakes; Tablespace: 
--

CREATE INDEX django_admin_log_e8701ad4 ON django_admin_log USING btree (user_id);


--
-- Name: django_session_de54fa62; Type: INDEX; Schema: public; Owner: pancakes; Tablespace: 
--

CREATE INDEX django_session_de54fa62 ON django_session USING btree (expire_date);


--
-- Name: django_session_session_key_6165b19a_like; Type: INDEX; Schema: public; Owner: pancakes; Tablespace: 
--

CREATE INDEX django_session_session_key_6165b19a_like ON django_session USING btree (session_key varchar_pattern_ops);


--
-- Name: auth_group_permiss_permission_id_65c48415_fk_auth_permission_id; Type: FK CONSTRAINT; Schema: public; Owner: pancakes
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permiss_permission_id_65c48415_fk_auth_permission_id FOREIGN KEY (permission_id) REFERENCES auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissions_group_id_476d7cd3_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: pancakes
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_476d7cd3_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_permiss_content_type_id_34c1e88e_fk_django_content_type_id; Type: FK CONSTRAINT; Schema: public; Owner: pancakes
--

ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT auth_permiss_content_type_id_34c1e88e_fk_django_content_type_id FOREIGN KEY (content_type_id) REFERENCES django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups_group_id_19b5ee95_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: pancakes
--

ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_19b5ee95_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups_user_id_77e0d4fb_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: pancakes
--

ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_77e0d4fb_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_per_permission_id_569365c0_fk_auth_permission_id; Type: FK CONSTRAINT; Schema: public; Owner: pancakes
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_per_permission_id_569365c0_fk_auth_permission_id FOREIGN KEY (permission_id) REFERENCES auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions_user_id_1e58880e_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: pancakes
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_1e58880e_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: cakes_recip_recipecontent_id_27a0f4d6_fk_cakes_recipecontent_id; Type: FK CONSTRAINT; Schema: public; Owner: pancakes
--

ALTER TABLE ONLY cakes_recipecontent_contents
    ADD CONSTRAINT cakes_recip_recipecontent_id_27a0f4d6_fk_cakes_recipecontent_id FOREIGN KEY (recipecontent_id) REFERENCES cakes_recipecontent(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: cakes_recipeconte_ingredient_id_2e321f06_fk_cakes_ingredient_id; Type: FK CONSTRAINT; Schema: public; Owner: pancakes
--

ALTER TABLE ONLY cakes_recipecontent_contents
    ADD CONSTRAINT cakes_recipeconte_ingredient_id_2e321f06_fk_cakes_ingredient_id FOREIGN KEY (ingredient_id) REFERENCES cakes_ingredient(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: cakes_recipecontent_recipe_id_41bac876_fk_cakes_recipe_id; Type: FK CONSTRAINT; Schema: public; Owner: pancakes
--

ALTER TABLE ONLY cakes_recipecontent
    ADD CONSTRAINT cakes_recipecontent_recipe_id_41bac876_fk_cakes_recipe_id FOREIGN KEY (recipe_id) REFERENCES cakes_recipe(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: cakes_variation_ingredient_id_ca771ab_fk_cakes_ingredient_id; Type: FK CONSTRAINT; Schema: public; Owner: pancakes
--

ALTER TABLE ONLY cakes_variation
    ADD CONSTRAINT cakes_variation_ingredient_id_ca771ab_fk_cakes_ingredient_id FOREIGN KEY (ingredient_id) REFERENCES cakes_ingredient(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_content_type_id_7e8ad534_fk_django_content_type_id; Type: FK CONSTRAINT; Schema: public; Owner: pancakes
--

ALTER TABLE ONLY django_admin_log
    ADD CONSTRAINT django_admin_content_type_id_7e8ad534_fk_django_content_type_id FOREIGN KEY (content_type_id) REFERENCES django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log_user_id_7c99ce47_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: pancakes
--

ALTER TABLE ONLY django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_7c99ce47_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--

