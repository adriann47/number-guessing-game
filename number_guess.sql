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

INSERT INTO public.games VALUES (1, 846, 1);
INSERT INTO public.games VALUES (2, 136, 1);
INSERT INTO public.games VALUES (3, 234, 3);
INSERT INTO public.games VALUES (4, 330, 3);
INSERT INTO public.games VALUES (5, 32, 1);
INSERT INTO public.games VALUES (6, 949, 1);
INSERT INTO public.games VALUES (7, 642, 1);
INSERT INTO public.games VALUES (8, 14, 8);
INSERT INTO public.games VALUES (9, 795, 9);
INSERT INTO public.games VALUES (10, 837, 9);
INSERT INTO public.games VALUES (11, 982, 11);
INSERT INTO public.games VALUES (12, 143, 11);
INSERT INTO public.games VALUES (13, 464, 9);
INSERT INTO public.games VALUES (14, 230, 9);
INSERT INTO public.games VALUES (15, 162, 9);
INSERT INTO public.games VALUES (16, 12, 8);
INSERT INTO public.games VALUES (17, 157, 26);
INSERT INTO public.games VALUES (18, 994, 26);
INSERT INTO public.games VALUES (19, 887, 28);
INSERT INTO public.games VALUES (20, 151, 28);
INSERT INTO public.games VALUES (21, 738, 26);
INSERT INTO public.games VALUES (22, 254, 26);
INSERT INTO public.games VALUES (23, 171, 26);
INSERT INTO public.games VALUES (24, 8, 8);
INSERT INTO public.games VALUES (25, 4, 33);
INSERT INTO public.games VALUES (26, 326, 34);
INSERT INTO public.games VALUES (27, 675, 34);
INSERT INTO public.games VALUES (28, 796, 36);
INSERT INTO public.games VALUES (29, 655, 36);
INSERT INTO public.games VALUES (30, 449, 34);
INSERT INTO public.games VALUES (31, 277, 34);
INSERT INTO public.games VALUES (32, 600, 34);
INSERT INTO public.games VALUES (33, 14, 33);
INSERT INTO public.games VALUES (34, 827, 42);
INSERT INTO public.games VALUES (35, 597, 43);
INSERT INTO public.games VALUES (36, 72, 43);
INSERT INTO public.games VALUES (37, 626, 42);
INSERT INTO public.games VALUES (38, 492, 42);
INSERT INTO public.games VALUES (39, 345, 42);
INSERT INTO public.games VALUES (40, 525, 48);
INSERT INTO public.games VALUES (41, 508, 48);
INSERT INTO public.games VALUES (42, 575, 50);
INSERT INTO public.games VALUES (43, 297, 50);
INSERT INTO public.games VALUES (44, 172, 48);
INSERT INTO public.games VALUES (45, 374, 48);
INSERT INTO public.games VALUES (46, 723, 48);
INSERT INTO public.games VALUES (47, 499, 55);
INSERT INTO public.games VALUES (48, 554, 55);
INSERT INTO public.games VALUES (49, 127, 56);
INSERT INTO public.games VALUES (50, 250, 56);
INSERT INTO public.games VALUES (51, 750, 55);
INSERT INTO public.games VALUES (52, 371, 55);
INSERT INTO public.games VALUES (53, 130, 55);
INSERT INTO public.games VALUES (54, 796, 57);
INSERT INTO public.games VALUES (55, 636, 57);
INSERT INTO public.games VALUES (56, 658, 58);
INSERT INTO public.games VALUES (57, 308, 58);
INSERT INTO public.games VALUES (58, 521, 57);
INSERT INTO public.games VALUES (59, 371, 57);
INSERT INTO public.games VALUES (60, 538, 57);
INSERT INTO public.games VALUES (61, 918, 59);
INSERT INTO public.games VALUES (62, 39, 59);
INSERT INTO public.games VALUES (63, 201, 60);
INSERT INTO public.games VALUES (64, 631, 60);
INSERT INTO public.games VALUES (65, 714, 59);
INSERT INTO public.games VALUES (66, 298, 59);
INSERT INTO public.games VALUES (67, 830, 59);
INSERT INTO public.games VALUES (68, 178, 61);
INSERT INTO public.games VALUES (69, 547, 61);
INSERT INTO public.games VALUES (70, 102, 62);
INSERT INTO public.games VALUES (71, 947, 62);
INSERT INTO public.games VALUES (72, 664, 61);
INSERT INTO public.games VALUES (73, 916, 61);
INSERT INTO public.games VALUES (74, 992, 61);
INSERT INTO public.games VALUES (75, 495, 63);
INSERT INTO public.games VALUES (76, 712, 63);
INSERT INTO public.games VALUES (77, 913, 64);
INSERT INTO public.games VALUES (78, 865, 64);
INSERT INTO public.games VALUES (79, 159, 63);
INSERT INTO public.games VALUES (80, 149, 63);
INSERT INTO public.games VALUES (81, 28, 63);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (1, 'user_1739014433365');
INSERT INTO public.users VALUES (3, 'user_1739014433364');
INSERT INTO public.users VALUES (8, 'a');
INSERT INTO public.users VALUES (9, 'user_1739014583358');
INSERT INTO public.users VALUES (11, 'user_1739014583357');
INSERT INTO public.users VALUES (19, 'user_1739015203799');
INSERT INTO public.users VALUES (21, 'user_1739015203798');
INSERT INTO public.users VALUES (26, 'user_1739015216625');
INSERT INTO public.users VALUES (28, 'user_1739015216624');
INSERT INTO public.users VALUES (33, 'b');
INSERT INTO public.users VALUES (34, 'user_1739015303737');
INSERT INTO public.users VALUES (36, 'user_1739015303736');
INSERT INTO public.users VALUES (42, 'user_1739015414059');
INSERT INTO public.users VALUES (43, 'user_1739015414058');
INSERT INTO public.users VALUES (48, 'user_1739015420238');
INSERT INTO public.users VALUES (50, 'user_1739015420237');
INSERT INTO public.users VALUES (55, 'user_1739015591791');
INSERT INTO public.users VALUES (56, 'user_1739015591790');
INSERT INTO public.users VALUES (57, 'user_1739015784568');
INSERT INTO public.users VALUES (58, 'user_1739015784567');
INSERT INTO public.users VALUES (59, 'user_1739015795276');
INSERT INTO public.users VALUES (60, 'user_1739015795275');
INSERT INTO public.users VALUES (61, 'user_1739015822859');
INSERT INTO public.users VALUES (62, 'user_1739015822858');
INSERT INTO public.users VALUES (63, 'user_1739015969754');
INSERT INTO public.users VALUES (64, 'user_1739015969753');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 81, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 64, true);


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

