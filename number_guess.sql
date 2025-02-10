--
-- PostgreSQL database dump
--

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
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    game_id integer NOT NULL,
    number_guesses integer NOT NULL,
    user_id integer
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_game_id_seq OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_game_id_seq OWNED BY public.games.game_id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    user_id integer NOT NULL,
    username character varying(20) NOT NULL
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
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (1, 673, 13);
INSERT INTO public.games VALUES (2, 659, 13);
INSERT INTO public.games VALUES (3, 293, 14);
INSERT INTO public.games VALUES (4, 748, 14);
INSERT INTO public.games VALUES (5, 496, 13);
INSERT INTO public.games VALUES (6, 708, 13);
INSERT INTO public.games VALUES (7, 412, 13);
INSERT INTO public.games VALUES (8, 29, 15);
INSERT INTO public.games VALUES (9, 115, 16);
INSERT INTO public.games VALUES (10, 300, 16);
INSERT INTO public.games VALUES (11, 86, 17);
INSERT INTO public.games VALUES (12, 354, 17);
INSERT INTO public.games VALUES (13, 611, 16);
INSERT INTO public.games VALUES (14, 635, 16);
INSERT INTO public.games VALUES (15, 222, 16);
INSERT INTO public.games VALUES (16, 216, 18);
INSERT INTO public.games VALUES (17, 258, 18);
INSERT INTO public.games VALUES (18, 227, 19);
INSERT INTO public.games VALUES (19, 111, 19);
INSERT INTO public.games VALUES (20, 444, 18);
INSERT INTO public.games VALUES (21, 51, 18);
INSERT INTO public.games VALUES (22, 60, 18);
INSERT INTO public.games VALUES (23, 440, 20);
INSERT INTO public.games VALUES (24, 295, 20);
INSERT INTO public.games VALUES (25, 880, 21);
INSERT INTO public.games VALUES (26, 90, 21);
INSERT INTO public.games VALUES (27, 506, 20);
INSERT INTO public.games VALUES (28, 49, 20);
INSERT INTO public.games VALUES (29, 14, 20);
INSERT INTO public.games VALUES (30, 970, 22);
INSERT INTO public.games VALUES (31, 36, 22);
INSERT INTO public.games VALUES (32, 820, 23);
INSERT INTO public.games VALUES (33, 58, 23);
INSERT INTO public.games VALUES (34, 213, 22);
INSERT INTO public.games VALUES (35, 414, 22);
INSERT INTO public.games VALUES (36, 504, 22);
INSERT INTO public.games VALUES (37, 977, 24);
INSERT INTO public.games VALUES (38, 599, 24);
INSERT INTO public.games VALUES (39, 164, 25);
INSERT INTO public.games VALUES (40, 58, 25);
INSERT INTO public.games VALUES (41, 703, 24);
INSERT INTO public.games VALUES (42, 574, 24);
INSERT INTO public.games VALUES (43, 363, 24);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (1, 'user_1739173223497');
INSERT INTO public.users VALUES (2, 'user_1739173223496');
INSERT INTO public.users VALUES (3, 'Kumaarr');
INSERT INTO public.users VALUES (4, 'user_1739173700435');
INSERT INTO public.users VALUES (5, 'user_1739173700434');
INSERT INTO public.users VALUES (6, 'Karan');
INSERT INTO public.users VALUES (7, 'Austin');
INSERT INTO public.users VALUES (8, 'user_1739174888253');
INSERT INTO public.users VALUES (9, 'user_1739174888252');
INSERT INTO public.users VALUES (10, 'Yuqi');
INSERT INTO public.users VALUES (11, 'user_1739175277881');
INSERT INTO public.users VALUES (12, 'user_1739175277880');
INSERT INTO public.users VALUES (13, 'user_1739176132054');
INSERT INTO public.users VALUES (14, 'user_1739176132053');
INSERT INTO public.users VALUES (15, 'Sara');
INSERT INTO public.users VALUES (16, 'user_1739176318258');
INSERT INTO public.users VALUES (17, 'user_1739176318257');
INSERT INTO public.users VALUES (18, 'user_1739176616717');
INSERT INTO public.users VALUES (19, 'user_1739176616716');
INSERT INTO public.users VALUES (20, 'user_1739176668708');
INSERT INTO public.users VALUES (21, 'user_1739176668707');
INSERT INTO public.users VALUES (22, 'user_1739176692532');
INSERT INTO public.users VALUES (23, 'user_1739176692531');
INSERT INTO public.users VALUES (24, 'user_1739176726804');
INSERT INTO public.users VALUES (25, 'user_1739176726803');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 43, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 25, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


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
-- Name: games games_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- PostgreSQL database dump complete
--
