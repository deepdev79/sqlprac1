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
-- Name: final; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.final (
    final_id integer NOT NULL,
    boss_id integer,
    name character varying(30) NOT NULL,
    animal text
);


ALTER TABLE public.final OWNER TO freecodecamp;

--
-- Name: final_final_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.final_final_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.final_final_id_seq OWNER TO freecodecamp;

--
-- Name: final_final_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.final_final_id_seq OWNED BY public.final.final_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    star_id integer NOT NULL,
    name character varying(30) NOT NULL,
    sarea integer,
    surface text,
    age numeric,
    life boolean,
    dog boolean,
    doglife integer
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
    planet_id integer NOT NULL,
    name character varying(30) NOT NULL,
    sarea integer,
    surface text,
    age numeric,
    life boolean,
    dog boolean,
    doglife integer
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
    star_id integer NOT NULL,
    moon_id integer NOT NULL,
    name character varying(30) NOT NULL,
    sarea integer,
    surface text,
    age numeric,
    life boolean,
    dog boolean,
    doglife integer
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
    galaxy_id integer NOT NULL,
    planet_id integer NOT NULL,
    name character varying(30) NOT NULL,
    sarea integer,
    surface text,
    age numeric,
    life boolean,
    dog boolean,
    doglife integer
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
-- Name: final final_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.final ALTER COLUMN final_id SET DEFAULT nextval('public.final_final_id_seq'::regclass);


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
-- Data for Name: final; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.final VALUES (1, 1, 'Drogo1', 'Fire breather');
INSERT INTO public.final VALUES (2, 2, 'Drogo2', 'Fire breather');
INSERT INTO public.final VALUES (3, 3, 'Drogo3', 'Fire breather');
INSERT INTO public.final VALUES (4, 4, 'Drogo4', 'Fire breather');
INSERT INTO public.final VALUES (5, 5, 'Drogo5', 'Fire breather');
INSERT INTO public.final VALUES (6, 6, 'Drogo6', 'Fire breather');


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 1, 'G1', 500, 'Hard', 7, true, true, 99);
INSERT INTO public.galaxy VALUES (2, 2, 'G2', 500, 'Hard', 7, true, true, 99);
INSERT INTO public.galaxy VALUES (3, 3, 'G3', 500, 'Hard', 7, true, true, 99);
INSERT INTO public.galaxy VALUES (4, 4, 'G4', 500, 'Hard', 7, true, true, 99);
INSERT INTO public.galaxy VALUES (5, 5, 'G5', 500, 'Hard', 7, true, true, 99);
INSERT INTO public.galaxy VALUES (6, 6, 'G6', 500, 'Hard', 7, true, true, 99);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 1, 'M1', 500, 'HARD', 7, true, true, 99);
INSERT INTO public.moon VALUES (2, 1, 'M2', 500, 'HARD', 7, true, true, 99);
INSERT INTO public.moon VALUES (3, 2, 'M3', 500, 'HARD', 7, true, true, 99);
INSERT INTO public.moon VALUES (4, 2, 'M4', 500, 'HARD', 7, true, true, 99);
INSERT INTO public.moon VALUES (5, 2, 'M5', 500, 'HARD', 7, true, true, 99);
INSERT INTO public.moon VALUES (6, 3, 'M6', 500, 'HARD', 7, true, true, 99);
INSERT INTO public.moon VALUES (7, 4, 'M7', 500, 'HARD', 7, true, true, 99);
INSERT INTO public.moon VALUES (8, 5, 'M8', 500, 'HARD', 7, true, true, 99);
INSERT INTO public.moon VALUES (9, 6, 'M9', 500, 'HARD', 7, true, true, 99);
INSERT INTO public.moon VALUES (10, 7, 'M10', 500, 'HARD', 7, true, true, 99);
INSERT INTO public.moon VALUES (11, 8, 'M11', 500, 'HARD', 7, true, true, 99);
INSERT INTO public.moon VALUES (12, 9, 'M12', 500, 'HARD', 7, true, true, 99);
INSERT INTO public.moon VALUES (13, 9, 'M13', 500, 'HARD', 7, true, true, 99);
INSERT INTO public.moon VALUES (14, 10, 'M14', 500, 'HARD', 7, true, true, 99);
INSERT INTO public.moon VALUES (15, 10, 'M15', 500, 'HARD', 7, true, true, 99);
INSERT INTO public.moon VALUES (16, 11, 'M16', 500, 'HARD', 7, true, true, 99);
INSERT INTO public.moon VALUES (17, 11, 'M17', 500, 'HARD', 7, true, true, 99);
INSERT INTO public.moon VALUES (18, 12, 'M18', 500, 'HARD', 7, true, true, 99);
INSERT INTO public.moon VALUES (19, 12, 'M19', 500, 'HARD', 7, true, true, 99);
INSERT INTO public.moon VALUES (20, 12, 'M20', 500, 'HARD', 7, true, true, 99);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 1, 1, 'P1', 500, 'HARD', 7, true, true, 99);
INSERT INTO public.planet VALUES (2, 1, 2, 'P2', 500, 'HARD', 7, true, true, 99);
INSERT INTO public.planet VALUES (3, 2, 3, 'P3', 500, 'HARD', 7, true, true, 99);
INSERT INTO public.planet VALUES (4, 2, 4, 'P4', 500, 'HARD', 7, true, true, 99);
INSERT INTO public.planet VALUES (5, 3, 5, 'P5', 500, 'HARD', 7, true, true, 99);
INSERT INTO public.planet VALUES (6, 4, 6, 'P6', 500, 'HARD', 7, true, true, 99);
INSERT INTO public.planet VALUES (7, 5, 7, 'P7', 500, 'HARD', 7, true, true, 99);
INSERT INTO public.planet VALUES (8, 6, 8, 'P8', 500, 'HARD', 7, true, true, 99);
INSERT INTO public.planet VALUES (9, 6, 9, 'P9', 500, 'HARD', 7, true, true, 99);
INSERT INTO public.planet VALUES (10, 6, 10, 'P10', 500, 'HARD', 7, true, true, 99);
INSERT INTO public.planet VALUES (11, 6, 11, 'P11', 500, 'HARD', 7, true, true, 99);
INSERT INTO public.planet VALUES (12, 6, 12, 'P12', 500, 'HARD', 7, true, true, 99);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 1, 1, 'S1', 500, 'HARD', 7, true, true, 99);
INSERT INTO public.star VALUES (2, 2, 2, 'S2', 500, 'HARD', 7, true, true, 99);
INSERT INTO public.star VALUES (3, 3, 3, 'S3', 500, 'HARD', 7, true, true, 99);
INSERT INTO public.star VALUES (4, 4, 4, 'S4', 500, 'HARD', 7, true, true, 99);
INSERT INTO public.star VALUES (5, 5, 5, 'S5', 500, 'HARD', 7, true, true, 99);
INSERT INTO public.star VALUES (6, 6, 6, 'S6', 500, 'HARD', 7, true, true, 99);


--
-- Name: final_final_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.final_final_id_seq', 1, false);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 1, false);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 1, false);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 1, false);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 1, false);


--
-- Name: final final_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.final
    ADD CONSTRAINT final_name_key UNIQUE (name);


--
-- Name: final final_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.final
    ADD CONSTRAINT final_pkey PRIMARY KEY (final_id);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_moon_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_moon_id_fkey FOREIGN KEY (moon_id) REFERENCES public.moon(moon_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: star star_galaxy_id_fkey1; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey1 FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

