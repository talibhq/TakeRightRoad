--
-- PostgreSQL database dump
--

-- Dumped from database version 9.5.21
-- Dumped by pg_dump version 9.5.21

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: account_user; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.account_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(30) NOT NULL,
    last_name character varying(150) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL,
    name character varying(255) NOT NULL,
    profile character varying(100),
    bio text,
    facebook_link character varying(200),
    instagram_link character varying(200),
    twitter_link character varying(200)
);


ALTER TABLE public.account_user OWNER TO admin;

--
-- Name: account_user_followers; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.account_user_followers (
    id integer NOT NULL,
    from_user_id integer NOT NULL,
    to_user_id integer NOT NULL
);


ALTER TABLE public.account_user_followers OWNER TO admin;

--
-- Name: account_user_followers_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.account_user_followers_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.account_user_followers_id_seq OWNER TO admin;

--
-- Name: account_user_followers_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.account_user_followers_id_seq OWNED BY public.account_user_followers.id;


--
-- Name: account_user_groups; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.account_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE public.account_user_groups OWNER TO admin;

--
-- Name: account_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.account_user_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.account_user_groups_id_seq OWNER TO admin;

--
-- Name: account_user_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.account_user_groups_id_seq OWNED BY public.account_user_groups.id;


--
-- Name: account_user_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.account_user_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.account_user_id_seq OWNER TO admin;

--
-- Name: account_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.account_user_id_seq OWNED BY public.account_user.id;


--
-- Name: account_user_user_permissions; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.account_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.account_user_user_permissions OWNER TO admin;

--
-- Name: account_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.account_user_user_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.account_user_user_permissions_id_seq OWNER TO admin;

--
-- Name: account_user_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.account_user_user_permissions_id_seq OWNED BY public.account_user_user_permissions.id;


--
-- Name: auth_group; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);


ALTER TABLE public.auth_group OWNER TO admin;

--
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.auth_group_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_id_seq OWNER TO admin;

--
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;


--
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_group_permissions OWNER TO admin;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.auth_group_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_permissions_id_seq OWNER TO admin;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;


--
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


ALTER TABLE public.auth_permission OWNER TO admin;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.auth_permission_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_permission_id_seq OWNER TO admin;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;


--
-- Name: blog_blog; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.blog_blog (
    id integer NOT NULL,
    title character varying(255) NOT NULL,
    slug character varying(255),
    content text NOT NULL,
    banner character varying(100) NOT NULL,
    location character varying(255) NOT NULL,
    views integer NOT NULL,
    created_on timestamp with time zone NOT NULL,
    updated_on timestamp with time zone NOT NULL,
    author_id integer NOT NULL,
    category_id integer,
    CONSTRAINT blog_blog_views_check CHECK ((views >= 0))
);


ALTER TABLE public.blog_blog OWNER TO admin;

--
-- Name: blog_blog_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.blog_blog_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.blog_blog_id_seq OWNER TO admin;

--
-- Name: blog_blog_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.blog_blog_id_seq OWNED BY public.blog_blog.id;


--
-- Name: blog_blog_likes; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.blog_blog_likes (
    id integer NOT NULL,
    blog_id integer NOT NULL,
    user_id integer NOT NULL
);


ALTER TABLE public.blog_blog_likes OWNER TO admin;

--
-- Name: blog_blog_likes_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.blog_blog_likes_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.blog_blog_likes_id_seq OWNER TO admin;

--
-- Name: blog_blog_likes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.blog_blog_likes_id_seq OWNED BY public.blog_blog_likes.id;


--
-- Name: blog_blog_tags; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.blog_blog_tags (
    id integer NOT NULL,
    blog_id integer NOT NULL,
    tag_id integer NOT NULL
);


ALTER TABLE public.blog_blog_tags OWNER TO admin;

--
-- Name: blog_blog_tags_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.blog_blog_tags_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.blog_blog_tags_id_seq OWNER TO admin;

--
-- Name: blog_blog_tags_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.blog_blog_tags_id_seq OWNED BY public.blog_blog_tags.id;


--
-- Name: blog_blogcomment; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.blog_blogcomment (
    id integer NOT NULL,
    text text NOT NULL,
    created_on timestamp with time zone NOT NULL,
    blog_id integer NOT NULL,
    user_id integer NOT NULL
);


ALTER TABLE public.blog_blogcomment OWNER TO admin;

--
-- Name: blog_blogcomment_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.blog_blogcomment_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.blog_blogcomment_id_seq OWNER TO admin;

--
-- Name: blog_blogcomment_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.blog_blogcomment_id_seq OWNED BY public.blog_blogcomment.id;


--
-- Name: blog_category; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.blog_category (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    slug character varying(255),
    banner character varying(100)
);


ALTER TABLE public.blog_category OWNER TO admin;

--
-- Name: blog_category_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.blog_category_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.blog_category_id_seq OWNER TO admin;

--
-- Name: blog_category_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.blog_category_id_seq OWNED BY public.blog_category.id;


--
-- Name: blog_tag; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.blog_tag (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    slug character varying(255),
    banner character varying(100)
);


ALTER TABLE public.blog_tag OWNER TO admin;

--
-- Name: blog_tag_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.blog_tag_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.blog_tag_id_seq OWNER TO admin;

--
-- Name: blog_tag_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.blog_tag_id_seq OWNED BY public.blog_tag.id;


--
-- Name: dashboard_userquery; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.dashboard_userquery (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    email character varying(255) NOT NULL,
    subject character varying(255) NOT NULL,
    content text NOT NULL,
    created_on timestamp with time zone NOT NULL,
    is_seen boolean NOT NULL
);


ALTER TABLE public.dashboard_userquery OWNER TO admin;

--
-- Name: dashboard_userquery_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.dashboard_userquery_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.dashboard_userquery_id_seq OWNER TO admin;

--
-- Name: dashboard_userquery_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.dashboard_userquery_id_seq OWNED BY public.dashboard_userquery.id;


--
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: admin
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


ALTER TABLE public.django_admin_log OWNER TO admin;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.django_admin_log_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_admin_log_id_seq OWNER TO admin;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;


--
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE public.django_content_type OWNER TO admin;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.django_content_type_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_content_type_id_seq OWNER TO admin;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;


--
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


ALTER TABLE public.django_migrations OWNER TO admin;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.django_migrations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_migrations_id_seq OWNER TO admin;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;


--
-- Name: django_session; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE public.django_session OWNER TO admin;

--
-- Name: id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.account_user ALTER COLUMN id SET DEFAULT nextval('public.account_user_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.account_user_followers ALTER COLUMN id SET DEFAULT nextval('public.account_user_followers_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.account_user_groups ALTER COLUMN id SET DEFAULT nextval('public.account_user_groups_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.account_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.account_user_user_permissions_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.blog_blog ALTER COLUMN id SET DEFAULT nextval('public.blog_blog_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.blog_blog_likes ALTER COLUMN id SET DEFAULT nextval('public.blog_blog_likes_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.blog_blog_tags ALTER COLUMN id SET DEFAULT nextval('public.blog_blog_tags_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.blog_blogcomment ALTER COLUMN id SET DEFAULT nextval('public.blog_blogcomment_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.blog_category ALTER COLUMN id SET DEFAULT nextval('public.blog_category_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.blog_tag ALTER COLUMN id SET DEFAULT nextval('public.blog_tag_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.dashboard_userquery ALTER COLUMN id SET DEFAULT nextval('public.dashboard_userquery_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);


--
-- Data for Name: account_user; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.account_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined, name, profile, bio, facebook_link, instagram_link, twitter_link) FROM stdin;
1	pbkdf2_sha256$180000$m4I7wAoHuv8F$Wb/Glg6LTVWOFlxxFmRatFwgxOVZ6uU9H3sMDM/QEmc=	2020-08-14 13:15:41.97039+05:30	t	talib				t	t	2020-08-14 13:15:26.206673+05:30			\N	\N	\N	\N
2	pbkdf2_sha256$180000$NROfyLeXofDm$0MEQ+TSwTp9HAI0pONAToSrGJoy/R5B/3oypxdRVHSQ=	2020-08-14 18:19:22.053995+05:30	f	shahrukh-khan35335859			srk@ex.com	f	t	2020-08-14 13:41:59+05:30	Shahrukh Khan	user_profiles/srk.jpg	Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.	http://facebook.com/	http://instagram.com/	http://twitter.com/
9	pbkdf2_sha256$180000$mXS8LkMduEtV$vFOET0QgzMujYRQ22s7Q/zjK03lkU9wkAkI/mvMKwU4=	2020-08-14 19:06:15.156768+05:30	f	ertugrul-ghazi06287096			ertugrul@ex.com	f	t	2020-08-14 17:35:50+05:30	Ertugrul Ghazi	user_profiles/ertugrul.jpg	Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.	http://facebook.com/	http://instagram.com/	http://twitter.com/
4	pbkdf2_sha256$180000$sxlOTnJ6YEIw$kz2cwcRYYhFpGY4oXyyeOqm5Nq/mfoH55M6X4fLKH+s=	2020-08-14 17:47:13.308101+05:30	f	bruce-wayne63551116			batman@ex.com	f	t	2020-08-14 13:42:55+05:30	Bruce Wayne	user_profiles/batman.jpg	Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.	http://facebook.com/	http://instagram.com/	http://twitter.com/
8	pbkdf2_sha256$180000$zIqWwasH8Cp9$hmwJADmOb1oKcLfeWBC6NU/KVKSt4G1BYmdEraxovTI=	\N	f	mike-price43518302			mike@ex.com	f	t	2020-08-14 17:30:25+05:30	Mike Price	user_profiles/mike.jpg	Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.	http://facebook.com/	http://instagram.com/	http://twitter.com/
3	pbkdf2_sha256$180000$GBBxr21mCxC4$YhJzF/8RsYY+bNFosc7mQ/0OgC8cWSmlwBcf1T50o0E=	2020-08-14 17:53:09.058072+05:30	f	ranbir-kapoor22334668			rk@ex.com	f	t	2020-08-14 13:42:30+05:30	Ranbir Kapoor	user_profiles/rk.jpg	Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.	http://facebook.com/	http://instagram.com/	http://twitter.com/
5	pbkdf2_sha256$180000$3TSrOdvYAtB1$dHATCUbA82LXR8rcHDg2Qllsc4elT+IE+099pjNS8Ec=	2020-08-14 18:02:49.399335+05:30	f	leonardo-dicaprio04910688			leo@ex.com	f	t	2020-08-14 13:43:38+05:30	Leonardo DiCaprio	user_profiles/leo.jpg	Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.	http://facebook.com/	http://instagram.com/	http://twitter.com/
7	pbkdf2_sha256$180000$ERO5ONusmhoa$Gezkt2YAsZ7cAaAG1fUuu/m7EDuGj5nAZwUYRphrusg=	2020-08-14 18:07:35.611143+05:30	f	brad-pitt63759988			brad@ex.com	f	t	2020-08-14 13:44:32+05:30	Brad Pitt	user_profiles/brad.jpg	Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.	http://facebook.com/	https://www.instagram.com/	https://twitter.com/
6	pbkdf2_sha256$180000$Sx3pQmCZo7Q0$ftKIB/kLlWCjFCACRGOWL6h3tAle/d7qk+Uhi2KE9wg=	2020-08-14 18:11:19.111039+05:30	f	siddharth-malhotra37610960			sid@ex.com	f	t	2020-08-14 13:44:10+05:30	Siddharth Malhotra	user_profiles/sid.jpg	Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.	https://facebook.com/	https://instagram.com/	https://twitter.com/
\.


--
-- Data for Name: account_user_followers; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.account_user_followers (id, from_user_id, to_user_id) FROM stdin;
1	9	2
2	9	3
3	9	4
4	9	5
5	9	6
6	9	7
7	9	8
10	2	9
11	2	4
12	4	2
\.


--
-- Name: account_user_followers_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.account_user_followers_id_seq', 12, true);


--
-- Data for Name: account_user_groups; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.account_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Name: account_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.account_user_groups_id_seq', 1, false);


--
-- Name: account_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.account_user_id_seq', 9, true);


--
-- Data for Name: account_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.account_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Name: account_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.account_user_user_permissions_id_seq', 1, false);


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.auth_group (id, name) FROM stdin;
\.


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: admin
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
13	Can add content type	4	add_contenttype
14	Can change content type	4	change_contenttype
15	Can delete content type	4	delete_contenttype
16	Can view content type	4	view_contenttype
17	Can add session	5	add_session
18	Can change session	5	change_session
19	Can delete session	5	delete_session
20	Can view session	5	view_session
21	Can add user query	6	add_userquery
22	Can change user query	6	change_userquery
23	Can delete user query	6	delete_userquery
24	Can view user query	6	view_userquery
25	Can add user	7	add_user
26	Can change user	7	change_user
27	Can delete user	7	delete_user
28	Can view user	7	view_user
29	Can add blog	8	add_blog
30	Can change blog	8	change_blog
31	Can delete blog	8	delete_blog
32	Can view blog	8	view_blog
33	Can add category	9	add_category
34	Can change category	9	change_category
35	Can delete category	9	delete_category
36	Can view category	9	view_category
37	Can add tag	10	add_tag
38	Can change tag	10	change_tag
39	Can delete tag	10	delete_tag
40	Can view tag	10	view_tag
41	Can add blog comment	11	add_blogcomment
42	Can change blog comment	11	change_blogcomment
43	Can delete blog comment	11	delete_blogcomment
44	Can view blog comment	11	view_blogcomment
\.


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.auth_permission_id_seq', 44, true);


--
-- Data for Name: blog_blog; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.blog_blog (id, title, slug, content, banner, location, views, created_on, updated_on, author_id, category_id) FROM stdin;
1	HOW TO SPEND 48 HOURS IN OSLO	how-to-spend-48-hours-in-oslo	<p>Most budget travelers skip&nbsp;<a href="https://www.nomadicmatt.com/travel-guides/norway-travel-tips/" rel="noopener noreferrer" target="_blank">Norway</a>&nbsp;because it&rsquo;s an expensive country to visit. The capital,&nbsp;<a href="https://www.nomadicmatt.com/travel-guides/norway-travel-tips/oslo/" rel="noopener noreferrer" target="_blank">Oslo</a>, is consistently ranked as one of the most expensive cities in the world owing to its high taxes, strong currency, and high percentage of imported goods.</p>\r\n\r\n<p>Understandably, traveling here on a budget here is tricky. Yet I still encourage you to visit, even though it&rsquo;s not a budget-friendly destination. There are unique museums, beautiful parks, and stunning nature to be enjoyed. It&rsquo;s small enough that a two-day or three-day visit is usually enough to get a feel for it.</p>\r\n\r\n<p>To help you plan your trip and make the most of your time, here is my suggested 48-hour itinerary for Oslo.</p>	blog_banners/tour3.5.jpg	Oslo, Norway	2	2020-08-14 17:42:50.072433+05:30	2020-08-14 18:02:00.7195+05:30	9	1
2	HOW TO ROAD TRIP AROUND OAHU	how-to-road-trip-around-oahu	<h1>Journaey Start</h1>\r\n\r\n<p>I didn&rsquo;t know much about Oahu before I visited. Everyone told me it was worth it for Pearl Harbor but to spend the rest of my time elsewhere in&nbsp;<a href="https://www.nomadicmatt.com/travel-guides/united-states-travel-guide/hawaii/" rel="noopener noreferrer" target="_blank">Hawaii</a>. Maui and Kauai were where the action was, they said.</p>\r\n\r\n<p>But Oahu was home to Honolulu&rsquo;s international airport from which I was catching an onward flight to&nbsp;<a href="https://www.nomadicmatt.com/travel-blogs/things-to-do-taiwan/" rel="noopener noreferrer" target="_blank">Taiwan</a>. Since I had limited time, going to multiple islands wasn&rsquo;t feasible.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Fortunately, after spending a full week on Oahu, I can say this: everyone was wrong.</p>\r\n\r\n<p><a href="https://www.nomadicmatt.com/travel-blogs/in-defense-of-maligned-destinations/" rel="noopener noreferrer" target="_blank">Maybe they just let their preconceived notions get the better of them</a>.</p>\r\n\r\n<p>Or maybe they just didn&rsquo;t give the place a chance.</p>\r\n\r\n<p>But, whatever the reason, I&rsquo;m here to tell you that Oahu has some magic to it. Sure, it&rsquo;s quite developed, has terrible traffic, and huge crowds. And yeah, maybe it&rsquo;s not as &ldquo;raw&rdquo; as the other islands (I assume that&rsquo;s why people like them).</p>\r\n\r\n<p>But there are plenty of spots in Oahu where you can live that Hawaiian dream</p>\r\n\r\n<p>I spent a week round-tripping the island (which, given how small it is, turned out to be quite easy). My plan was simple: sit on a beach as long as I could, eat my body weight in poke (diced raw fish, pronounced &ldquo;po-keh&rdquo;), and hike.</p>\r\n\r\n<p>Along the way, I also binged on shrimp, drank the best pi&ntilde;a colada of my life, and took notes so you can do even better when you visit!<br />\r\n&nbsp;</p>\r\n\r\n<h3>Driving Oahu: A Road-Trip Itinerary</h3>\r\n\r\n<p><img alt="Driving on the highway in Oahu, Hawaii surrounded by forests and jungle" src="https://media.nomadicmatt.com/2020/hawaiiroadtrip7.jpg" style="height:395px; width:675px" /><br />\r\nFirst, a tip: if you&rsquo;re driving around Oahu, go counterclockwise from Honolulu, since most of the food trucks you&rsquo;ll want to stop at are on the ocean side of the highway as you go up the east coast. So going in that direction just makes it easier to pull off the road and try all the food trucks that line the highway (and there are a lot). There&rsquo;s also more to do on the east side of Oahu, so it&rsquo;s best to start there.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>That said, I actually don&rsquo;t think a traditional road trip is the best idea. Oahu is smaller than you think &mdash; you can drive end to end in under two hours &mdash; so everything listed below can really be done as a day trip from one base or another, which will save you packing and unpacking, as well moving from place to place too often (especially since the east and west coasts don&rsquo;t have a lot of affordable accommodations).</p>\r\n\r\n<p>Base yourself on the North Shore for a couple of days and then in Honolulu (in the south) for a couple of days (or vice versa).<br />\r\n&nbsp;</p>\r\n\r\n<h3>Day 1: Honolulu to Kailua (28 miles)</h3>\r\n\r\n<p><img alt="The skyline of Honolulu, Hawaii surrounded by lush forests and jungles" src="https://media.nomadicmatt.com/2020/hawaiiroadtrip1.jpg" style="height:395px; width:675px" /><br />\r\nPick up your rental car, head out of Honolulu (you&rsquo;ll be back later), and start off at Hunauma Bay in southeast Oahu. You can spend a few hours there snorkeling and relaxing on the beach before heading to the nearby Halona Blowhole Lookout for the view and Makapu&lsquo;u Point (Oahu&rsquo;s easternmost point) for a short hike. There are also plenty of beaches, food trucks, short hikes, and viewpoints along the way to Kailua, where you&rsquo;ll want to stay the night.</p>\r\n\r\n<p><strong>Where to Eat:</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<ul>\r\n\t<li>Teddy&rsquo;s Bigger Burgers</li>\r\n\t<li>Any of the food trucks on the way north</li>\r\n\t<li>Buzz&rsquo;s Steakhouse (for dinner)</li>\r\n</ul>\r\n\r\n<p><strong>Where to Stay:</strong><br />\r\n<a href="http://airbnb.7eer.net/c/214481/264339/4273" rel="noopener noreferrer" target="_blank">Airbnb</a>&nbsp;is the best option, since there aren&rsquo;t many hotels or hostels in Kailua. Book early though, as there isn&rsquo;t a lot to choose from.<br />\r\n&nbsp;</p>\r\n\r\n<h3>Day 2: Kailua to Haleiwa (50 miles)</h3>\r\n\r\n<p><img alt="The beautiful coast of Kailua in Hawaii surrounded by water" src="https://media.nomadicmatt.com/2020/hawaiiroadtrip5.jpg" style="height:395px; width:675px" /><br />\r\nStart your morning with the famous Lanikai Pillbox hike just south of Kailua, where you can get sweeping views of the ocean and the cities and beaches on this side of the island. The hike is short (it only takes about 20-30 minutes) but steep, so wear appropriate shoes.</p>\r\n\r\n<p>If you have some time in the morning, Kailua and Lanikai beaches are both beautiful (they&rsquo;re right next to each other and on the way from the pillbox hike). Not a lot of people, white sand, blue water. They&rsquo;re heaven.</p>\r\n\r\n<p>As you leave this area to head north, visit the Ho&lsquo;oamaluhia Botanical Garden (it&rsquo;s free!), which is also home to a lake filled with tropical plants.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Afterward, drive up the east coast toward the North Shore. Along the way, you can stop at the Kualoa Ranch, where many movies have been filmed. If you do a tour, I suggest the 90-minute Hollywood Movie Sites Tour (which includes scenes from Jurassic Park!), as you don&rsquo;t need much more time than that to see the ranch. (It&rsquo;s expensive, though, so if you&rsquo;re on a budget, I&rsquo;d skip it.)</p>\r\n\r\n<p>As you keep going north, you&rsquo;ll find a ton of beaches and hikes (there are plenty of signs for everything). I really enjoyed the Hau&rsquo;ula Loop Trail especially, which is about 10 miles north of Kualoa. It&rsquo;s a really overgrown trail, so you&rsquo;ll feel like you&rsquo;re very much in the jungle (meaning you&rsquo;ll also need to bring bug spray). And like most hikes here, there&rsquo;s a scenic viewpoint!</p>\r\n\r\n<p>Then drive around the northern tip of Oahu to Haleiwa, your base of operations while on the North Shore.</p>\r\n\r\n<p><strong>Where to Eat Along the Way:</strong></p>\r\n\r\n<ul>\r\n\t<li>Kalapawai Caf&eacute; and Deli</li>\r\n\t<li>Fresh Catch Kaneohe</li>\r\n\t<li>Shrimp Shack</li>\r\n\t<li>Seven Brothers</li>\r\n\t<li>Ken&rsquo;s Fresh Fish</li>\r\n\t<li>Fumi&rsquo;s Shrimp</li>\r\n</ul>\r\n\r\n<p><strong>Where to Stay:</strong><br />\r\n<a href="http://airbnb.7eer.net/c/214481/264339/4273" rel="noopener noreferrer" target="_blank">Airbnb</a>&nbsp;is again the best option, as there aren&rsquo;t many hotels or hostels in Hal&lsquo;eiwa. Book early here too.<br />\r\n&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h3>Days 3 &amp; 4: North Shore (Base: Haleiwa)</h3>\r\n\r\n<p><img alt="A beautiful soft sunset on the North Shore of Oahu, Hawaii" src="https://media.nomadicmatt.com/2020/hawaiiroadtrip6.jpg" style="height:395px; width:675px" /><br />\r\nThis was my favorite part of Oahu. It was&nbsp;<a href="https://www.nomadicmatt.com/travel-guides/united-states-travel-guide/hawaii/" rel="noopener noreferrer" target="_blank">Hawaii</a>&nbsp;the way you imagine it should be: a lot quieter, less touristy, and less developed. And it had that whole &ldquo;hippie vibe&rdquo; going for it. Everyone up here was much more laid back than down south.</p>\r\n\r\n<p>You can learn to surf here (two-hour lessons begin at just $80 USD) or hike the Ka&lsquo;ena Point Trail (west of Haleiwa) and/or the &rsquo;Ehukai Pillbox (east of Haleiwa). The latter is pretty muddy, so bring appropriate shoes.</p>\r\n\r\n<p>Haleiwa itself is a sleepy little tourist town with a bunch of restaurants, shops, and parks. There&rsquo;s not much to do in the town itself than eat and window shop.</p>\r\n\r\n<p>If you do just one hike, though, I definitely recommend the Ka&lsquo;ena Point Trail, which was one of the best experiences I had. It&rsquo;s a scenic two-hour coastal walk to the northwestern tip of Oahu, where you will find a protected biological area with seals and native birds. At the tip, you can see all the way down the west side of the island &mdash; a magical view. Bring sunscreen and water, as the whole trail is exposed to the sun.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Where to Eat:</strong></p>\r\n\r\n<ul>\r\n\t<li>Ted&rsquo;s Bakery</li>\r\n\t<li>Sunrise Shack</li>\r\n\t<li>Hale&lsquo;iwa Joe&rsquo;s</li>\r\n\t<li>Matsumoto Shave Ice</li>\r\n\t<li>Ray&rsquo;s Kiawe</li>\r\n\t<li>Kono&rsquo;s</li>\r\n\t<li>Jenny&rsquo;s Shrimp Truck</li>\r\n\t<li>Giovanni&rsquo;s Shrimp</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h3>Day 5: Dole Plantation, Oahu&rsquo;s West Side, Honolulu (60 miles)</h3>\r\n\r\n<p><img alt="The rugged coast of Waianae on the west coast of Oahu, Hawaii" src="https://media.nomadicmatt.com/2020/hawaiiroadtrip8.jpg" style="height:395px; width:675px" /><br />\r\nHead south (inland) and stop at the Dole Plantation. While it is super cheesy and touristy (I mean, so many useless souvenirs!), it does have a cool maze, and there&rsquo;s a train ride through the farm that, while whitewashing a lot of bad things, was an interesting look at the importance of the pineapple to Oahu. For a general overview geared to your average tourist, it was surprisingly informative.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Afterward, continue south toward Honolulu and then head west on the H1 road to the west coast for some deserted local beaches, such as Ma&rsquo;ili, Ewa, Makua, or Yokohama. Stop at Countryside Caf&eacute; for some incredible diner food. The portions are pretty large, so you can share them.</p>\r\n\r\n<p>Then head back into Honolulu, as there&rsquo;s not a lot of accommodation along the west coast. If you do want to stay longer, you&rsquo;ll find some listings on&nbsp;<a href="http://airbnb.7eer.net/c/214481/264339/4273" rel="noopener noreferrer" target="_blank">Airbnb</a>&nbsp;and&nbsp;<a href="http://www.booking.com/index.html?aid=362916" rel="noopener noreferrer" target="_blank">Booking.com</a>&nbsp;if you book far in advance. Otherwise, there are a few hotels in Kapolei if you don&rsquo;t want to drive all the way to Honolulu.<br />\r\n&nbsp;</p>\r\n\r\n<h3>Days 6 &amp; 7: Honolulu</h3>\r\n\r\n<p><img alt="" src="https://media.nomadicmatt.com/2020/hawaiiroadtrip4.jpg" style="height:395px; width:675px" /><br />\r\nI actually liked Honolulu a lot (the main beach area of Waikiki is a tourist trap though.) While downtown is a bit bland, other neighborhoods are filled with awesome stores, breweries, bars, restaurants, and art galleries. Be sure to check out the &ldquo;hip&rdquo; Kaka&lsquo;ako part of town in particular.</p>\r\n\r\n<p>Consider going on a hike on Diamond Head, a volcanic cone on the east side of town. It offers an incredible view of the city, though it&rsquo;s one of the more popular trails in the area so if you aren&rsquo;t there early enough to beat the crowds you&rsquo;ll basically be walking in a slow-moving line up the mountain. If you are short on time, skip it.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Other Things to Do:</strong></p>\r\n\r\n<ul>\r\n\t<li>A free walking tour with Hawaii Free Tours (call ahead, since they only run when they have bookings).</li>\r\n\t<li>Pearl Harbor &ndash; This is a must. It&rsquo;s not even up for debate. You have to go.</li>\r\n\t<li>Iolani Palace, the former royal residence of Hawaii&rsquo;s monarchs.</li>\r\n\t<li>Soak in the sun on Waikiki Beach or other nearby beaches, such as Ala Moana, which is popular with locals.</li>\r\n</ul>\r\n\r\n<p>There&rsquo;s also an Islamic art museum, which is supposed to be great, but I didn&rsquo;t make it there.</p>\r\n\r\n<p><strong>Where to Eat:</strong></p>\r\n\r\n<ul>\r\n\t<li>The Pig and the Lady</li>\r\n\t<li>Mei Sum Dim Sum</li>\r\n\t<li>Shirokiya Japan Village Walk</li>\r\n\t<li>Rainbow Drive-In</li>\r\n\t<li>Leonard&rsquo;s Bakey</li>\r\n\t<li>Ono Seafood</li>\r\n\t<li>Hula Dog</li>\r\n</ul>\r\n\r\n<p><strong>Where to Stay:</strong></p>\r\n\r\n<ul>\r\n\t<li><a href="https://prf.hn/click/camref:1101lHtj/destination:https%3A%2F%2Fwww.hostelworld.com%2Fpwa%2Fhosteldetails.php%2FTHE-BEACH-waikiki-boutique-hostel-by-IH%2FHonolulu%2F41553" rel="noopener noreferrer" target="_blank">The Beach</a>&nbsp;&ndash; This hostel is right on the beach, includes free breakfast, and has plenty of space to relax and meet other travelers.</li>\r\n\t<li><a href="https://prf.hn/click/camref:1101lHtj/destination:https%3A%2F%2Fwww.hostelworld.com%2Fpwa%2Fhosteldetails.php%2FPolynesian-Hostel-Beach-Club-Waikiki%2FHonolulu%2F3264" rel="noopener noreferrer" target="_blank">Polynesian Hostel Beach Club Waikiki</a>&nbsp;&ndash; The accommodation here is basic, but the staff are super friendly and helpful, and they organize lots of events.</li>\r\n\t<li><a href="https://prf.hn/click/camref:1101lHtj/destination:https%3A%2F%2Fwww.hostelworld.com%2Fpwa%2Fhosteldetails.php%2FWaikiki-Beachside-Hostel%2FHonolulu%2F389" rel="noopener noreferrer" target="_blank">Waikiki Beachside Hostel</a>&nbsp;&ndash; A fun, social hostel that hosts live music. Breakfast is included too.</li>\r\n</ul>\r\n\r\n<p>Additionally, head to the Royal Hawaiian Hotel for the best pi&ntilde;a colada of your life. It&rsquo;s not cheap ($15 USD a pop), but it is sooo good! Every one of my friends who didn&rsquo;t order one got it as their second drink. (Fun fact: My grandfather was stationed in Oahu during WWII and went back to Oahu often. The Royal Hawaiian was his favorite hotel. It&rsquo;s pretty cool that it&rsquo;s still there!)<br />\r\n&nbsp;</p>\r\n\r\n<h3>Average costs</h3>\r\n\r\n<p>How much do things cost on Oahu? Here are some typical prices (in USD):</p>\r\n\r\n<ul>\r\n\t<li><strong>Airbnb</strong>&nbsp;&ndash; $100+/night for a one-bedroom or studio</li>\r\n\t<li><strong>Hotel</strong>&nbsp;&ndash; $175&ndash;250/night for a mid-range boutique hotel</li>\r\n\t<li><strong>Hostel dorm</strong>&nbsp;&ndash; $27</li>\r\n\t<li><strong>Car rental</strong>&nbsp;&ndash; as low as $20/day, plus insurance</li>\r\n\t<li><strong>Gas</strong>&nbsp;&ndash; $3&ndash;3.50/gallon</li>\r\n\t<li><strong>Poke bowl</strong>&nbsp;&ndash; $12&ndash;15</li>\r\n\t<li><strong>Takeout meal</strong>&nbsp;&ndash; $10&ndash;14</li>\r\n\t<li><strong>Sit-down meal at a fancy restaurant</strong>&nbsp;(with drinks) &ndash; $50+</li>\r\n\t<li><strong>Local lunch</strong>&nbsp;&ndash; $15</li>\r\n\t<li><strong>McDonalds</strong>&nbsp;&ndash; $6 for a value meal</li>\r\n\t<li><strong>Groceries</strong>&nbsp;&ndash; $75 for one person for a week</li>\r\n\t<li><strong>Beer</strong>&nbsp;(at a restaurant) &ndash; $8&ndash;10 ($2&ndash;3 at the Japanese Walk!)</li>\r\n\t<li><strong>Pi&ntilde;a colada</strong>&nbsp;&ndash; $10-15</li>\r\n\t<li><strong>Coffee</strong>&nbsp;&ndash; $5</li>\r\n\t<li><strong>Surfboard rental</strong>&nbsp;&ndash; $25/day</li>\r\n\t<li><strong>Snorkel gear rental</strong>&nbsp;&ndash; $15/day</li>\r\n\t<li><strong>Scuba dive prices</strong>&nbsp;&ndash; $125</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h3>Budget Tips</h3>\r\n\r\n<p>Oahu is pretty expensive. Most everything has to be imported, so if it can&rsquo;t be grown nearby or caught in the ocean, expect to pay a lot. But it&rsquo;s not impossible to save money. Here are a few ways to cut your expenses:</p>\r\n\r\n<ul>\r\n\t<li>Hike and enjoy the beaches. Nature is free!</li>\r\n\t<li>Buy your own food from supermarkets so you can cook your own meals or have picnics. Sure, there are plenty of world-class restaurants here, but if you want to keep your food costs down, you should cook some meals. The poke at supermarkets is delicious anyway!</li>\r\n\t<li>If you do eat out, hit the food trucks. Most cost around $10 USD for a meal &mdash; much cheaper than sit-down restaurants.</li>\r\n\t<li>If you&rsquo;re going to buy alcohol, do so at Japanese markets, where you can find beer for only $2&ndash;3 USD (compared to $8 USD at bars).</li>\r\n\t<li>Skip ride-sharing websites like Getaround or Turo (where you rent cars from private owners). They are usually cheaper than the big rental companies, but on Oahu, hosts charge you an added fee for dropping the car at the airport. I found the traditional car rental companies to be much cheaper, with rates as low as $20 USD a day.</li>\r\n\t<li>Get your gas at Hele stations. They were consistently the cheapest on the island.</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>***</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>While Oahu is often crowded and overly commercial, there were a lot of wonderful things to do and see. To me, the best parts were the food and the hiking &mdash; with so many hikes, you could spend weeks here. My favorite part of Oahu was the North Shore, so I recommend you spend a few days there at least. I certainly look forward to returning!</p>\r\n\r\n<h4>Book Your Trip to Hawaii: Logistical Tips and Tricks</h4>\r\n\r\n<p><strong>Book Your Flight</strong><br />\r\nFind a cheap flight by using&nbsp;<a href="http://www.anrdoezrs.net/click-3032045-12837948" rel="noopener noreferrer" target="_blank">Skyscanner</a>&nbsp;or&nbsp;<a href="https://www.momondo.com/">Momondo</a>. They are my two favorite search engines because they search websites and airlines around the globe so you always know no stone is left unturned.</p>\r\n\r\n<p><strong>Book Your Accommodation</strong><br />\r\nYou can book your hostel with&nbsp;<a href="https://prf.hn/click/camref:1101lHtj" rel="noopener noreferrer" target="_blank">Hostelworld</a>. If you want to stay somewhere other than a hostel, use&nbsp;<a href="https://www.booking.com/index.html?aid=362916" rel="noopener noreferrer" target="_blank">Booking.com</a>&nbsp;as they consistently return the cheapest rates for guesthouses and cheap hotels. My favorite places to stay in Oahu are:</p>\r\n\r\n<ul>\r\n\t<li><a href="https://prf.hn/click/camref:1101lHtj/destination:https%3A%2F%2Fwww.hostelworld.com%2Fpwa%2Fhosteldetails.php%2FTHE-BEACH-waikiki-boutique-hostel-by-IH%2FHonolulu%2F41553" rel="noopener noreferrer" target="_blank">The Beach</a></li>\r\n\t<li><a href="https://prf.hn/click/camref:1101lHtj/destination:https%3A%2F%2Fwww.hostelworld.com%2Fpwa%2Fhosteldetails.php%2FPolynesian-Hostel-Beach-Club-Waikiki%2FHonolulu%2F3264" rel="noopener noreferrer" target="_blank">Polynesian Hostel Beach Club Waikiki</a></li>\r\n\t<li><a href="https://prf.hn/click/camref:1101lHtj/destination:https%3A%2F%2Fwww.hostelworld.com%2Fpwa%2Fhosteldetails.php%2FWaikiki-Beachside-Hostel%2FHonolulu%2F389" rel="noopener noreferrer" target="_blank">Waikiki Beachside Hostel</a></li>\r\n</ul>\r\n\r\n<p><strong>Don&rsquo;t Forget Travel Insurance</strong><br />\r\nTravel insurance will protect you against illness, injury, theft, and cancellations. It&rsquo;s comprehensive protection in case anything goes wrong. I never go on a trip without it as I&rsquo;ve had to use it many times in the past. I&rsquo;ve been using&nbsp;<a href="https://www.worldnomads.com/lovedby/nomadic-matt?affiliate=nmts&amp;subId=brandlink&amp;affiliateTrackingId=0fe898ceef264503a88f74f4bbc7bb5b&amp;utm_source=nmts&amp;utm_medium=affiliate&amp;utm_campaign=Affiliate&amp;utm_content=brandlink" rel="noopener noreferrer" target="_blank">World Nomads</a>&nbsp;for ten years. My favorite companies that offer the best service and value are:</p>\r\n\r\n<ul>\r\n\t<li><a href="https://www.worldnomads.com/lovedby/nomadic-matt?affiliate=nmts&amp;subId=brandlink&amp;affiliateTrackingId=0fe898ceef264503a88f74f4bbc7bb5b&amp;utm_source=nmts&amp;utm_medium=affiliate&amp;utm_campaign=Affiliate&amp;utm_content=brandlink" rel="noopener noreferrer" target="_blank">World Nomads</a>&nbsp;(for everyone below 70)</li>\r\n\t<li><a href="https://www.insuremytrip.com/?linkid=GB841615" rel="noopener noreferrer" target="_blank">Insure My Trip</a>&nbsp;(for those over 70)</li>\r\n\t<li><a href="https://medjetassist.com/nomadicmatt" rel="noopener noreferrer" target="_blank">Medjet</a>&nbsp;(for additional repatriation coverage)</li>\r\n</ul>\r\n\r\n<p><strong>Looking for the best companies to save money with?</strong><br />\r\nCheck out my&nbsp;<a href="https://www.nomadicmatt.com/travel-resources/" rel="noopener noreferrer" target="_blank">resource page</a>&nbsp;for the best companies to use when you travel! I list all the ones I use to save money when I travel &ndash; and I think will help you too!</p>\r\n\r\n<p><strong>Need an affordable RV for your road trip?</strong><br />\r\n<a href="https://www.jdoqocy.com/click-3032045-13590660" rel="noopener noreferrer" target="_blank">RVshare</a>&nbsp;lets you rent RVs from private individuals all around the country, saving you tons of money in the process. It&rsquo;s like Airbnb for RVs.</p>\r\n\r\n<p><strong>Want more information on Hawaii?</strong><br />\r\nBe sure to visit our&nbsp;<a href="https://www.nomadicmatt.com/travel-guides/united-states-travel-guide/hawaii/" rel="noopener noreferrer" target="_blank">robust destination guide on Hawaii</a>&nbsp;for even more planning tips!</p>\r\n\r\n<p>Thank You!!!!</p>	blog_banners/prague.jpg	Delhi, India	7	2020-08-14 17:45:09.726025+05:30	2020-08-14 18:22:28.283549+05:30	2	2
3	I have update my travel hacking guide	i-have-update-my-travel-hacking-guide	<p><strong>Hey everybody,</strong></p>\r\n\r\n<p>Just a quick update today to let you know we just updated our amazing travel hacking guide!</p>\r\n\r\n<p><a href="https://www.nomadicmatt.com/travel-blogs/travel-hacking-1-million-miles-per-year/" rel="noopener noreferrer" target="_blank">Travel hacking</a>&nbsp;is the art of collecting frequent-flier points and miles to get free flights, hotels, tours, and more. It allows you to have those once-in-a-lifetime experiences: an over-water bungalow in&nbsp;<a href="https://www.nomadicmatt.com/travel-guides/french-polynesia-travel-tips/" rel="noopener noreferrer" target="_blank">Tahiti</a>, a first-class flight with a shower, an&nbsp;<a href="https://www.nomadicmatt.com/travel-blogs/six-of-the-greatest-safaris-in-africa/" rel="noopener noreferrer" target="_blank">African safari</a>, a visit to the Gal&aacute;pagos Islands, or that dream trip to the French Riviera.</p>\r\n\r\n<p>Travel hacking is the single best way to save money on travel.</p>\r\n\r\n<p>I&rsquo;ve been travel hacking for over a decade &mdash; and it is the linchpin of all my money-saving advice. It helps me save tens of thousands of dollars on flights, accommodation, and transportation every year.</p>\r\n\r\n<p>I don&rsquo;t need to spend extra money, take special trips to earn more points, or get into debt. I do this with my normal, everyday spending.</p>\r\n\r\n<p>Sure, we can&rsquo;t travel right now but, when we can, having some points and miles for free travel will really help keep costs down!</p>\r\n\r\n<p>In this update, we:</p>\r\n\r\n<ol>\r\n\t<li>Updated the rules on credit cards</li>\r\n\t<li>Updated information for all our credit cards and resources</li>\r\n\t<li>Added new tricks on how to redeem points and miles</li>\r\n\t<li>Updated the section on using gift cards to generate free miles</li>\r\n\t<li>Added more ways to manufacture spending to generate free miles (including ones not normally shared publicly)</li>\r\n\t<li>Updated information on airline and hotel loyalty programs and their requirements</li>\r\n\t<li>Updated everything else that needed to be updated!</li>\r\n</ol>	blog_banners/khajjar.jpg	Istanbul, Turkey	6	2020-08-14 17:49:00.886074+05:30	2020-08-14 19:05:47.021759+05:30	4	3
5	CALIFORNIA ROAD TRIP: A 21-DAY SUGGESTED ITINERARY	california-road-trip-a-21-day-suggested-itinerary	<h2>CALIFORNIA</h2>\r\n\r\n<h4>California. It&rsquo;s the third-largest state in the country and home to over 40 million people and a range of environments and landscapes: dense forests in the north, rugged mountains in the east, majestic deserts in the south, world-class beaches on the coast, and the fabulous wine regions on the coast and central valley.</h4>\r\n\r\n<p>And it&rsquo;s perfect for road trips.</p>\r\n\r\n<p><a href="https://www.nomadicmatt.com/travel-blogs/california-road-trip-one-week-itinerary/" rel="noopener noreferrer" target="_blank">I&rsquo;ve already outlined an awesome seven-day itinerary for Southern California</a>, but today I wanted to share a longer, more comprehensive route for anyone who has a few weeks to explore more of the state&rsquo;s cities and landscapes.</p>\r\n\r\n<p>Even with three weeks, you&rsquo;ll still miss a lot of great spots in this state (I mean you could spend months traveling California) but this suggested itinerary hits some of my favorite major &mdash; and not so major &mdash; places.</p>	blog_banners/tour2.jpg	California	1	2020-08-14 18:05:17.419965+05:30	2020-08-14 18:05:22.072299+05:30	5	1
4	12 THINGS I’D TELL ANY NEW TRAVELER	12-things-id-tell-any-new-traveler	<h3>1. Don&rsquo;t Be Scared</h3>\r\n\r\n<p><a href="https://www.nomadicmatt.com/travel-blogs/how-to-overcome-your-fears/" rel="noopener noreferrer" target="_blank">Fear is a powerful deterrent</a>. Taking the leap into the unknown is scary, but remember: you aren&rsquo;t the first person to travel the world. You aren&rsquo;t discovering new continents or exploring uncharted territories.</p>\r\n\r\n<p>There is a well-worn travel trail out&nbsp;<a href="https://www.nomadicmatt.com/travel-blogs/introducing-the-nomadic-network/" rel="noopener noreferrer" target="_blank">there and people to help guide you along the way</a>. If millions of people can make their way around the world each year, you can too.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>You&rsquo;re just as capable as anyone else. After all, you did the hardest part: deciding to go. Having the courage to make that decision is the hardest part.</p>\r\n\r\n<p>You&rsquo;ll make mistakes. Everyone does. But that&rsquo;s part of the experience.</p>\r\n\r\n<p>There will be lots of people out there to help you. You&rsquo;ll be shocked at just how helpful and kind people are. You&rsquo;ll make friends, you&rsquo;ll survive, and you&rsquo;ll be better for it.<br />\r\n&nbsp;</p>\r\n\r\n<h3>2. Don&rsquo;t Live by Your Guidebook</h3>\r\n\r\n<p>Guidebooks are useful for a general overview of a destination. They&rsquo;re a great way to learn the basics and get introduced to the cities and countries you plan to visit. But you&rsquo;ll never find the latest off-the-beaten-path attractions, bars, or restaurants in them.</p>\r\n\r\n<p>For the latest info (as well as insider tips), connect with locals. Use websites like&nbsp;<a href="http://meetup.com/" rel="noopener noreferrer" target="_blank">Meetup.com</a>&nbsp;or&nbsp;<a href="https://www.nomadicmatt.com/travel-blogs/how-to-crush-it-on-couchsurfing/" rel="noopener noreferrer" target="_blank">Couchsurfing</a>&nbsp;to connect directly with local and expats so you can get suggesitons, advice, and tips to make the most of your trip.</p>\r\n\r\n<p>Additionally, ask other travelers you meet or the staff at your hotel/hostel. Visit the local tourist board as well. It&rsquo;s a wealth of information that often gets overlooked.</p>\r\n\r\n<p>In short, use a guidebook for the foundation of your plans but fill in the details with up-to-date info from locals.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><a href="https://www.nomadicmatt.com/travel-blogs/my-current-list-of-favorite-blogs/" rel="noopener noreferrer" target="_blank">You can also use travel blogs for planning tips</a>&nbsp;since they are updated more often than guidebooks.<br />\r\n&nbsp;</p>\r\n\r\n<h3>3. Travel Slow</h3>\r\n\r\n<p>This is something most new long-term travelers learn the hard way (myself included).</p>\r\n\r\n<p>I know it can be tempting to pack in as many cities and activities as possible. (This is especially true if you only have a few weeks of vacation.)</p>\r\n\r\n<p>But rushing from city to city every other day is just going to leave you exhausted and stressed out. You&rsquo;ll experience a whirlwind of activity, most of which will remain a blur when you look back on it. Sure, you&rsquo;ll have some great pictures for Instagram but is that really why you&rsquo;re traveling?</p>\r\n\r\n<p>Travel is about quality, not quantity. Don&rsquo;t worry about how much you see. Don&rsquo;t worry about trying to impress people with the number of countries you&rsquo;ve visited. Slow down and soak up your destinations. You&rsquo;ll learn more, enjoy it more, and have a much more memorable experience.</p>\r\n\r\n<p>When it comes to travel, less is more. (Plus, traveling slow helps reduce your transportation costs. It&rsquo;s cheaper to go slow!)</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h3>4. Pack Light</h3>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>When I went to&nbsp;<a href="https://www.nomadicmatt.com/travel-guides/costa-rica-travel-tips/" rel="noopener noreferrer" target="_blank">Costa Rica</a>&nbsp;in 2003, I brought a bag filled with tons of stuff:&nbsp;hiking boots and pants, a fleece jacket, too much clothing, and my bodyweight in toiletries. And it all sat in my bag, mostly unused.</p>\r\n\r\n<p>I was packing for &ldquo;just in case&rdquo; and &ldquo;what if&rdquo; instead of the reality of my trip.</p>\r\n\r\n<p>While it can be tempting to bring more than you need &ldquo;just in case,&rdquo; remember this: you can buy things on the road. Socks, shampoo, jackets, new shoes &mdash; you can find it all aborad. There&rsquo;s no need to bring everything and the kitchen sink.</p>\r\n\r\n<p>So,&nbsp;<a href="https://www.nomadicmatt.com/travel-blogs/packing/" rel="noopener noreferrer" target="_blank">pack light</a>. You&rsquo;ll have less to carry, saving you the hassle and stress of lugging a huge backpack around for weeks (or months) on end.</p>\r\n\r\n<p>Unless you are going somewhere cold, a bag around 40 liters will suffice. Bags around this size are easier to carry, don&rsquo;t get too unwieldy, and can fit on your flight as carry-on only if need be (a huge perk if you want to save yourself some headaches).</p>\r\n\r\n<p><a href="https://www.nomadicmatt.com/travel-tips/choosing-the-right-backpack/" rel="noopener noreferrer" target="_blank">Here&rsquo;s everything you need to know to help you find the perfect bag for your budget and your trip</a>.<br />\r\n&nbsp;</p>\r\n\r\n<h3>5. Get Travel Insurance</h3>\r\n\r\n<p>Whether you&rsquo;re a travel veteran or a brand new backpacker, don&rsquo;t leave home without making sure you&rsquo;re protected in case something goes wrong. As we learned during the COVID-19 pandemic, sudden emergencies can come out of nowhere.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>I&rsquo;ve had my luggage lost. I popped an eardrum in Thailand.&nbsp;<a href="https://www.nomadicmatt.com/travel-blogs/getting-stabbed-in-colombia/" rel="noopener noreferrer" target="_blank">I was knifed in Colombia</a>.</p>\r\n\r\n<p>I&rsquo;ve had a friend break bones, need to be helicoptered out of the Amazon, or fly back due to a sudden death.</p>\r\n\r\n<p>Stuff happens.</p>\r\n\r\n<p>To ensure you&rsquo;re protected,&nbsp;<a href="https://www.nomadicmatt.com/travel-blogs/travel-insurance/" rel="noopener noreferrer" target="_blank">buy travel insurance</a>.</p>\r\n\r\n<p>I never leave home without it because I know just how quickly things can go sideways.</p>\r\n\r\n<p>You never know what might happen. The road is filled with uncertainty. Make sure you&rsquo;re protected. It will also give you peace of mind and help you travel with confidence.</p>\r\n\r\n<p>Here are a few posts worth reading. I know it&rsquo;s not a fun or sexy topic, but it&rsquo;s an important one!</p>\r\n\r\n<ul>\r\n\t<li><a href="https://www.nomadicmatt.com/travel-blogs/is-travel-insurance-worth-it/" rel="noopener noreferrer" target="_blank">Is Travel Insurance Worth it?</a></li>\r\n\t<li><a href="https://www.nomadicmatt.com/travel-blogs/best-travel-insurance-companies/" rel="noopener noreferrer" target="_blank">The 7 Best Travel Insurance Companies</a></li>\r\n\t<li><a href="https://www.nomadicmatt.com/travel-blogs/world-nomads-review/" rel="noopener noreferrer" target="_blank">World Nomads Insurance Review</a></li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h3>6. Bring a Phone (and Get Local SIM Cards)</h3>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Having a phone with data means you can look up directions on the fly, make reservations, and contact emergency services if something happens.</p>\r\n\r\n<p>Sure, there is free wifi pretty much everywhere these days so buying a local SIM card for data might seem like a waste of money (especially if you&rsquo;re on a really, really tight budget) but having that immediate access to roaming data can be a lifesaver.</p>\r\n\r\n<p>If you&rsquo;re from the US and traveling for less than 3 months,&nbsp;<a href="https://www.nomadicmatt.com/travel-blogs/t-mobile-for-travelers/" rel="noopener noreferrer" target="_blank">T-Mobile has reliable data plans</a>. Google Fi is another great option too.</p>\r\n\r\n<p>Additionally, having a phone makes it easier to connect and stay in touch with travelers you meet.</p>\r\n\r\n<p>Simply put: having a phone is really helpful in this day and age.</p>\r\n\r\n<p><a href="https://www.nomadicmatt.com/travel-blogs/travel-phone/" rel="noopener noreferrer" target="_blank">Just don&rsquo;t stay glued to it all the time</a>.<br />\r\n&nbsp;</p>\r\n\r\n<h3>7. Go with the Flow</h3>\r\n\r\n<p>When every day is planned out and there are timetables to follow, you&rsquo;ll get stressed. Very stressed. You&rsquo;ll rush around and be unhappy if there are any glitches in your well-curated schedule.</p>\r\n\r\n<p>And there will be hiccups. And glitches. And all kinds of inconveniences, both major and minor. Life on the road doesn&rsquo;t always go as planned &mdash; which is both fun and frustrating.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>When you plan too much, there&rsquo;s no room to experience the happy accidents of travel. There&rsquo;s no room for spontaneous choice, for incorporating new information and advice that you learn.</p>\r\n\r\n<p>When making your plan, make sure that it&rsquo;s flexible.&nbsp;<a href="https://www.nomadicmatt.com/travel-blogs/going-with-the-flow/" rel="noopener noreferrer" target="_blank">Learn to go with the flow</a>. Plan one or two activities and let the rest of the day happen.</p>\r\n\r\n<p>It&rsquo;ll be a more enjoyable and less stressful experience. You&rsquo;ll be surprised by what happens.</p>\r\n\r\n<p>Be flexible. Let life unfold the way it should.<br />\r\n&nbsp;</p>\r\n\r\n<h3>8. Bring Some Extra Money</h3>\r\n\r\n<p><a href="https://www.nomadicmatt.com/travel-blogs/the-ultimate-guide-to-traveling-when-you-have-no-money/" rel="noopener noreferrer" target="_blank">Travel isn&rsquo;t as expensive as many people think</a>&nbsp;but you still need to create a budget that means your needs. The secret to long term travel is smart money management.</p>\r\n\r\n<p>However, always&nbsp;<em>overestimate</em>&nbsp;the amount you need. You never know what might come up on the road. After all, you didn&rsquo;t spend all that time saving every penny and staying home to skip those once in a lifetime activities?</p>\r\n\r\n<p>Maybe you want to try bungee jumping or you discover an amazing restaurant you can&rsquo;t pass up. Or maybe you meet some cool people and decide to scrap your plan altogether.</p>\r\n\r\n<p>No matter how well you plan, something can always come up that will throw your budget out of synch.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>That&rsquo;s fine.</p>\r\n\r\n<p><a href="https://www.nomadicmatt.com/save-for-trip-advice/" rel="noopener noreferrer" target="_blank">Just leave home with a little extra</a>.&nbsp;If you&rsquo;re planning says you&rsquo;ll need $2,000, bring $2,500. It will give you a buffer for emergencies and spontaneity.<br />\r\n&nbsp;</p>\r\n\r\n<h3>9. Remember Everyone is in the Same Boat</h3>\r\n\r\n<p>It takes courage to talk to strangers when you&rsquo;re new to travel, especially if you&rsquo;re an introvert like me. What do you say? Can you just invite people to join you? What if you end up alone?</p>\r\n\r\n<p>These are all questions I had when I first started traveling. The good news? Everyone is in the same boat. All around you are other solo travelers looking for friends. They want to meet new people too.</p>\r\n\r\n<p><a href="https://www.nomadicmatt.com/travel-blogs/how-to-be-more-interesting-while-traveling/" rel="noopener noreferrer" target="_blank">While there are a few tricks to learn to help you meet people</a>, it mostly just comes down to saying &ldquo;hello&rdquo; and taking that first step. Everything else will fall into place after that. You have nothing to lose and, in the process &mdash; this is how you&rsquo;ll get over your shyness, make new friends, and get better at conversation.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h3>10. Be Adventurous</h3>\r\n\r\n<p>The only time we grow is when we&rsquo;re outside of our comfort zones. And travel is about growth. That doesn&rsquo;t mean you need to do dangerous things, but it does mean you need to push yourself beyond what you&rsquo;re used to.</p>\r\n\r\n<p>Hiking, sky diving, eating new foods, camping, rock climbing, hitchhiking &mdash; whatever taking a risk looks like to you is 100% ok. Everyone has different interests and tolerance levels. Push yours. It may be scary and uncomfortable at the time, but you&rsquo;ll be glad you did it later.</p>\r\n\r\n<p>Challenge yourself. Try new things. You&rsquo;ll walk away more self-confident.<br />\r\n&nbsp;</p>\r\n\r\n<h3>11. It&rsquo;s Ok to Change Your Mind</h3>\r\n\r\n<p>If you hate a city, leave and go to another one. If you don&rsquo;t enjoy the tour your on, cancel it early. And if you really love the place you&rsquo;re visiting, change your plans and stay longer.</p>\r\n\r\n<p>It&rsquo;s perfectly normal to change your mind on the road.</p>\r\n\r\n<p>Maybe that means extending your trip. Maybe that means going home early. There&rsquo;s nothing wrong with either choice.</p>\r\n\r\n<p><a href="https://www.nomadicmatt.com/travel-blogs/going-home/" rel="noopener noreferrer" target="_blank">Always remember you can go home if you aren&rsquo;t having fun</a>. You aren&rsquo;t stuck with your decision to travel or your decision to be in a specific place. You&rsquo;re the captain on your own ship. Never forget that!<br />\r\n&nbsp;</p>\r\n\r\n<h3>12. Remember, You&rsquo;re Not Alone</h3>\r\n\r\n<p>Wherever you go, there is a network of travelers who will be your friends, give you advice or tips, and help you out. They will guide you, point you in the right direction, and be your mentors.</p>\r\n\r\n<p>You aren&rsquo;t out there on your own.</p>\r\n\r\n<p>And you will be OK.</p>	blog_banners/attraction2.jpg	World	3	2020-08-14 17:57:09.449162+05:30	2020-08-14 19:09:19.880417+05:30	3	1
6	ESCAPING TO CHILLED OUT OAMARU	escaping-to-chilled-out-oamaru	<p>&ldquo;Oamaru? Why would you go on holiday to Oamaru?&rdquo;</p>\r\n\r\n<p>These are the words from my mate&nbsp;<a href="http://youngadventuress.com/">Liz</a>&nbsp;after viewing my Snapchat story a couple weeks ago. They sum up just about everyone&rsquo;s feelings when I tell them&nbsp;<strong><em>how much I love Oamaru</em></strong><strong>.&nbsp;</strong>Even Kiwis struggle to understand why you&rsquo;d want to spend any time there, or for that matter where Oamaru is even at.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Oamaru is a medium sized, coastal New Zealand town, about 1.5 hours from Dunedin and three hours from Christchurch. It&rsquo;s certainly not someplace that makes it on the usual top 5, or even top 10 list of places you need to see in New Zealand, but I reckon it should be right up there for those with a bit of a longer&nbsp;<a href="http://www.planitnz.com/planning-for-new-zealand/new-zealand-itineraries/">New Zealand itinerary</a>&nbsp;to work with.&nbsp;</p>\r\n\r\n<p>I&rsquo;m not entirely sure how I ever got put onto Oamaru in the first place; I think a mate of a mate spent some time there at a really funky AirBNB, and raved about it. So, when my parents came to visit last April, I planned a road trip to get us out of Queenstown for a bit, and to give Maura some space around the house.</p>\r\n\r\n<p>As it turns out, it was a pretty poorly planned road trip &ndash; which is slightly troubling given my days spent helping other people plan New Zealand itineraries through Planit NZ. We bit off way more than we could chew; after a few too many beers at the Arrowtown Autumn Festival, we set off late the next morning for a drive from Queenstown to Hokitika. Day two saw us checking out the Hokitika Gorge (<a href="https://www.instagram.com/p/BExdu61hS0h/?taken-by=backpackingmatt">which is epic</a>), before driving on past Arthurs Pass to the small blink if and you miss it settlement of Bealey. And from there, we drove all the way to Oamaru &ndash; and then back to Queenstown.</p>\r\n\r\n<p><strong>Oamaru Harbor</strong></p>\r\n\r\n<p>So on that fleeting visit where we spent more than 12 but less than 24 hours in Oamaru, I fell in love and knew I had to go back.</p>\r\n\r\n<p>Fast forward a couple weeks, and I planned a relaxed weekend away with the Missus to this often overlooked town on the East Coast of the South Island, and I remain convinced it&rsquo;s a bloody great little spot. And with that, here&rsquo;s&hellip;</p>	blog_banners/florence.jpg	Oamaru	2	2020-08-14 18:09:38.907225+05:30	2020-08-14 18:10:42.042428+05:30	7	4
7	The Ultimate Berlin Guide: What to Do, See, and Eat!	the-ultimate-berlin-guide-what-to-do-see-and-eat	<p>I&rsquo;ve been living in Berlin for the past four years, on and off. So I&rsquo;m biased, yes, but once you come here and experience it for yourself, you&rsquo;ll surely also come to love the endless layers to this city &ndash; the fascinating history, the underbelly, the artistic vibes, and the cosmopolitan nature of it.</p>\r\n\r\n<p>I&rsquo;ve been living in Berlin for the past four years, on and off. So I&rsquo;m biased, yes, but once you come here and experience it for yourself, you&rsquo;ll surely also come to love the endless layers to this city &ndash; the fascinating history, the underbelly, the artistic vibes, and the cosmopolitan nature of it.</p>\r\n\r\n<h1>Things to do:</h1>\r\n\r\n<p>There&rsquo;s so much to do, &nbsp;like really so incredibly much, that chances are you&rsquo;ll have to make some tough decisions as far as what to see and what to miss. I tend to like to get off the tourist trail and to focus on things that are unique about a place. So with&nbsp;that in mind, the following are things that you can only do here:</p>	blog_banners/asia.jpg	Asia	0	2020-08-14 18:13:27.766676+05:30	2020-08-14 18:13:27.766706+05:30	6	5
8	Skiing in Lech Zürs am Arlberg	skiing-in-lech-zurs-am-arlberg	<p>Skiing in Lech Z&uuml;rs am Arlberg is at the very heart of the Vorarlberg winter, and it is only right to take this rite of ski passage at least once, even as a beginner. Its mountainous altitudes of over 2000m are at the very heart of Austrian ski, with Arlberg being the home of the country&rsquo;s very first ski course over 100 years ago.</p>\r\n\r\n<p><strong>If you haven&rsquo;t tested the slopes here, in what now constitutes Austria&rsquo;s largest continuous ski area that connects with neighbouring Tyrol, then one might say you haven&rsquo;t skied in Austria at all.</strong></p>\r\n\r\n<p>While Vorarlberg and its six regions are dotted with a variety of ski areas, the Lech Z&uuml;rs am Arlberg region is&nbsp;<a href="https://www.lech-zuers.at/" rel="noopener noreferrer" target="_blank">the place to start</a>, or aspire to, as the darling of them all.</p>\r\n\r\n<p><img alt="" src="https://www.bordersofadventure.com/wp-content/uploads/2017/10/DSCF3814.jpg" style="height:400px; width:100%" title="Skiing in Lech Zürs am Arlberg" /></p>\r\n\r\n<p>A Guide to Skiing in Lech Z&uuml;rs am Arlberg &ndash; The Darling Winter Slopes of Austria</p>\r\n\r\n<p>With pristine carved pistes, Lech is considered one of the finest ski resorts in the world and is a favourite with the Netherlands Royalty and Hollywood (<a href="https://www.youtube.com/watch?v=GTCKAy3buxo" rel="noopener noreferrer" target="_blank">if you remember the ski scene from&nbsp;Bridget Jones: The Edge of Reason</a>). The Lech Z&uuml;rs am Arlberg ski area and its 200km of descents hold onto this title in one part due to its vast nature. Since 2013, it has been connected to the one in Warth-Schrocken with the addition of a huge cable car circuit, which means you can now ski across two major areas in one easily accessible resort.</p>	blog_banners/tour3.4.jpg	Austria	2	2020-08-14 19:03:23.064689+05:30	2020-08-14 19:05:17.123594+05:30	2	1
9	SOME THOUGHTS ON KYRGYZSTAN	some-thoughts-on-kyrgyzstan	<h2>On Pre-Conceived Stereotypes</h2>\r\n\r\n<p>I think it&rsquo;s so hard to not think in stereotypes. &nbsp;And, I think the idea of stereotypes is so often correlated with racism. &nbsp;But, it&rsquo;s really not. &nbsp;I worried a lot during my stay in Kyrgyzstan that my pre-conceived ideas of the country made me a bit of a western-snob. &nbsp;However, when I came home to&nbsp;<a href="https://www.brendansadventures.com/travel-guides/north-america-travel-guides/canada-travel-guides/">Canada</a>&nbsp;and thought of the stereotypes that others must imagine before coming to the country, I realized that it&rsquo;s totally normal to imagine the stereotypes of the country to be a reality. &nbsp;In fact, it&rsquo;s so often what our tourism boards promote. &nbsp;It&rsquo;s no wonder that people think Canadians ride in dog sleds, live in igloos, and have bears in their backyard; that&rsquo;s what we promote.</p>\r\n\r\n<p>I thought Kyrgyzstan was going to be wilder, more nomadic, and that everyone would be getting around on horseback. &nbsp;Essentially, I thought Kyrgyzstan was going to be&nbsp;<a href="https://www.brendansadventures.com/travel-guides/asia-travel-guides/far-east-asia/mongolia/">Mongolia</a>. &nbsp;And while it was free and wild, it was totally different, more developed, and more urban than I expected. &nbsp;But, based on all the imagery of eagle hunters, nomads, and wild horses in the back country, it&rsquo;s easy to assume that&rsquo;s all there is in the country. But, there&rsquo;s so much more. And that&rsquo;s definitely not a bad thing.</p>	blog_banners/dubai3.jpg	KYRGYZSTAN	2	2020-08-14 19:07:31.819051+05:30	2020-08-14 19:08:28.820195+05:30	9	4
\.


--
-- Name: blog_blog_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.blog_blog_id_seq', 9, true);


--
-- Data for Name: blog_blog_likes; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.blog_blog_likes (id, blog_id, user_id) FROM stdin;
1	1	4
2	2	4
3	4	3
4	5	5
5	2	2
6	8	2
7	3	2
8	9	9
9	4	9
\.


--
-- Name: blog_blog_likes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.blog_blog_likes_id_seq', 9, true);


--
-- Data for Name: blog_blog_tags; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.blog_blog_tags (id, blog_id, tag_id) FROM stdin;
1	3	1
2	2	1
3	2	2
4	2	3
5	1	4
6	4	1
7	4	2
8	4	3
9	4	4
10	4	5
11	6	5
12	6	6
13	7	4
14	7	6
15	8	1
16	8	3
17	9	4
18	9	6
\.


--
-- Name: blog_blog_tags_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.blog_blog_tags_id_seq', 18, true);


--
-- Data for Name: blog_blogcomment; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.blog_blogcomment (id, text, created_on, blog_id, user_id) FROM stdin;
1	Nice!!!	2020-08-14 19:05:46.964922+05:30	3	2
\.


--
-- Name: blog_blogcomment_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.blog_blogcomment_id_seq', 1, true);


--
-- Data for Name: blog_category; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.blog_category (id, name, slug, banner) FROM stdin;
1	Adventure	adventure	category_banners/adventure.jpg
2	Nature	nature	category_banners/Valley_of_Flowers.jpg
3	Religious	religious	category_banners/religious.jpg
4	History	history	category_banners/attraction4.jpg
5	Food & Drink	food-drink	category_banners/attraction3.jpg
\.


--
-- Name: blog_category_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.blog_category_id_seq', 5, true);


--
-- Data for Name: blog_tag; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.blog_tag (id, name, slug, banner) FROM stdin;
1	Fun	fun	tag_banners/paris1.jpg
2	Party	party	tag_banners/dance.jpg
3	Nature	nature	tag_banners/coorg.jpg
6	Belief	belief	tag_banners/attraction6.jpg
5	Action	action	tag_banners/attraction1.jpg
4	Relax	relax	tag_banners/tour3.2.jpg
\.


--
-- Name: blog_tag_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.blog_tag_id_seq', 6, true);


--
-- Data for Name: dashboard_userquery; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.dashboard_userquery (id, name, email, subject, content, created_on, is_seen) FROM stdin;
\.


--
-- Name: dashboard_userquery_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.dashboard_userquery_id_seq', 1, false);


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
1	2020-08-14 17:16:07.265893+05:30	7	brad-pitt63759988	2	[{"changed": {"fields": ["Bio", "Facebook link", "Instagram link", "Twitter link"]}}]	7	1
2	2020-08-14 17:16:30.349411+05:30	6	siddharth-malhotra37610960	2	[{"changed": {"fields": ["Bio", "Facebook link", "Instagram link", "Twitter link"]}}]	7	1
3	2020-08-14 17:17:15.590046+05:30	5	leonardo-dicaprio04910688	2	[{"changed": {"fields": ["Bio", "Facebook link", "Instagram link", "Twitter link"]}}]	7	1
4	2020-08-14 17:17:38.932275+05:30	4	bruce-wayne63551116	2	[{"changed": {"fields": ["Bio", "Facebook link", "Instagram link", "Twitter link"]}}]	7	1
5	2020-08-14 17:18:15.034879+05:30	3	ranbir-kapoor22334668	2	[{"changed": {"fields": ["Bio", "Facebook link", "Instagram link", "Twitter link"]}}]	7	1
6	2020-08-14 17:18:33.989181+05:30	2	shahrukh-khan35335859	2	[{"changed": {"fields": ["Bio", "Facebook link", "Instagram link", "Twitter link"]}}]	7	1
7	2020-08-14 17:20:03.180584+05:30	1	Adventure	1	[{"added": {}}]	9	1
8	2020-08-14 17:20:16.912811+05:30	2	Nature	1	[{"added": {}}]	9	1
9	2020-08-14 17:21:55.447502+05:30	3	Religious	1	[{"added": {}}]	9	1
10	2020-08-14 17:22:26.521729+05:30	4	History	1	[{"added": {}}]	9	1
11	2020-08-14 17:22:45.893173+05:30	5	Food & Drink	1	[{"added": {}}]	9	1
12	2020-08-14 17:26:51.661953+05:30	1	Fun	1	[{"added": {}}]	10	1
13	2020-08-14 17:27:15.272794+05:30	2	Party	1	[{"added": {}}]	10	1
14	2020-08-14 17:27:36.370386+05:30	3	Nature	1	[{"added": {}}]	10	1
15	2020-08-14 17:27:45.254208+05:30	4	relax	1	[{"added": {}}]	10	1
16	2020-08-14 17:28:02.851434+05:30	5	action	1	[{"added": {}}]	10	1
17	2020-08-14 17:29:23.824438+05:30	6	Belief	1	[{"added": {}}]	10	1
18	2020-08-14 17:29:32.004542+05:30	5	Action	2	[{"changed": {"fields": ["Name"]}}]	10	1
19	2020-08-14 17:29:37.888471+05:30	4	Relax	2	[{"changed": {"fields": ["Name"]}}]	10	1
20	2020-08-14 17:31:08.669526+05:30	8	mike-price43518302	2	[{"changed": {"fields": ["Bio", "Facebook link", "Instagram link", "Twitter link"]}}]	7	1
21	2020-08-14 17:36:25.351668+05:30	9	ertugrul-ghazi06287096	2	[{"changed": {"fields": ["Bio", "Facebook link", "Instagram link", "Twitter link"]}}]	7	1
22	2020-08-14 17:37:12.168163+05:30	9	ertugrul-ghazi06287096	2	[{"changed": {"fields": ["Followers"]}}]	7	1
23	2020-08-14 17:46:25.607107+05:30	2	HOW TO ROAD TRIP AROUND OAHU	2	[{"changed": {"fields": ["Content"]}}]	8	1
24	2020-08-14 17:52:01.028711+05:30	3	I have update my travel hacking guide	2	[{"changed": {"fields": ["Tags"]}}]	8	1
25	2020-08-14 17:52:10.311342+05:30	2	HOW TO ROAD TRIP AROUND OAHU	2	[{"changed": {"fields": ["Tags"]}}]	8	1
26	2020-08-14 17:52:18.13435+05:30	1	HOW TO SPEND 48 HOURS IN OSLO	2	[{"changed": {"fields": ["Tags"]}}]	8	1
27	2020-08-14 17:58:54.199092+05:30	4	12 THINGS I’D TELL ANY NEW TRAVELER	2	[{"changed": {"fields": ["Tags"]}}]	8	1
28	2020-08-14 18:10:21.646778+05:30	6	ESCAPING TO CHILLED OUT OAMARU	2	[{"changed": {"fields": ["Content"]}}]	8	1
29	2020-08-14 19:05:14.58948+05:30	8	Skiing in Lech Zürs am Arlberg	2	[{"changed": {"fields": ["Content"]}}]	8	1
\.


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.django_admin_log_id_seq', 29, true);


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.django_content_type (id, app_label, model) FROM stdin;
1	admin	logentry
2	auth	permission
3	auth	group
4	contenttypes	contenttype
5	sessions	session
6	dashboard	userquery
7	account	user
8	blog	blog
9	blog	category
10	blog	tag
11	blog	blogcomment
\.


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.django_content_type_id_seq', 11, true);


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2020-08-14 13:12:40.849627+05:30
2	contenttypes	0002_remove_content_type_name	2020-08-14 13:12:40.875337+05:30
3	auth	0001_initial	2020-08-14 13:12:41.0426+05:30
4	auth	0002_alter_permission_name_max_length	2020-08-14 13:12:41.325988+05:30
5	auth	0003_alter_user_email_max_length	2020-08-14 13:12:41.341161+05:30
6	auth	0004_alter_user_username_opts	2020-08-14 13:12:41.357597+05:30
7	auth	0005_alter_user_last_login_null	2020-08-14 13:12:41.373722+05:30
8	auth	0006_require_contenttypes_0002	2020-08-14 13:12:41.383249+05:30
9	auth	0007_alter_validators_add_error_messages	2020-08-14 13:12:41.398046+05:30
10	auth	0008_alter_user_username_max_length	2020-08-14 13:12:41.415445+05:30
11	auth	0009_alter_user_last_name_max_length	2020-08-14 13:12:41.430876+05:30
12	auth	0010_alter_group_name_max_length	2020-08-14 13:12:41.448555+05:30
13	auth	0011_update_proxy_permissions	2020-08-14 13:12:41.463643+05:30
14	account	0001_initial	2020-08-14 13:12:41.694491+05:30
15	admin	0001_initial	2020-08-14 13:12:42.113562+05:30
16	admin	0002_logentry_remove_auto_add	2020-08-14 13:12:42.21729+05:30
17	admin	0003_logentry_add_action_flag_choices	2020-08-14 13:12:42.240847+05:30
18	blog	0001_initial	2020-08-14 13:12:42.775647+05:30
19	dashboard	0001_initial	2020-08-14 13:12:43.578901+05:30
20	sessions	0001_initial	2020-08-14 13:12:43.68549+05:30
21	blog	0002_auto_20200814_1334	2020-08-14 19:04:20.893337+05:30
\.


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.django_migrations_id_seq', 21, true);


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
6x6cmfq4z81yuqxiwjlrzpgadsv8syeb	NzQwN2E5ZGZkMjI5ODljODQ5OTRiNTVhN2FhZmFhYmQ2OTEzZmY0Yjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI5YWY2MWM3MDY5NjkxZmVkYjk0ZWUxYWY4MzI3NzNkYTMzMDQ4ZjQ1In0=	2020-08-28 13:15:41.990309+05:30
\.


--
-- Name: account_user_followers_from_user_id_to_user_id_0a8287cd_uniq; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.account_user_followers
    ADD CONSTRAINT account_user_followers_from_user_id_to_user_id_0a8287cd_uniq UNIQUE (from_user_id, to_user_id);


--
-- Name: account_user_followers_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.account_user_followers
    ADD CONSTRAINT account_user_followers_pkey PRIMARY KEY (id);


--
-- Name: account_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.account_user_groups
    ADD CONSTRAINT account_user_groups_pkey PRIMARY KEY (id);


--
-- Name: account_user_groups_user_id_group_id_4d09af3e_uniq; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.account_user_groups
    ADD CONSTRAINT account_user_groups_user_id_group_id_4d09af3e_uniq UNIQUE (user_id, group_id);


--
-- Name: account_user_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.account_user
    ADD CONSTRAINT account_user_pkey PRIMARY KEY (id);


--
-- Name: account_user_user_permis_user_id_permission_id_48bdd28b_uniq; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.account_user_user_permissions
    ADD CONSTRAINT account_user_user_permis_user_id_permission_id_48bdd28b_uniq UNIQUE (user_id, permission_id);


--
-- Name: account_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.account_user_user_permissions
    ADD CONSTRAINT account_user_user_permissions_pkey PRIMARY KEY (id);


--
-- Name: account_user_username_key; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.account_user
    ADD CONSTRAINT account_user_username_key UNIQUE (username);


--
-- Name: auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- Name: auth_group_permissions_group_id_permission_id_0cd325b0_uniq; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);


--
-- Name: auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- Name: auth_permission_content_type_id_codename_01ab375a_uniq; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);


--
-- Name: auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- Name: blog_blog_likes_blog_id_user_id_2a6b7c83_uniq; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.blog_blog_likes
    ADD CONSTRAINT blog_blog_likes_blog_id_user_id_2a6b7c83_uniq UNIQUE (blog_id, user_id);


--
-- Name: blog_blog_likes_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.blog_blog_likes
    ADD CONSTRAINT blog_blog_likes_pkey PRIMARY KEY (id);


--
-- Name: blog_blog_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.blog_blog
    ADD CONSTRAINT blog_blog_pkey PRIMARY KEY (id);


--
-- Name: blog_blog_slug_key; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.blog_blog
    ADD CONSTRAINT blog_blog_slug_key UNIQUE (slug);


--
-- Name: blog_blog_tags_blog_id_tag_id_211c6be5_uniq; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.blog_blog_tags
    ADD CONSTRAINT blog_blog_tags_blog_id_tag_id_211c6be5_uniq UNIQUE (blog_id, tag_id);


--
-- Name: blog_blog_tags_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.blog_blog_tags
    ADD CONSTRAINT blog_blog_tags_pkey PRIMARY KEY (id);


--
-- Name: blog_blog_title_key; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.blog_blog
    ADD CONSTRAINT blog_blog_title_key UNIQUE (title);


--
-- Name: blog_blogcomment_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.blog_blogcomment
    ADD CONSTRAINT blog_blogcomment_pkey PRIMARY KEY (id);


--
-- Name: blog_category_name_key; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.blog_category
    ADD CONSTRAINT blog_category_name_key UNIQUE (name);


--
-- Name: blog_category_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.blog_category
    ADD CONSTRAINT blog_category_pkey PRIMARY KEY (id);


--
-- Name: blog_category_slug_key; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.blog_category
    ADD CONSTRAINT blog_category_slug_key UNIQUE (slug);


--
-- Name: blog_tag_name_key; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.blog_tag
    ADD CONSTRAINT blog_tag_name_key UNIQUE (name);


--
-- Name: blog_tag_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.blog_tag
    ADD CONSTRAINT blog_tag_pkey PRIMARY KEY (id);


--
-- Name: blog_tag_slug_key; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.blog_tag
    ADD CONSTRAINT blog_tag_slug_key UNIQUE (slug);


--
-- Name: dashboard_userquery_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.dashboard_userquery
    ADD CONSTRAINT dashboard_userquery_pkey PRIMARY KEY (id);


--
-- Name: django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- Name: django_content_type_app_label_model_76bd3d3b_uniq; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);


--
-- Name: django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- Name: django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- Name: django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- Name: account_user_followers_from_user_id_e5baafe7; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX account_user_followers_from_user_id_e5baafe7 ON public.account_user_followers USING btree (from_user_id);


--
-- Name: account_user_followers_to_user_id_37144574; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX account_user_followers_to_user_id_37144574 ON public.account_user_followers USING btree (to_user_id);


--
-- Name: account_user_groups_group_id_6c71f749; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX account_user_groups_group_id_6c71f749 ON public.account_user_groups USING btree (group_id);


--
-- Name: account_user_groups_user_id_14345e7b; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX account_user_groups_user_id_14345e7b ON public.account_user_groups USING btree (user_id);


--
-- Name: account_user_user_permissions_permission_id_66c44191; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX account_user_user_permissions_permission_id_66c44191 ON public.account_user_user_permissions USING btree (permission_id);


--
-- Name: account_user_user_permissions_user_id_cc42d270; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX account_user_user_permissions_user_id_cc42d270 ON public.account_user_user_permissions USING btree (user_id);


--
-- Name: account_user_username_d393f583_like; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX account_user_username_d393f583_like ON public.account_user USING btree (username varchar_pattern_ops);


--
-- Name: auth_group_name_a6ea08ec_like; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);


--
-- Name: auth_group_permissions_group_id_b120cbf9; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);


--
-- Name: auth_group_permissions_permission_id_84c5c92e; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);


--
-- Name: auth_permission_content_type_id_2f476e4b; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);


--
-- Name: blog_blog_author_id_8791af69; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX blog_blog_author_id_8791af69 ON public.blog_blog USING btree (author_id);


--
-- Name: blog_blog_category_id_c34d5f94; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX blog_blog_category_id_c34d5f94 ON public.blog_blog USING btree (category_id);


--
-- Name: blog_blog_likes_blog_id_b7912000; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX blog_blog_likes_blog_id_b7912000 ON public.blog_blog_likes USING btree (blog_id);


--
-- Name: blog_blog_likes_user_id_bc153396; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX blog_blog_likes_user_id_bc153396 ON public.blog_blog_likes USING btree (user_id);


--
-- Name: blog_blog_slug_4812aa2c_like; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX blog_blog_slug_4812aa2c_like ON public.blog_blog USING btree (slug varchar_pattern_ops);


--
-- Name: blog_blog_tags_blog_id_e4cd5f6a; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX blog_blog_tags_blog_id_e4cd5f6a ON public.blog_blog_tags USING btree (blog_id);


--
-- Name: blog_blog_tags_tag_id_36a3abc6; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX blog_blog_tags_tag_id_36a3abc6 ON public.blog_blog_tags USING btree (tag_id);


--
-- Name: blog_blog_title_942d8a1e_like; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX blog_blog_title_942d8a1e_like ON public.blog_blog USING btree (title varchar_pattern_ops);


--
-- Name: blog_blogcomment_blog_id_d3b167d7; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX blog_blogcomment_blog_id_d3b167d7 ON public.blog_blogcomment USING btree (blog_id);


--
-- Name: blog_blogcomment_user_id_dc3b3111; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX blog_blogcomment_user_id_dc3b3111 ON public.blog_blogcomment USING btree (user_id);


--
-- Name: blog_category_name_92eb1483_like; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX blog_category_name_92eb1483_like ON public.blog_category USING btree (name varchar_pattern_ops);


--
-- Name: blog_category_slug_92643dc5_like; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX blog_category_slug_92643dc5_like ON public.blog_category USING btree (slug varchar_pattern_ops);


--
-- Name: blog_tag_name_c5718cc8_like; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX blog_tag_name_c5718cc8_like ON public.blog_tag USING btree (name varchar_pattern_ops);


--
-- Name: blog_tag_slug_01068d0e_like; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX blog_tag_slug_01068d0e_like ON public.blog_tag USING btree (slug varchar_pattern_ops);


--
-- Name: django_admin_log_content_type_id_c4bce8eb; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);


--
-- Name: django_admin_log_user_id_c564eba6; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);


--
-- Name: django_session_expire_date_a5c62663; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);


--
-- Name: django_session_session_key_c0390e0f_like; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);


--
-- Name: account_user_followers_from_user_id_e5baafe7_fk_account_user_id; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.account_user_followers
    ADD CONSTRAINT account_user_followers_from_user_id_e5baafe7_fk_account_user_id FOREIGN KEY (from_user_id) REFERENCES public.account_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: account_user_followers_to_user_id_37144574_fk_account_user_id; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.account_user_followers
    ADD CONSTRAINT account_user_followers_to_user_id_37144574_fk_account_user_id FOREIGN KEY (to_user_id) REFERENCES public.account_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: account_user_groups_group_id_6c71f749_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.account_user_groups
    ADD CONSTRAINT account_user_groups_group_id_6c71f749_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: account_user_groups_user_id_14345e7b_fk_account_user_id; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.account_user_groups
    ADD CONSTRAINT account_user_groups_user_id_14345e7b_fk_account_user_id FOREIGN KEY (user_id) REFERENCES public.account_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: account_user_user_pe_permission_id_66c44191_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.account_user_user_permissions
    ADD CONSTRAINT account_user_user_pe_permission_id_66c44191_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: account_user_user_pe_user_id_cc42d270_fk_account_u; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.account_user_user_permissions
    ADD CONSTRAINT account_user_user_pe_user_id_cc42d270_fk_account_u FOREIGN KEY (user_id) REFERENCES public.account_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissio_permission_id_84c5c92e_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissions_group_id_b120cbf9_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_permission_content_type_id_2f476e4b_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: blog_blog_author_id_8791af69_fk_account_user_id; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.blog_blog
    ADD CONSTRAINT blog_blog_author_id_8791af69_fk_account_user_id FOREIGN KEY (author_id) REFERENCES public.account_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: blog_blog_category_id_c34d5f94_fk_blog_category_id; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.blog_blog
    ADD CONSTRAINT blog_blog_category_id_c34d5f94_fk_blog_category_id FOREIGN KEY (category_id) REFERENCES public.blog_category(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: blog_blog_likes_blog_id_b7912000_fk_blog_blog_id; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.blog_blog_likes
    ADD CONSTRAINT blog_blog_likes_blog_id_b7912000_fk_blog_blog_id FOREIGN KEY (blog_id) REFERENCES public.blog_blog(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: blog_blog_likes_user_id_bc153396_fk_account_user_id; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.blog_blog_likes
    ADD CONSTRAINT blog_blog_likes_user_id_bc153396_fk_account_user_id FOREIGN KEY (user_id) REFERENCES public.account_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: blog_blog_tags_blog_id_e4cd5f6a_fk_blog_blog_id; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.blog_blog_tags
    ADD CONSTRAINT blog_blog_tags_blog_id_e4cd5f6a_fk_blog_blog_id FOREIGN KEY (blog_id) REFERENCES public.blog_blog(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: blog_blog_tags_tag_id_36a3abc6_fk_blog_tag_id; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.blog_blog_tags
    ADD CONSTRAINT blog_blog_tags_tag_id_36a3abc6_fk_blog_tag_id FOREIGN KEY (tag_id) REFERENCES public.blog_tag(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: blog_blogcomment_blog_id_d3b167d7_fk_blog_blog_id; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.blog_blogcomment
    ADD CONSTRAINT blog_blogcomment_blog_id_d3b167d7_fk_blog_blog_id FOREIGN KEY (blog_id) REFERENCES public.blog_blog(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: blog_blogcomment_user_id_dc3b3111_fk_account_user_id; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.blog_blogcomment
    ADD CONSTRAINT blog_blogcomment_user_id_dc3b3111_fk_account_user_id FOREIGN KEY (user_id) REFERENCES public.account_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log_content_type_id_c4bce8eb_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log_user_id_c564eba6_fk_account_user_id; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_account_user_id FOREIGN KEY (user_id) REFERENCES public.account_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: SCHEMA public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--

