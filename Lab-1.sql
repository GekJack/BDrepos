--
-- PostgreSQL database dump
--

-- Dumped from database version 16.4
-- Dumped by pg_dump version 16.4

-- Started on 2024-09-19 15:46:15

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
-- TOC entry 221 (class 1259 OID 16445)
-- Name: bookings; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.bookings (
    booking_id integer NOT NULL,
    user_id integer NOT NULL,
    session_id integer NOT NULL,
    booking_date timestamp with time zone NOT NULL,
    status boolean NOT NULL
);


--
-- TOC entry 220 (class 1259 OID 16444)
-- Name: bookings_booking_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.bookings_booking_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4822 (class 0 OID 0)
-- Dependencies: 220
-- Name: bookings_booking_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.bookings_booking_id_seq OWNED BY public.bookings.booking_id;


--
-- TOC entry 215 (class 1259 OID 16401)
-- Name: client; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.client (
    user_id integer NOT NULL,
    first_name character varying(30) NOT NULL,
    last_name character varying(30) NOT NULL,
    email character varying(30) NOT NULL,
    phone_number character varying(10) NOT NULL,
    date_of_registration date NOT NULL
);


--
-- TOC entry 217 (class 1259 OID 16417)
-- Name: instructors; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.instructors (
    instructor_id integer NOT NULL,
    "èxperiance_years" integer NOT NULL,
    bio character varying(256) NOT NULL,
    rating integer NOT NULL
);


--
-- TOC entry 216 (class 1259 OID 16412)
-- Name: locations; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.locations (
    location_id integer NOT NULL,
    name character varying(30) NOT NULL,
    address character varying(64) NOT NULL,
    city character varying(25) NOT NULL,
    capacity integer NOT NULL
);


--
-- TOC entry 219 (class 1259 OID 16423)
-- Name: session; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.session (
    session_id integer NOT NULL,
    instructor_id integer NOT NULL,
    location_id integer NOT NULL,
    start_time timestamp with time zone NOT NULL,
    end_time timestamp with time zone NOT NULL,
    max_participants integer NOT NULL,
    price money NOT NULL
);


--
-- TOC entry 218 (class 1259 OID 16422)
-- Name: session_session_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.session_session_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 4823 (class 0 OID 0)
-- Dependencies: 218
-- Name: session_session_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.session_session_id_seq OWNED BY public.session.session_id;


--
-- TOC entry 4652 (class 2604 OID 16448)
-- Name: bookings booking_id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.bookings ALTER COLUMN booking_id SET DEFAULT nextval('public.bookings_booking_id_seq'::regclass);


--
-- TOC entry 4651 (class 2604 OID 16426)
-- Name: session session_id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.session ALTER COLUMN session_id SET DEFAULT nextval('public.session_session_id_seq'::regclass);


--
-- TOC entry 4816 (class 0 OID 16445)
-- Dependencies: 221
-- Data for Name: bookings; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.bookings (booking_id, user_id, session_id, booking_date, status) FROM stdin;
1	1	3	2024-06-10 23:00:00+03	t
2	2	1	2024-10-10 15:00:00+03	t
\.


--
-- TOC entry 4810 (class 0 OID 16401)
-- Dependencies: 215
-- Data for Name: client; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.client (user_id, first_name, last_name, email, phone_number, date_of_registration) FROM stdin;
1	Bogdan	Peretiatko	student@gmail.com	0996540113	2024-09-24
2	Kirill	Grovny	student1@gmail.com	0504502312	2023-06-10
\.


--
-- TOC entry 4812 (class 0 OID 16417)
-- Dependencies: 217
-- Data for Name: instructors; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.instructors (instructor_id, "èxperiance_years", bio, rating) FROM stdin;
1	12	Very good man	7
2	5	New man	8
\.


--
-- TOC entry 4811 (class 0 OID 16412)
-- Dependencies: 216
-- Data for Name: locations; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.locations (location_id, name, address, city, capacity) FROM stdin;
1	Sportzal\n\n	st. Dovnar 4	Kiev	10
2	Gym-2	st. Beresteyski 28	Kiev	15
\.


--
-- TOC entry 4814 (class 0 OID 16423)
-- Dependencies: 219
-- Data for Name: session; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.session (session_id, instructor_id, location_id, start_time, end_time, max_participants, price) FROM stdin;
1	1	1	2025-04-05 06:00:00+03	2025-04-05 08:00:00+03	15	10,00 ?
2	1	1	2025-04-05 15:00:00+03	2025-04-05 17:00:00+03	10	15,00 ?
3	2	2	2025-05-05 17:00:00+03	2025-05-05 21:00:00+03	15	12,00 ?
4	2	2	2025-04-05 06:00:00+03	2025-04-05 08:00:00+03	10	20,00 ?
\.


--
-- TOC entry 4824 (class 0 OID 0)
-- Dependencies: 220
-- Name: bookings_booking_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.bookings_booking_id_seq', 1, false);


--
-- TOC entry 4825 (class 0 OID 0)
-- Dependencies: 218
-- Name: session_session_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.session_session_id_seq', 2, true);


--
-- TOC entry 4662 (class 2606 OID 16450)
-- Name: bookings bookings_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.bookings
    ADD CONSTRAINT bookings_pkey PRIMARY KEY (booking_id);


--
-- TOC entry 4654 (class 2606 OID 16407)
-- Name: client client_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.client
    ADD CONSTRAINT client_pkey PRIMARY KEY (user_id);


--
-- TOC entry 4658 (class 2606 OID 16421)
-- Name: instructors instructors_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.instructors
    ADD CONSTRAINT instructors_pkey PRIMARY KEY (instructor_id);


--
-- TOC entry 4656 (class 2606 OID 16416)
-- Name: locations locations_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.locations
    ADD CONSTRAINT locations_pkey PRIMARY KEY (location_id);


--
-- TOC entry 4660 (class 2606 OID 16428)
-- Name: session session_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.session
    ADD CONSTRAINT session_pkey PRIMARY KEY (session_id);


--
-- TOC entry 4665 (class 2606 OID 16451)
-- Name: bookings fk1; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.bookings
    ADD CONSTRAINT fk1 FOREIGN KEY (user_id) REFERENCES public.client(user_id);


--
-- TOC entry 4663 (class 2606 OID 16461)
-- Name: session fk1; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.session
    ADD CONSTRAINT fk1 FOREIGN KEY (instructor_id) REFERENCES public.instructors(instructor_id);


--
-- TOC entry 4666 (class 2606 OID 16456)
-- Name: bookings fk2; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.bookings
    ADD CONSTRAINT fk2 FOREIGN KEY (session_id) REFERENCES public.session(session_id);


--
-- TOC entry 4664 (class 2606 OID 16466)
-- Name: session fk2; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.session
    ADD CONSTRAINT fk2 FOREIGN KEY (location_id) REFERENCES public.locations(location_id);


-- Completed on 2024-09-19 15:46:15

--
-- PostgreSQL database dump complete
--

