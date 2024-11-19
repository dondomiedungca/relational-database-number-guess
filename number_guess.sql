--
-- PostgreSQL database dump
-- log 1

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

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

DROP DATABASE number_guess;
--
-- Name: number_guess; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE number_guess WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE number_guess OWNER TO freecodecamp;

\connect number_guess

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
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    user_id integer NOT NULL,
    username character varying(22),
    games_played integer DEFAULT 0,
    best_game integer DEFAULT 0
);


ALTER TABLE public.users OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.users_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_user_id_seq OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users.user_id;


--
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (1, 'user_1712982121807', 0, 0);
INSERT INTO public.users VALUES (2, 'user_1712982121806', 0, 0);
INSERT INTO public.users VALUES (4, 'user_1712982220482', 0, 0);
INSERT INTO public.users VALUES (5, 'user_1712982220481', 0, 0);
INSERT INTO public.users VALUES (6, 'user_1712983095957', 0, 0);
INSERT INTO public.users VALUES (7, 'user_1712983095956', 0, 0);
INSERT INTO public.users VALUES (8, 'user_1712983492279', 0, 0);
INSERT INTO public.users VALUES (9, 'user_1712983492278', 0, 0);
INSERT INTO public.users VALUES (10, 'user_1712983523846', 0, 0);
INSERT INTO public.users VALUES (11, 'user_1712983523845', 0, 0);
INSERT INTO public.users VALUES (12, 'user_1712983793378', 0, 0);
INSERT INTO public.users VALUES (13, 'user_1712983793377', 0, 0);
INSERT INTO public.users VALUES (14, 'user_1712983828293', 0, 0);
INSERT INTO public.users VALUES (15, 'user_1712983828292', 0, 0);
INSERT INTO public.users VALUES (16, 'user_1712983861227', 0, 0);
INSERT INTO public.users VALUES (17, 'user_1712983861226', 0, 0);
INSERT INTO public.users VALUES (18, 'user_1712983922713', 0, 0);
INSERT INTO public.users VALUES (19, 'user_1712983922712', 0, 0);
INSERT INTO public.users VALUES (20, 'user_1712983933520', 0, 0);
INSERT INTO public.users VALUES (21, 'user_1712983933519', 0, 0);
INSERT INTO public.users VALUES (22, 'user_1712983987424', 0, 0);
INSERT INTO public.users VALUES (23, 'user_1712983987423', 0, 0);
INSERT INTO public.users VALUES (24, 'user_1712984038708', 0, 0);
INSERT INTO public.users VALUES (25, 'user_1712984038707', 0, 0);
INSERT INTO public.users VALUES (26, 'user_1712984123078', 0, 0);
INSERT INTO public.users VALUES (27, 'user_1712984123077', 0, 0);
INSERT INTO public.users VALUES (61, 'user_1712986980968', 5, 4);
INSERT INTO public.users VALUES (46, 'Nikka', 2, 1);
INSERT INTO public.users VALUES (29, 'user_1712984806316', 2, 1);
INSERT INTO public.users VALUES (28, 'user_1712984806317', 5, 4);
INSERT INTO public.users VALUES (48, 'user_1712985733408', 2, 1);
INSERT INTO public.users VALUES (31, 'user_1712984840005', 2, 1);
INSERT INTO public.users VALUES (64, 'user_1712987010461', 2, 1);
INSERT INTO public.users VALUES (30, 'user_1712984840006', 5, 4);
INSERT INTO public.users VALUES (47, 'user_1712985733409', 5, 4);
INSERT INTO public.users VALUES (77, 'user_1712987371075', 2, 1);
INSERT INTO public.users VALUES (33, 'user_1712984948127', 2, 1);
INSERT INTO public.users VALUES (63, 'user_1712987010462', 5, 4);
INSERT INTO public.users VALUES (32, 'user_1712984948128', 5, 4);
INSERT INTO public.users VALUES (50, 'user_1712986416810', 2, 1);
INSERT INTO public.users VALUES (49, 'user_1712986416811', 5, 4);
INSERT INTO public.users VALUES (35, 'user_1712985098923', 2, 1);
INSERT INTO public.users VALUES (34, 'user_1712985098924', 5, 1);
INSERT INTO public.users VALUES (76, 'user_1712987371076', 5, 4);
INSERT INTO public.users VALUES (52, 'user_1712986441969', 2, 1);
INSERT INTO public.users VALUES (66, 'user_1712987184151', 2, 1);
INSERT INTO public.users VALUES (37, 'user_1712985124061', 2, 1);
INSERT INTO public.users VALUES (51, 'user_1712986441970', 5, 4);
INSERT INTO public.users VALUES (36, 'user_1712985124062', 5, 4);
INSERT INTO public.users VALUES (65, 'user_1712987184152', 5, 4);
INSERT INTO public.users VALUES (39, 'user_1712985192415', 2, 1);
INSERT INTO public.users VALUES (67, 'Doondon', 1, 2);
INSERT INTO public.users VALUES (38, 'user_1712985192416', 5, 4);
INSERT INTO public.users VALUES (54, 'user_1712986541603', 2, 1);
INSERT INTO public.users VALUES (3, 'Dondon', 12, 1);
INSERT INTO public.users VALUES (41, 'user_1712985216382', 2, 1);
INSERT INTO public.users VALUES (53, 'user_1712986541604', 5, 4);
INSERT INTO public.users VALUES (40, 'user_1712985216383', 5, 4);
INSERT INTO public.users VALUES (43, 'user_1712985226158', 2, 1);
INSERT INTO public.users VALUES (42, 'user_1712985226159', 5, 4);
INSERT INTO public.users VALUES (56, 'user_1712986698845', 2, 1);
INSERT INTO public.users VALUES (69, 'user_1712987289717', 2, 1);
INSERT INTO public.users VALUES (79, 'user_1712987373048', 2, 1);
INSERT INTO public.users VALUES (45, 'user_1712985227735', 2, 1);
INSERT INTO public.users VALUES (55, 'user_1712986698846', 5, 4);
INSERT INTO public.users VALUES (44, 'user_1712985227736', 5, 4);
INSERT INTO public.users VALUES (68, 'user_1712987289718', 5, 4);
INSERT INTO public.users VALUES (58, 'user_1712986728274', 2, 1);
INSERT INTO public.users VALUES (78, 'user_1712987373049', 5, 4);
INSERT INTO public.users VALUES (57, 'user_1712986728275', 5, 4);
INSERT INTO public.users VALUES (71, 'user_1712987355660', 2, 1);
INSERT INTO public.users VALUES (60, 'user_1712986782308', 2, 1);
INSERT INTO public.users VALUES (70, 'user_1712987355661', 5, 4);
INSERT INTO public.users VALUES (59, 'user_1712986782309', 5, 4);
INSERT INTO public.users VALUES (81, 'user_1712987391988', 2, 1);
INSERT INTO public.users VALUES (62, 'user_1712986980967', 2, 1);
INSERT INTO public.users VALUES (73, 'user_1712987365340', 2, 1);
INSERT INTO public.users VALUES (80, 'user_1712987391989', 5, 4);
INSERT INTO public.users VALUES (72, 'user_1712987365341', 5, 4);
INSERT INTO public.users VALUES (75, 'user_1712987367537', 2, 1);
INSERT INTO public.users VALUES (83, 'user_1712987395006', 2, 1);
INSERT INTO public.users VALUES (74, 'user_1712987367538', 5, 4);
INSERT INTO public.users VALUES (82, 'user_1712987395007', 5, 4);
INSERT INTO public.users VALUES (85, 'user_1712987397324', 2, 1);
INSERT INTO public.users VALUES (84, 'user_1712987397325', 5, 4);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 85, true);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- Name: users users_username_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key UNIQUE (username);


--
-- PostgreSQL database dump complete
--

