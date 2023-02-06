--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

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

DROP DATABASE worldcup;
--
-- Name: worldcup; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE worldcup WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE worldcup OWNER TO freecodecamp;

\connect worldcup

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
    year integer NOT NULL,
    round character varying(30) NOT NULL,
    winner_id integer NOT NULL,
    opponent_id integer NOT NULL,
    winner_goals integer NOT NULL,
    opponent_goals integer NOT NULL
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
-- Name: teams; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.teams (
    team_id integer NOT NULL,
    name character varying(30) NOT NULL
);


ALTER TABLE public.teams OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.teams_team_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.teams_team_id_seq OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.teams_team_id_seq OWNED BY public.teams.team_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: teams team_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams ALTER COLUMN team_id SET DEFAULT nextval('public.teams_team_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (849, 2018, 'Final', 659, 660, 4, 2);
INSERT INTO public.games VALUES (850, 2018, 'Third Place', 661, 662, 2, 0);
INSERT INTO public.games VALUES (851, 2018, 'Semi-Final', 660, 662, 2, 1);
INSERT INTO public.games VALUES (852, 2018, 'Semi-Final', 659, 661, 1, 0);
INSERT INTO public.games VALUES (853, 2018, 'Quarter-Final', 660, 663, 3, 2);
INSERT INTO public.games VALUES (854, 2018, 'Quarter-Final', 662, 664, 2, 0);
INSERT INTO public.games VALUES (855, 2018, 'Quarter-Final', 661, 665, 2, 1);
INSERT INTO public.games VALUES (856, 2018, 'Quarter-Final', 659, 666, 2, 0);
INSERT INTO public.games VALUES (857, 2018, 'Eighth-Final', 662, 667, 2, 1);
INSERT INTO public.games VALUES (858, 2018, 'Eighth-Final', 664, 668, 1, 0);
INSERT INTO public.games VALUES (859, 2018, 'Eighth-Final', 661, 669, 3, 2);
INSERT INTO public.games VALUES (860, 2018, 'Eighth-Final', 665, 670, 2, 0);
INSERT INTO public.games VALUES (861, 2018, 'Eighth-Final', 660, 671, 2, 1);
INSERT INTO public.games VALUES (862, 2018, 'Eighth-Final', 663, 672, 2, 1);
INSERT INTO public.games VALUES (863, 2018, 'Eighth-Final', 666, 673, 2, 1);
INSERT INTO public.games VALUES (864, 2018, 'Eighth-Final', 659, 674, 4, 3);
INSERT INTO public.games VALUES (865, 2014, 'Final', 675, 674, 1, 0);
INSERT INTO public.games VALUES (866, 2014, 'Third Place', 676, 665, 3, 0);
INSERT INTO public.games VALUES (867, 2014, 'Semi-Final', 674, 676, 1, 0);
INSERT INTO public.games VALUES (868, 2014, 'Semi-Final', 675, 665, 7, 1);
INSERT INTO public.games VALUES (869, 2014, 'Quarter-Final', 676, 677, 1, 0);
INSERT INTO public.games VALUES (870, 2014, 'Quarter-Final', 674, 661, 1, 0);
INSERT INTO public.games VALUES (871, 2014, 'Quarter-Final', 665, 667, 2, 1);
INSERT INTO public.games VALUES (872, 2014, 'Quarter-Final', 675, 659, 1, 0);
INSERT INTO public.games VALUES (873, 2014, 'Eighth-Final', 665, 678, 2, 1);
INSERT INTO public.games VALUES (874, 2014, 'Eighth-Final', 667, 666, 2, 0);
INSERT INTO public.games VALUES (875, 2014, 'Eighth-Final', 659, 679, 2, 0);
INSERT INTO public.games VALUES (876, 2014, 'Eighth-Final', 675, 680, 2, 1);
INSERT INTO public.games VALUES (877, 2014, 'Eighth-Final', 676, 670, 2, 1);
INSERT INTO public.games VALUES (878, 2014, 'Eighth-Final', 677, 681, 2, 1);
INSERT INTO public.games VALUES (879, 2014, 'Eighth-Final', 674, 668, 1, 0);
INSERT INTO public.games VALUES (880, 2014, 'Eighth-Final', 661, 682, 2, 1);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (659, 'France');
INSERT INTO public.teams VALUES (660, 'Croatia');
INSERT INTO public.teams VALUES (661, 'Belgium');
INSERT INTO public.teams VALUES (662, 'England');
INSERT INTO public.teams VALUES (663, 'Russia');
INSERT INTO public.teams VALUES (664, 'Sweden');
INSERT INTO public.teams VALUES (665, 'Brazil');
INSERT INTO public.teams VALUES (666, 'Uruguay');
INSERT INTO public.teams VALUES (667, 'Colombia');
INSERT INTO public.teams VALUES (668, 'Switzerland');
INSERT INTO public.teams VALUES (669, 'Japan');
INSERT INTO public.teams VALUES (670, 'Mexico');
INSERT INTO public.teams VALUES (671, 'Denmark');
INSERT INTO public.teams VALUES (672, 'Spain');
INSERT INTO public.teams VALUES (673, 'Portugal');
INSERT INTO public.teams VALUES (674, 'Argentina');
INSERT INTO public.teams VALUES (675, 'Germany');
INSERT INTO public.teams VALUES (676, 'Netherlands');
INSERT INTO public.teams VALUES (677, 'Costa Rica');
INSERT INTO public.teams VALUES (678, 'Chile');
INSERT INTO public.teams VALUES (679, 'Nigeria');
INSERT INTO public.teams VALUES (680, 'Algeria');
INSERT INTO public.teams VALUES (681, 'Greece');
INSERT INTO public.teams VALUES (682, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 880, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 682, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: teams teams_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_name_key UNIQUE (name);


--
-- Name: teams teams_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_pkey PRIMARY KEY (team_id);


--
-- Name: games fk_opponent_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT fk_opponent_id FOREIGN KEY (opponent_id) REFERENCES public.teams(team_id);


--
-- Name: games fk_winner_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT fk_winner_id FOREIGN KEY (winner_id) REFERENCES public.teams(team_id);


--
-- PostgreSQL database dump complete
--

