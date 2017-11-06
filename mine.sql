--
-- PostgreSQL database dump
--

-- Dumped from database version 9.6.2
-- Dumped by pg_dump version 9.6.2

-- Started on 2017-11-06 17:41:40

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- TOC entry 2 (class 3079 OID 12387)
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- TOC entry 2151 (class 0 OID 0)
-- Dependencies: 2
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


--
-- TOC entry 1 (class 3079 OID 16384)
-- Name: adminpack; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS adminpack WITH SCHEMA pg_catalog;


--
-- TOC entry 2152 (class 0 OID 0)
-- Dependencies: 1
-- Name: EXTENSION adminpack; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION adminpack IS 'administrative functions for PostgreSQL';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 189 (class 1259 OID 16403)
-- Name: club; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE club (
    club_name text NOT NULL,
    birth_date character varying NOT NULL,
    country_of_origin text NOT NULL,
    id_club integer NOT NULL
);


ALTER TABLE club OWNER TO postgres;

--
-- TOC entry 186 (class 1259 OID 16394)
-- Name: main; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE main (
    name text NOT NULL,
    primary_position text NOT NULL,
    secondary_position text,
    club text NOT NULL,
    birth_date integer NOT NULL,
    height character varying NOT NULL
);


ALTER TABLE main OWNER TO postgres;

--
-- TOC entry 187 (class 1259 OID 16397)
-- Name: primary_position; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE primary_position (
    goalkeeper text NOT NULL,
    defender text NOT NULL,
    midfielder text NOT NULL,
    forward text NOT NULL,
    id_pos1 integer NOT NULL
);


ALTER TABLE primary_position OWNER TO postgres;

--
-- TOC entry 188 (class 1259 OID 16400)
-- Name: secondary_position; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE secondary_position (
    goalkeeper text,
    defender text,
    midfielder text,
    forward text,
    id_pos2 integer NOT NULL
);


ALTER TABLE secondary_position OWNER TO postgres;

--
-- TOC entry 2144 (class 0 OID 16403)
-- Dependencies: 189
-- Data for Name: club; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY club (club_name, birth_date, country_of_origin, id_club) FROM stdin;
Arsenal	1	Britain	1
Arsenal	1899	Britain	2
Real M	1911	Spain	3
\.


--
-- TOC entry 2141 (class 0 OID 16394)
-- Dependencies: 186
-- Data for Name: main; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY main (name, primary_position, secondary_position, club, birth_date, height) FROM stdin;
Paul George	def	mid	arsenal	1996	187
Joe Johnson	 def	mid	chelsea	1978	 178
\.


--
-- TOC entry 2142 (class 0 OID 16397)
-- Dependencies: 187
-- Data for Name: primary_position; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY primary_position (goalkeeper, defender, midfielder, forward, id_pos1) FROM stdin;
\.


--
-- TOC entry 2143 (class 0 OID 16400)
-- Dependencies: 188
-- Data for Name: secondary_position; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY secondary_position (goalkeeper, defender, midfielder, forward, id_pos2) FROM stdin;
\.


--
-- TOC entry 2023 (class 2606 OID 16440)
-- Name: club club_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY club
    ADD CONSTRAINT club_pkey PRIMARY KEY (id_club);


--
-- TOC entry 2017 (class 2606 OID 16422)
-- Name: main main_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY main
    ADD CONSTRAINT main_pkey PRIMARY KEY (name);


--
-- TOC entry 2019 (class 2606 OID 16436)
-- Name: primary_position primary_position_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY primary_position
    ADD CONSTRAINT primary_position_pkey PRIMARY KEY (id_pos1);


--
-- TOC entry 2021 (class 2606 OID 16438)
-- Name: secondary_position secondary_position_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY secondary_position
    ADD CONSTRAINT secondary_position_pkey PRIMARY KEY (id_pos2);


-- Completed on 2017-11-06 17:41:40

--
-- PostgreSQL database dump complete
--

