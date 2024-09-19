--
-- PostgreSQL database dump
--

-- Dumped from database version 16.4
-- Dumped by pg_dump version 16.4

-- Started on 2024-09-19 15:38:18

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
-- TOC entry 4816 (class 0 OID 16445)
-- Dependencies: 221
-- Data for Name: bookings; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.bookings (booking_id, user_id, session_id, booking_date, status) FROM stdin;
1	1	3	2024-06-10 23:00:00+03	t
2	2	1	2024-10-10 15:00:00+03	t
\.


--
-- TOC entry 4810 (class 0 OID 16401)
-- Dependencies: 215
-- Data for Name: client; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.client (user_id, first_name, last_name, email, phone_number, date_of_registration) FROM stdin;
1	Bogdan	Peretiatko	student@gmail.com	0996540113	2024-09-24
2	Kirill	Grovny	student1@gmail.com	0504502312	2023-06-10
\.


--
-- TOC entry 4812 (class 0 OID 16417)
-- Dependencies: 217
-- Data for Name: instructors; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.instructors (instructor_id, "èxperiance_years", bio, rating) FROM stdin;
1	12	Very good man	7
2	5	New man	8
\.


--
-- TOC entry 4811 (class 0 OID 16412)
-- Dependencies: 216
-- Data for Name: locations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.locations (location_id, name, address, city, capacity) FROM stdin;
1	Sportzal\n\n	st. Dovnar 4	Kiev	10
2	Gym-2	st. Beresteyski 28	Kiev	15
\.


--
-- TOC entry 4814 (class 0 OID 16423)
-- Dependencies: 219
-- Data for Name: session; Type: TABLE DATA; Schema: public; Owner: postgres
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
-- Name: bookings_booking_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.bookings_booking_id_seq', 1, false);


--
-- TOC entry 4825 (class 0 OID 0)
-- Dependencies: 218
-- Name: session_session_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.session_session_id_seq', 2, true);


-- Completed on 2024-09-19 15:38:18

--
-- PostgreSQL database dump complete
--

