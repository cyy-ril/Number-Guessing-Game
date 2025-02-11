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

INSERT INTO public.games VALUES (1, 8, 3);
INSERT INTO public.games VALUES (2, 716, 4);
INSERT INTO public.games VALUES (3, 323, 4);
INSERT INTO public.games VALUES (4, 690, 5);
INSERT INTO public.games VALUES (5, 426, 5);
INSERT INTO public.games VALUES (6, 698, 4);
INSERT INTO public.games VALUES (7, 841, 4);
INSERT INTO public.games VALUES (8, 605, 4);
INSERT INTO public.games VALUES (9, 307, 6);
INSERT INTO public.games VALUES (10, 681, 6);
INSERT INTO public.games VALUES (11, 74, 7);
INSERT INTO public.games VALUES (12, 214, 7);
INSERT INTO public.games VALUES (13, 367, 6);
INSERT INTO public.games VALUES (14, 721, 6);
INSERT INTO public.games VALUES (15, 117, 6);
INSERT INTO public.games VALUES (16, 14, 8);
INSERT INTO public.games VALUES (17, 80, 9);
INSERT INTO public.games VALUES (18, 227, 9);
INSERT INTO public.games VALUES (19, 630, 10);
INSERT INTO public.games VALUES (20, 189, 10);
INSERT INTO public.games VALUES (21, 80, 9);
INSERT INTO public.games VALUES (22, 272, 9);
INSERT INTO public.games VALUES (23, 282, 9);
INSERT INTO public.games VALUES (24, 830, 11);
INSERT INTO public.games VALUES (25, 868, 11);
INSERT INTO public.games VALUES (26, 695, 12);
INSERT INTO public.games VALUES (27, 92, 12);
INSERT INTO public.games VALUES (28, 6, 11);
INSERT INTO public.games VALUES (29, 476, 11);
INSERT INTO public.games VALUES (30, 1001, 11);
INSERT INTO public.games VALUES (31, 665, 13);
INSERT INTO public.games VALUES (32, 193, 13);
INSERT INTO public.games VALUES (33, 806, 14);
INSERT INTO public.games VALUES (34, 331, 14);
INSERT INTO public.games VALUES (35, 72, 13);
INSERT INTO public.games VALUES (36, 518, 13);
INSERT INTO public.games VALUES (37, 285, 13);
INSERT INTO public.games VALUES (38, 639, 15);
INSERT INTO public.games VALUES (39, 858, 15);
INSERT INTO public.games VALUES (40, 443, 16);
INSERT INTO public.games VALUES (41, 165, 16);
INSERT INTO public.games VALUES (42, 82, 15);
INSERT INTO public.games VALUES (43, 582, 15);
INSERT INTO public.games VALUES (44, 555, 15);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (1, 'user_1739269696626');
INSERT INTO public.users VALUES (2, 'user_1739269696625');
INSERT INTO public.users VALUES (3, 'Cyril');
INSERT INTO public.users VALUES (4, 'user_1739272722849');
INSERT INTO public.users VALUES (5, 'user_1739272722848');
INSERT INTO public.users VALUES (6, 'user_1739272805659');
INSERT INTO public.users VALUES (7, 'user_1739272805658');
INSERT INTO public.users VALUES (8, 'Ricky');
INSERT INTO public.users VALUES (9, 'user_1739272950768');
INSERT INTO public.users VALUES (10, 'user_1739272950767');
INSERT INTO public.users VALUES (11, 'user_1739274408392');
INSERT INTO public.users VALUES (12, 'user_1739274408391');
INSERT INTO public.users VALUES (13, 'user_1739274510772');
INSERT INTO public.users VALUES (14, 'user_1739274510771');
INSERT INTO public.users VALUES (15, 'user_1739274556055');
INSERT INTO public.users VALUES (16, 'user_1739274556054');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 44, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 16, true);


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
