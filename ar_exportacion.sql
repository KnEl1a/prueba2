--
-- PostgreSQL database dump
--

-- Dumped from database version 14.10 (Ubuntu 14.10-0ubuntu0.22.04.1)
-- Dumped by pg_dump version 14.10 (Ubuntu 14.10-0ubuntu0.22.04.1)

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
-- Name: tablita; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tablita (
    id integer NOT NULL,
    nombre character varying(100),
    edad integer
);


ALTER TABLE public.tablita OWNER TO postgres;

--
-- Name: tablita_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.tablita_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tablita_id_seq OWNER TO postgres;

--
-- Name: tablita_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tablita_id_seq OWNED BY public.tablita.id;


--
-- Name: tablita id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tablita ALTER COLUMN id SET DEFAULT nextval('public.tablita_id_seq'::regclass);


--
-- Data for Name: tablita; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.tablita (id, nombre, edad) FROM stdin;
1	María	25
2	Pedro	40
\.


--
-- Name: tablita_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.tablita_id_seq', 2, true);


--
-- Name: tablita tablita_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tablita
    ADD CONSTRAINT tablita_pkey PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--

