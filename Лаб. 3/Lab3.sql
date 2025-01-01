--
-- PostgreSQL database dump
--

-- Dumped from database version 11.18 (Ubuntu 11.18-1.pgdg20.04+1)
-- Dumped by pg_dump version 16.0

-- Started on 2023-12-26 16:44:04

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

--
-- TOC entry 27 (class 2615 OID 2200)
-- Name: public; Type: SCHEMA; Schema: -; Owner: postgres
--

-- *not* creating schema, since initdb creates it


ALTER SCHEMA public OWNER TO postgres;

--
-- TOC entry 9 (class 3079 OID 17135)
-- Name: btree_gin; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS btree_gin WITH SCHEMA public;


--
-- TOC entry 4093 (class 0 OID 0)
-- Dependencies: 9
-- Name: EXTENSION btree_gin; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION btree_gin IS 'support for indexing common datatypes in GIN';


--
-- TOC entry 5 (class 3079 OID 17680)
-- Name: btree_gist; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS btree_gist WITH SCHEMA public;


--
-- TOC entry 4094 (class 0 OID 0)
-- Dependencies: 5
-- Name: EXTENSION btree_gist; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION btree_gist IS 'support for indexing common datatypes in GiST';


--
-- TOC entry 16 (class 3079 OID 16661)
-- Name: citext; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS citext WITH SCHEMA public;


--
-- TOC entry 4095 (class 0 OID 0)
-- Dependencies: 16
-- Name: EXTENSION citext; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION citext IS 'data type for case-insensitive character strings';


--
-- TOC entry 7 (class 3079 OID 17577)
-- Name: cube; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS cube WITH SCHEMA public;


--
-- TOC entry 4096 (class 0 OID 0)
-- Dependencies: 7
-- Name: EXTENSION cube; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION cube IS 'data type for multidimensional cubes';


--
-- TOC entry 22 (class 3079 OID 16384)
-- Name: dblink; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS dblink WITH SCHEMA public;


--
-- TOC entry 4097 (class 0 OID 0)
-- Dependencies: 22
-- Name: EXTENSION dblink; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION dblink IS 'connect to other PostgreSQL databases from within a database';


--
-- TOC entry 10 (class 3079 OID 17130)
-- Name: dict_int; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS dict_int WITH SCHEMA public;


--
-- TOC entry 4098 (class 0 OID 0)
-- Dependencies: 10
-- Name: EXTENSION dict_int; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION dict_int IS 'text search dictionary template for integers';


--
-- TOC entry 4 (class 3079 OID 18303)
-- Name: dict_xsyn; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS dict_xsyn WITH SCHEMA public;


--
-- TOC entry 4099 (class 0 OID 0)
-- Dependencies: 4
-- Name: EXTENSION dict_xsyn; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION dict_xsyn IS 'text search dictionary template for extended synonym processing';


--
-- TOC entry 6 (class 3079 OID 17664)
-- Name: earthdistance; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS earthdistance WITH SCHEMA public;


--
-- TOC entry 4100 (class 0 OID 0)
-- Dependencies: 6
-- Name: EXTENSION earthdistance; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION earthdistance IS 'calculate great-circle distances on the surface of the Earth';


--
-- TOC entry 17 (class 3079 OID 16650)
-- Name: fuzzystrmatch; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS fuzzystrmatch WITH SCHEMA public;


--
-- TOC entry 4101 (class 0 OID 0)
-- Dependencies: 17
-- Name: EXTENSION fuzzystrmatch; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION fuzzystrmatch IS 'determine similarities and distance between strings';


--
-- TOC entry 11 (class 3079 OID 17007)
-- Name: hstore; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS hstore WITH SCHEMA public;


--
-- TOC entry 4102 (class 0 OID 0)
-- Dependencies: 11
-- Name: EXTENSION hstore; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION hstore IS 'data type for storing sets of (key, value) pairs';


--
-- TOC entry 12 (class 3079 OID 16889)
-- Name: intarray; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS intarray WITH SCHEMA public;


--
-- TOC entry 4103 (class 0 OID 0)
-- Dependencies: 12
-- Name: EXTENSION intarray; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION intarray IS 'functions, operators, and index support for 1-D arrays of integers';


--
-- TOC entry 20 (class 3079 OID 16444)
-- Name: ltree; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS ltree WITH SCHEMA public;


--
-- TOC entry 4104 (class 0 OID 0)
-- Dependencies: 20
-- Name: EXTENSION ltree; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION ltree IS 'data type for hierarchical tree-like structures';


--
-- TOC entry 2 (class 3079 OID 18315)
-- Name: pg_stat_statements; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS pg_stat_statements WITH SCHEMA public;


--
-- TOC entry 4105 (class 0 OID 0)
-- Dependencies: 2
-- Name: EXTENSION pg_stat_statements; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION pg_stat_statements IS 'track execution statistics of all SQL statements executed';


--
-- TOC entry 13 (class 3079 OID 16812)
-- Name: pg_trgm; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS pg_trgm WITH SCHEMA public;


--
-- TOC entry 4106 (class 0 OID 0)
-- Dependencies: 13
-- Name: EXTENSION pg_trgm; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION pg_trgm IS 'text similarity measurement and index searching based on trigrams';


--
-- TOC entry 14 (class 3079 OID 16775)
-- Name: pgcrypto; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS pgcrypto WITH SCHEMA public;


--
-- TOC entry 4107 (class 0 OID 0)
-- Dependencies: 14
-- Name: EXTENSION pgcrypto; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION pgcrypto IS 'cryptographic functions';


--
-- TOC entry 8 (class 3079 OID 17575)
-- Name: pgrowlocks; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS pgrowlocks WITH SCHEMA public;


--
-- TOC entry 4108 (class 0 OID 0)
-- Dependencies: 8
-- Name: EXTENSION pgrowlocks; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION pgrowlocks IS 'show row-level locking information';


--
-- TOC entry 19 (class 3079 OID 16619)
-- Name: pgstattuple; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS pgstattuple WITH SCHEMA public;


--
-- TOC entry 4109 (class 0 OID 0)
-- Dependencies: 19
-- Name: EXTENSION pgstattuple; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION pgstattuple IS 'show tuple-level statistics';


--
-- TOC entry 18 (class 3079 OID 16629)
-- Name: tablefunc; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS tablefunc WITH SCHEMA public;


--
-- TOC entry 4110 (class 0 OID 0)
-- Dependencies: 18
-- Name: EXTENSION tablefunc; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION tablefunc IS 'functions that manipulate whole tables, including crosstab';


--
-- TOC entry 3 (class 3079 OID 18308)
-- Name: unaccent; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS unaccent WITH SCHEMA public;


--
-- TOC entry 4111 (class 0 OID 0)
-- Dependencies: 3
-- Name: EXTENSION unaccent; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION unaccent IS 'text search dictionary that removes accents';


--
-- TOC entry 15 (class 3079 OID 16764)
-- Name: uuid-ossp; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS "uuid-ossp" WITH SCHEMA public;


--
-- TOC entry 4112 (class 0 OID 0)
-- Dependencies: 15
-- Name: EXTENSION "uuid-ossp"; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION "uuid-ossp" IS 'generate universally unique identifiers (UUIDs)';


--
-- TOC entry 21 (class 3079 OID 16430)
-- Name: xml2; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS xml2 WITH SCHEMA public;


--
-- TOC entry 4113 (class 0 OID 0)
-- Dependencies: 21
-- Name: EXTENSION xml2; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION xml2 IS 'XPath querying and XSLT';


SET default_tablespace = '';

--
-- TOC entry 223 (class 1259 OID 7101068)
-- Name: customers; Type: TABLE; Schema: public; Owner: tgddulyf
--

CREATE TABLE public.customers (
    id integer NOT NULL,
    email character varying(255) NOT NULL,
    password character varying(255) NOT NULL
);


ALTER TABLE public.customers OWNER TO tgddulyf;

--
-- TOC entry 222 (class 1259 OID 7101066)
-- Name: customers_id_seq; Type: SEQUENCE; Schema: public; Owner: tgddulyf
--

CREATE SEQUENCE public.customers_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.customers_id_seq OWNER TO tgddulyf;

--
-- TOC entry 4114 (class 0 OID 0)
-- Dependencies: 222
-- Name: customers_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: tgddulyf
--

ALTER SEQUENCE public.customers_id_seq OWNED BY public.customers.id;


--
-- TOC entry 225 (class 1259 OID 7101081)
-- Name: goods; Type: TABLE; Schema: public; Owner: tgddulyf
--

CREATE TABLE public.goods (
    availiable boolean NOT NULL,
    id integer NOT NULL,
    price double precision NOT NULL,
    name character varying(255) NOT NULL
);


ALTER TABLE public.goods OWNER TO tgddulyf;

--
-- TOC entry 224 (class 1259 OID 7101079)
-- Name: goods_id_seq; Type: SEQUENCE; Schema: public; Owner: tgddulyf
--

CREATE SEQUENCE public.goods_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.goods_id_seq OWNER TO tgddulyf;

--
-- TOC entry 4115 (class 0 OID 0)
-- Dependencies: 224
-- Name: goods_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: tgddulyf
--

ALTER SEQUENCE public.goods_id_seq OWNED BY public.goods.id;


--
-- TOC entry 226 (class 1259 OID 7101087)
-- Name: orderitems; Type: TABLE; Schema: public; Owner: tgddulyf
--

CREATE TABLE public.orderitems (
    itemid integer NOT NULL,
    orderid integer NOT NULL
);


ALTER TABLE public.orderitems OWNER TO tgddulyf;

--
-- TOC entry 228 (class 1259 OID 7101094)
-- Name: orders; Type: TABLE; Schema: public; Owner: tgddulyf
--

CREATE TABLE public.orders (
    completed boolean,
    id integer NOT NULL,
    paid boolean,
    user_id integer,
    creatingtime bigint
);


ALTER TABLE public.orders OWNER TO tgddulyf;

--
-- TOC entry 227 (class 1259 OID 7101092)
-- Name: orders_id_seq; Type: SEQUENCE; Schema: public; Owner: tgddulyf
--

CREATE SEQUENCE public.orders_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.orders_id_seq OWNER TO tgddulyf;

--
-- TOC entry 4116 (class 0 OID 0)
-- Dependencies: 227
-- Name: orders_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: tgddulyf
--

ALTER SEQUENCE public.orders_id_seq OWNED BY public.orders.id;


--
-- TOC entry 230 (class 1259 OID 7101102)
-- Name: roles; Type: TABLE; Schema: public; Owner: tgddulyf
--

CREATE TABLE public.roles (
    id integer NOT NULL,
    name character varying(255)
);


ALTER TABLE public.roles OWNER TO tgddulyf;

--
-- TOC entry 229 (class 1259 OID 7101100)
-- Name: roles_id_seq; Type: SEQUENCE; Schema: public; Owner: tgddulyf
--

CREATE SEQUENCE public.roles_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.roles_id_seq OWNER TO tgddulyf;

--
-- TOC entry 4117 (class 0 OID 0)
-- Dependencies: 229
-- Name: roles_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: tgddulyf
--

ALTER SEQUENCE public.roles_id_seq OWNED BY public.roles.id;


--
-- TOC entry 231 (class 1259 OID 7101108)
-- Name: user_roles; Type: TABLE; Schema: public; Owner: tgddulyf
--

CREATE TABLE public.user_roles (
    role_id integer NOT NULL,
    user_id integer NOT NULL
);


ALTER TABLE public.user_roles OWNER TO tgddulyf;

--
-- TOC entry 3934 (class 2604 OID 7101071)
-- Name: customers id; Type: DEFAULT; Schema: public; Owner: tgddulyf
--

ALTER TABLE ONLY public.customers ALTER COLUMN id SET DEFAULT nextval('public.customers_id_seq'::regclass);


--
-- TOC entry 3935 (class 2604 OID 7101084)
-- Name: goods id; Type: DEFAULT; Schema: public; Owner: tgddulyf
--

ALTER TABLE ONLY public.goods ALTER COLUMN id SET DEFAULT nextval('public.goods_id_seq'::regclass);


--
-- TOC entry 3936 (class 2604 OID 7101097)
-- Name: orders id; Type: DEFAULT; Schema: public; Owner: tgddulyf
--

ALTER TABLE ONLY public.orders ALTER COLUMN id SET DEFAULT nextval('public.orders_id_seq'::regclass);


--
-- TOC entry 3937 (class 2604 OID 7101105)
-- Name: roles id; Type: DEFAULT; Schema: public; Owner: tgddulyf
--

ALTER TABLE ONLY public.roles ALTER COLUMN id SET DEFAULT nextval('public.roles_id_seq'::regclass);


--
-- TOC entry 4078 (class 0 OID 7101068)
-- Dependencies: 223
-- Data for Name: customers; Type: TABLE DATA; Schema: public; Owner: tgddulyf
--

COPY public.customers (id, email, password) FROM stdin;
\.


--
-- TOC entry 4080 (class 0 OID 7101081)
-- Dependencies: 225
-- Data for Name: goods; Type: TABLE DATA; Schema: public; Owner: tgddulyf
--

COPY public.goods (availiable, id, price, name) FROM stdin;
t	1	20	table
t	2	10	Oleg
t	3	135	TV
\.


--
-- TOC entry 4081 (class 0 OID 7101087)
-- Dependencies: 226
-- Data for Name: orderitems; Type: TABLE DATA; Schema: public; Owner: tgddulyf
--

COPY public.orderitems (itemid, orderid) FROM stdin;
\.


--
-- TOC entry 4083 (class 0 OID 7101094)
-- Dependencies: 228
-- Data for Name: orders; Type: TABLE DATA; Schema: public; Owner: tgddulyf
--

COPY public.orders (completed, id, paid, user_id, creatingtime) FROM stdin;
\.


--
-- TOC entry 4085 (class 0 OID 7101102)
-- Dependencies: 230
-- Data for Name: roles; Type: TABLE DATA; Schema: public; Owner: tgddulyf
--

COPY public.roles (id, name) FROM stdin;
\.


--
-- TOC entry 4086 (class 0 OID 7101108)
-- Dependencies: 231
-- Data for Name: user_roles; Type: TABLE DATA; Schema: public; Owner: tgddulyf
--

COPY public.user_roles (role_id, user_id) FROM stdin;
\.


--
-- TOC entry 4118 (class 0 OID 0)
-- Dependencies: 222
-- Name: customers_id_seq; Type: SEQUENCE SET; Schema: public; Owner: tgddulyf
--

SELECT pg_catalog.setval('public.customers_id_seq', 1, false);


--
-- TOC entry 4119 (class 0 OID 0)
-- Dependencies: 224
-- Name: goods_id_seq; Type: SEQUENCE SET; Schema: public; Owner: tgddulyf
--

SELECT pg_catalog.setval('public.goods_id_seq', 3, true);


--
-- TOC entry 4120 (class 0 OID 0)
-- Dependencies: 227
-- Name: orders_id_seq; Type: SEQUENCE SET; Schema: public; Owner: tgddulyf
--

SELECT pg_catalog.setval('public.orders_id_seq', 1, false);


--
-- TOC entry 4121 (class 0 OID 0)
-- Dependencies: 229
-- Name: roles_id_seq; Type: SEQUENCE SET; Schema: public; Owner: tgddulyf
--

SELECT pg_catalog.setval('public.roles_id_seq', 1, false);


--
-- TOC entry 3939 (class 2606 OID 7101078)
-- Name: customers customers_email_key; Type: CONSTRAINT; Schema: public; Owner: tgddulyf
--

ALTER TABLE ONLY public.customers
    ADD CONSTRAINT customers_email_key UNIQUE (email);


--
-- TOC entry 3941 (class 2606 OID 7101076)
-- Name: customers customers_pkey; Type: CONSTRAINT; Schema: public; Owner: tgddulyf
--

ALTER TABLE ONLY public.customers
    ADD CONSTRAINT customers_pkey PRIMARY KEY (id);


--
-- TOC entry 3943 (class 2606 OID 7101086)
-- Name: goods goods_pkey; Type: CONSTRAINT; Schema: public; Owner: tgddulyf
--

ALTER TABLE ONLY public.goods
    ADD CONSTRAINT goods_pkey PRIMARY KEY (id);


--
-- TOC entry 3945 (class 2606 OID 7101091)
-- Name: orderitems orderitems_itemid_key; Type: CONSTRAINT; Schema: public; Owner: tgddulyf
--

ALTER TABLE ONLY public.orderitems
    ADD CONSTRAINT orderitems_itemid_key UNIQUE (itemid);


--
-- TOC entry 3947 (class 2606 OID 7101099)
-- Name: orders orders_pkey; Type: CONSTRAINT; Schema: public; Owner: tgddulyf
--

ALTER TABLE ONLY public.orders
    ADD CONSTRAINT orders_pkey PRIMARY KEY (id);


--
-- TOC entry 3949 (class 2606 OID 7101107)
-- Name: roles roles_pkey; Type: CONSTRAINT; Schema: public; Owner: tgddulyf
--

ALTER TABLE ONLY public.roles
    ADD CONSTRAINT roles_pkey PRIMARY KEY (id);


--
-- TOC entry 3952 (class 2606 OID 7101121)
-- Name: orders fkf31jqtsy70cb3p4nqysbv8s2v; Type: FK CONSTRAINT; Schema: public; Owner: tgddulyf
--

ALTER TABLE ONLY public.orders
    ADD CONSTRAINT fkf31jqtsy70cb3p4nqysbv8s2v FOREIGN KEY (user_id) REFERENCES public.customers(id);


--
-- TOC entry 3950 (class 2606 OID 7101116)
-- Name: orderitems fkf4k6u2v35ay6tfr5o8dbwfqoh; Type: FK CONSTRAINT; Schema: public; Owner: tgddulyf
--

ALTER TABLE ONLY public.orderitems
    ADD CONSTRAINT fkf4k6u2v35ay6tfr5o8dbwfqoh FOREIGN KEY (orderid) REFERENCES public.orders(id);


--
-- TOC entry 3953 (class 2606 OID 7101126)
-- Name: user_roles fkh8ciramu9cc9q3qcqiv4ue8a6; Type: FK CONSTRAINT; Schema: public; Owner: tgddulyf
--

ALTER TABLE ONLY public.user_roles
    ADD CONSTRAINT fkh8ciramu9cc9q3qcqiv4ue8a6 FOREIGN KEY (role_id) REFERENCES public.roles(id);


--
-- TOC entry 3951 (class 2606 OID 7101111)
-- Name: orderitems fkkkhysg4kxtaiygk34pasql2q2; Type: FK CONSTRAINT; Schema: public; Owner: tgddulyf
--

ALTER TABLE ONLY public.orderitems
    ADD CONSTRAINT fkkkhysg4kxtaiygk34pasql2q2 FOREIGN KEY (itemid) REFERENCES public.goods(id);


--
-- TOC entry 3954 (class 2606 OID 7101131)
-- Name: user_roles fkpggw9lcc95oraa87kugl1h5yf; Type: FK CONSTRAINT; Schema: public; Owner: tgddulyf
--

ALTER TABLE ONLY public.user_roles
    ADD CONSTRAINT fkpggw9lcc95oraa87kugl1h5yf FOREIGN KEY (user_id) REFERENCES public.customers(id);


--
-- TOC entry 4092 (class 0 OID 0)
-- Dependencies: 27
-- Name: SCHEMA public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE USAGE ON SCHEMA public FROM PUBLIC;
GRANT ALL ON SCHEMA public TO PUBLIC;


-- Completed on 2023-12-26 16:44:09

--
-- PostgreSQL database dump complete
--

