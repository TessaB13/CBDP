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
-- Name: alliance; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.alliance (
    alliance_id integer NOT NULL,
    name character varying(30) NOT NULL,
    alignment text
);


ALTER TABLE public.alliance OWNER TO freecodecamp;

--
-- Name: alliance_alliance_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.alliance_alliance_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.alliance_alliance_id_seq OWNER TO freecodecamp;

--
-- Name: alliance_alliance_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.alliance_alliance_id_seq OWNED BY public.alliance.alliance_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    number_stars integer,
    type text,
    travel_advice text
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
    name character varying(30) NOT NULL,
    radius_km numeric(10,2),
    inhabited boolean,
    planet_id integer NOT NULL,
    alliance_id integer NOT NULL
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
    name character varying(30) NOT NULL,
    number_moons integer,
    inhabited boolean,
    star_id integer NOT NULL,
    alliance_id integer NOT NULL
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
    name character varying(30) NOT NULL,
    number_planets integer,
    type text,
    inhabited boolean,
    galaxy_id integer NOT NULL
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
-- Name: alliance alliance_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.alliance ALTER COLUMN alliance_id SET DEFAULT nextval('public.alliance_alliance_id_seq'::regclass);


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
-- Data for Name: alliance; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.alliance VALUES (1, 'Truminini Axis', 'Chaotic Evil');
INSERT INTO public.alliance VALUES (2, 'Femanati Alliance', 'Ordered Good');
INSERT INTO public.alliance VALUES (3, 'Fenciplanche War Party', 'Chaotic Neutral');
INSERT INTO public.alliance VALUES (4, 'Unclaimed Teritory', 'Neutral');


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Andromeda', 16, 'SAsb', 'Level 3');
INSERT INTO public.galaxy VALUES (2, 'Milky Way', 400000, 'SBbc', 'Level 4');
INSERT INTO public.galaxy VALUES (3, 'Triangulum', 400000, 'SAscd', 'Level 3');
INSERT INTO public.galaxy VALUES (4, 'Dorado', 10000, 'IrrSBsm', 'Level 1');
INSERT INTO public.galaxy VALUES (5, 'Hydra', 17, 'SBsm', 'Level 1');
INSERT INTO public.galaxy VALUES (6, 'Cetus', 14, 'Ir', 'Level 2');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'DeathStar', 4043.94, true, 5, 1);
INSERT INTO public.moon VALUES (2, 'Galactic', 1401.49, true, 8, 1);
INSERT INTO public.moon VALUES (3, 'Empire', 3690.40, true, 13, 1);
INSERT INTO public.moon VALUES (4, 'ArmyOTR', 4726.81, true, 11, 1);
INSERT INTO public.moon VALUES (5, 'FirstOrder', 535.10, true, 12, 1);
INSERT INTO public.moon VALUES (6, 'Republic', 1201.86, true, 13, 2);
INSERT INTO public.moon VALUES (7, 'Resistance', 4281.36, true, 5, 2);
INSERT INTO public.moon VALUES (8, 'Awakens', 457.58, true, 9, 2);
INSERT INTO public.moon VALUES (9, 'Revenge', 41.01, true, 6, 2);
INSERT INTO public.moon VALUES (10, 'Emperor', 4083.45, true, 5, 2);
INSERT INTO public.moon VALUES (11, 'Palpatine', 3271.50, true, 9, 3);
INSERT INTO public.moon VALUES (12, 'Lie', 664.14, true, 9, 3);
INSERT INTO public.moon VALUES (13, 'Organa', 804.46, false, 7, 3);
INSERT INTO public.moon VALUES (14, 'Rey', 1309.15, false, 12, 3);
INSERT INTO public.moon VALUES (15, 'Kylo', 1569.20, false, 10, 3);
INSERT INTO public.moon VALUES (16, 'Ren', 2301.32, false, 8, 4);
INSERT INTO public.moon VALUES (17, 'Skywalker', 1863.22, false, 11, 4);
INSERT INTO public.moon VALUES (18, 'LastJedi', 2320.55, false, 13, 4);
INSERT INTO public.moon VALUES (19, 'Clones', 230.49, false, 9, 4);
INSERT INTO public.moon VALUES (20, 'Force', 1659.49, false, 11, 4);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', 0, false, 1, 4);
INSERT INTO public.planet VALUES (2, 'Venus', 0, true, 1, 2);
INSERT INTO public.planet VALUES (3, 'Earth', 1, true, 1, 3);
INSERT INTO public.planet VALUES (4, 'Mars', 2, true, 1, 1);
INSERT INTO public.planet VALUES (5, 'Jupiter', 80, false, 1, 2);
INSERT INTO public.planet VALUES (6, 'Saturn', 83, true, 1, 3);
INSERT INTO public.planet VALUES (7, 'Uranus', 27, true, 1, 1);
INSERT INTO public.planet VALUES (8, 'Neptune', 14, true, 1, 2);
INSERT INTO public.planet VALUES (9, 'Hoth', 20, true, 6, 2);
INSERT INTO public.planet VALUES (10, 'Tatooine', 2, true, 6, 1);
INSERT INTO public.planet VALUES (11, 'Naboo', 100, true, 6, 1);
INSERT INTO public.planet VALUES (12, 'Coruscant', 5, true, 6, 3);
INSERT INTO public.planet VALUES (13, 'Kamino', 3, true, 6, 1);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 8, 'G2', false, 2);
INSERT INTO public.star VALUES (2, 'Betelgeuse', 0, 'Red Supergiant', true, 2);
INSERT INTO public.star VALUES (3, 'Antares', 0, 'Red Supergiant', false, 2);
INSERT INTO public.star VALUES (4, 'Sigma Sagittarii', 0, 'B-type', false, 2);
INSERT INTO public.star VALUES (5, 'Mu Chephei', 0, 'Red Supergiant', true, 2);
INSERT INTO public.star VALUES (6, 'Alpha Andromeda', 6, 'Green Dwarf', true, 1);
INSERT INTO public.star VALUES (7, 'Mirach', 0, 'Red Giant', false, 1);


--
-- Name: alliance_alliance_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.alliance_alliance_id_seq', 4, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 1, false);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 13, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 7, true);


--
-- Name: alliance alliance_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.alliance
    ADD CONSTRAINT alliance_name_key UNIQUE (name);


--
-- Name: alliance alliance_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.alliance
    ADD CONSTRAINT alliance_pkey PRIMARY KEY (alliance_id);


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
-- Name: moon moon_alliance_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_alliance_id_fkey FOREIGN KEY (alliance_id) REFERENCES public.alliance(alliance_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_alliance_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_alliance_id_fkey FOREIGN KEY (alliance_id) REFERENCES public.alliance(alliance_id);


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
-- PostgreSQL database dump complete
--

