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

DROP DATABASE universe;
--
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

\connect universe

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
-- Name: constelations; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.constelations (
    constelations_id integer NOT NULL,
    constelations_name character varying(30) NOT NULL,
    filler integer,
    name character varying(30)
);


ALTER TABLE public.constelations OWNER TO freecodecamp;

--
-- Name: constelations_constelation_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.constelations_constelation_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.constelations_constelation_id_seq OWNER TO freecodecamp;

--
-- Name: constelations_constelation_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.constelations_constelation_id_seq OWNED BY public.constelations.constelations_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    galaxy_name character varying(30) NOT NULL,
    filler integer,
    filler2 integer,
    filler3 integer,
    name character varying(30)
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    moon_name character varying(30) NOT NULL,
    size_in_million_km integer,
    planet_name character varying(30),
    filler integer,
    name character varying(30)
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    planet_name character varying(30) NOT NULL,
    description text,
    size_in_million_km integer,
    has_life boolean,
    star_name character varying(30),
    name character varying(30)
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    star_name character varying(30) NOT NULL,
    distance_from_earth_in_million_km numeric(5,2),
    is_alive boolean,
    galaxy_name character varying(30),
    name character varying(30)
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: constelations constelations_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.constelations ALTER COLUMN constelations_id SET DEFAULT nextval('public.constelations_constelation_id_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: constelations; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.constelations VALUES (1, 'Ky', NULL, NULL);
INSERT INTO public.constelations VALUES (2, 'Ana', NULL, NULL);
INSERT INTO public.constelations VALUES (3, 'Noemie', NULL, NULL);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Batata', NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (2, 'Tueio', NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (3, 'Xurumelas', NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (4, 'Xabrelandia', NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (5, 'Juremaland', NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (6, 'Cartago', NULL, NULL, NULL, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (3, 'Tata', 435, 'Regulus', NULL, NULL);
INSERT INTO public.moon VALUES (4, 'Let', 154, 'Turumingus', NULL, NULL);
INSERT INTO public.moon VALUES (5, 'Ju', 214, 'Ablubleblé', NULL, NULL);
INSERT INTO public.moon VALUES (6, '1', NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (7, '2', NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (8, '3', NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (9, '4', NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (10, '5', NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (11, '6', NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (12, '7', NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (13, '8', NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (14, '9', NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (15, '10', NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (16, '11', NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (17, '12', NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (18, '13', NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (19, '14', NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (20, '15', NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (21, '16', NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (22, '17', NULL, NULL, NULL, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Ablubleblé', 'dig', 512, true, 'Laverna', NULL);
INSERT INTO public.planet VALUES (2, 'Turumingus', 'dag', 435, true, 'Xambrila', NULL);
INSERT INTO public.planet VALUES (3, 'Regulus', 'dug', 315, false, 'Zelona', NULL);
INSERT INTO public.planet VALUES (4, 'a', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (5, 'b', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (6, 'c', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (7, 'd', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (8, 'e', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (9, 'f', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (10, 'g', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (11, 'h', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (12, 'i', NULL, NULL, NULL, NULL, NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Zelona', 123.00, true, 'Batata', NULL);
INSERT INTO public.star VALUES (2, 'Xambrila', 342.00, false, 'Tueio', NULL);
INSERT INTO public.star VALUES (3, 'Laverna', 425.00, true, 'Xurumelas', NULL);
INSERT INTO public.star VALUES (34, '1', NULL, NULL, NULL, NULL);
INSERT INTO public.star VALUES (35, '2', NULL, NULL, NULL, NULL);
INSERT INTO public.star VALUES (36, '3', NULL, NULL, NULL, NULL);


--
-- Name: constelations_constelation_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.constelations_constelation_id_seq', 3, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 22, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 36, true);


--
-- Name: constelations constelations_filler_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.constelations
    ADD CONSTRAINT constelations_filler_key UNIQUE (filler);


--
-- Name: constelations constelations_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.constelations
    ADD CONSTRAINT constelations_pkey PRIMARY KEY (constelations_id);


--
-- Name: constelations constelations_unq; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.constelations
    ADD CONSTRAINT constelations_unq UNIQUE (constelations_id);


--
-- Name: galaxy galaxy_id_unq; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_id_unq UNIQUE (galaxy_id);


--
-- Name: galaxy galaxy_name_unq; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_unq UNIQUE (galaxy_name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: moon moon_unq; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_unq UNIQUE (moon_id);


--
-- Name: planet planet_name_unq; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_unq UNIQUE (planet_name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: planet planet_unq; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_unq UNIQUE (planet_id);


--
-- Name: star star_name_unq; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_unq UNIQUE (star_name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star star_unq; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_unq UNIQUE (star_id);


--
-- Name: moon moon_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_fkey FOREIGN KEY (planet_name) REFERENCES public.planet(planet_name);


--
-- Name: planet planet_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_fkey FOREIGN KEY (star_name) REFERENCES public.star(star_name);


--
-- Name: star star_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_fkey FOREIGN KEY (galaxy_name) REFERENCES public.galaxy(galaxy_name);


--
-- PostgreSQL database dump complete
--

