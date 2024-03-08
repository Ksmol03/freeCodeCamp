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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    distance_from_earth integer,
    age_in_millions_years integer,
    numeric_type numeric,
    description text,
    has_life boolean
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: idk; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.idk (
    idk_id integer NOT NULL,
    name character varying(30) NOT NULL,
    random numeric
);


ALTER TABLE public.idk OWNER TO freecodecamp;

--
-- Name: idk_idk_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.idk_idk_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.idk_idk_id_seq OWNER TO freecodecamp;

--
-- Name: idk_idk_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.idk_idk_id_seq OWNED BY public.idk.idk_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30) NOT NULL,
    distance_from_earth integer,
    age_in_millions_years integer,
    numeric_type numeric,
    description text,
    has_life boolean,
    planet_id integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30) NOT NULL,
    distance_from_earth integer,
    age_in_millions_years integer,
    numeric_type numeric,
    description text,
    has_life boolean,
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30) NOT NULL,
    distance_from_earth integer,
    age_in_millions_years integer,
    numeric_type numeric,
    description text,
    has_life boolean,
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_id_seq OWNER TO freecodecamp;

--
-- Name: star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_id_seq OWNED BY public.star.star_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_id_seq'::regclass);


--
-- Name: idk idk_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.idk ALTER COLUMN idk_id SET DEFAULT nextval('public.idk_idk_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'first galaxy', 157, 48, 1.56, 'first galaxy desc', true);
INSERT INTO public.galaxy VALUES (2, 'second galaxy', 789, 48548, 48.8, 'second galaxy desc', false);
INSERT INTO public.galaxy VALUES (3, 'third galaxy', 48454, 18548, 418.48, 'third galaxy desc', false);
INSERT INTO public.galaxy VALUES (4, 'fourth galaxy', 549, 4864, 486, 'fourth galaxy desc', false);
INSERT INTO public.galaxy VALUES (5, 'fifth galaxy', 48, 474, 4685484, 'fifth galaxy desc', false);
INSERT INTO public.galaxy VALUES (6, 'sixth galaxy', 4848, 484548, 848484, 'sixth galaxy desctiption', true);


--
-- Data for Name: idk; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.idk VALUES (1, 'one', 1.1848);
INSERT INTO public.idk VALUES (2, 'two', 4848.84848);
INSERT INTO public.idk VALUES (3, 'three', 3.4848);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Luna', 384400, 4500, 4.5, 'Earth''s natural satellite', false, 1);
INSERT INTO public.moon VALUES (2, 'Phobos', 9380, 0, 0.001, 'Mars''s larger moon', false, 4);
INSERT INTO public.moon VALUES (3, 'Europa', 671034, 4000, 0.5, 'Ice-covered moon of Jupiter', false, 5);
INSERT INTO public.moon VALUES (4, 'Titan', 1221870, 4500, 5.39, 'Largest moon of Saturn', false, 6);
INSERT INTO public.moon VALUES (5, 'Miranda', 129780, 4500, 0.001, 'Uranus''s small moon', false, 7);
INSERT INTO public.moon VALUES (6, 'Triton', 354759, 4500, 0.1, 'Neptune''s largest moon', false, 8);
INSERT INTO public.moon VALUES (7, 'Charon', 19591, 4400, 0.002, 'Largest moon of Pluto', false, 9);
INSERT INTO public.moon VALUES (8, 'Io', 421800, 4500, 0.3, 'Volcanically active moon of Jupiter', false, 5);
INSERT INTO public.moon VALUES (9, 'Ganymede', 1070400, 4500, 7.5, 'Largest moon of Jupiter', false, 5);
INSERT INTO public.moon VALUES (10, 'Callisto', 1883000, 4500, 4.5, 'Moon of Jupiter with a heavily cratered surface', false, 5);
INSERT INTO public.moon VALUES (11, 'Enceladus', 238037, 4500, 0.001, 'Moon of Saturn with geysers', false, 6);
INSERT INTO public.moon VALUES (12, 'Hyperion', 1481000, 4500, 0.01, 'Irregularly shaped moon of Saturn', false, 6);
INSERT INTO public.moon VALUES (13, 'Rhea', 527100, 4500, 1, 'Moon of Saturn with a bright surface', false, 6);
INSERT INTO public.moon VALUES (14, 'Dione', 377400, 4500, 1, 'Moon of Saturn with prominent ice cliffs', false, 6);
INSERT INTO public.moon VALUES (15, 'Iapetus', 3561000, 4500, 3.6, 'Moon of Saturn with a two-tone appearance', false, 6);
INSERT INTO public.moon VALUES (16, 'Mimas', 185520, 4500, 0.001, 'Small moon of Saturn with a large crater', false, 6);
INSERT INTO public.moon VALUES (17, 'Phoebe', 12947200, 4500, 0.001, 'Irregular moon of Saturn with a retrograde orbit', false, 6);
INSERT INTO public.moon VALUES (18, 'Nereid', 5513812, 4500, 0.001, 'Irregular moon of Neptune', false, 8);
INSERT INTO public.moon VALUES (19, 'Ariel', 191020, 4500, 0.1, 'Moon of Uranus with a relatively smooth surface', false, 7);
INSERT INTO public.moon VALUES (20, 'Umbriel', 266300, 4500, 0.1, 'Dark moon of Uranus', false, 7);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', 58, 4500, 4.88, 'Small rocky planet', false, 1);
INSERT INTO public.planet VALUES (2, 'Venus', 108, 4600, 12.1, 'Thick atmosphere, similar size to Earth', false, 2);
INSERT INTO public.planet VALUES (3, 'Earth', 150, 4600, 12.7, 'Home planet', true, 3);
INSERT INTO public.planet VALUES (4, 'Mars', 228, 4000, 6.42, 'Red planet, dusty surface', false, 4);
INSERT INTO public.planet VALUES (5, 'Jupiter', 779, 1000, 139.82, 'Gas giant with a strong magnetic field', false, 5);
INSERT INTO public.planet VALUES (6, 'Saturn', 1434, 1000, 116.46, 'Ringed planet', false, 6);
INSERT INTO public.planet VALUES (7, 'Uranus', 2873, 4500, 50.72, 'Ice giant with a unique rotational axis', false, 1);
INSERT INTO public.planet VALUES (8, 'Neptune', 4495, 4500, 49.24, 'Blue gas giant', false, 2);
INSERT INTO public.planet VALUES (9, 'Pluto', 5906, 4400, 0.01, 'Dwarf planet, formerly the ninth planet', false, 3);
INSERT INTO public.planet VALUES (10, 'Alpha Centauri Bb', 4, 1000, 0.05, 'Exoplanet in the Alpha Centauri system', true, 4);
INSERT INTO public.planet VALUES (11, 'Kepler-186f', 490, 1000, 0.5, 'Earth-sized exoplanet in the habitable zone', true, 5);
INSERT INTO public.planet VALUES (12, 'Proxima Centauri b', 4, 1000, 0.01, 'Exoplanet orbiting Proxima Centauri', true, 6);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'first star', NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO public.star VALUES (2, 'second star', NULL, NULL, NULL, NULL, NULL, 2);
INSERT INTO public.star VALUES (3, 'third star', NULL, NULL, NULL, NULL, NULL, 3);
INSERT INTO public.star VALUES (4, 'fourth star', NULL, NULL, NULL, NULL, NULL, 4);
INSERT INTO public.star VALUES (5, 'fifth star', NULL, NULL, NULL, NULL, NULL, 5);
INSERT INTO public.star VALUES (6, 'sixth star', NULL, NULL, NULL, NULL, NULL, 6);


--
-- Name: galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_id_seq', 6, true);


--
-- Name: idk_idk_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.idk_idk_id_seq', 3, true);


--
-- Name: moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_id_seq', 20, true);


--
-- Name: planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_id_seq', 12, true);


--
-- Name: star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_id_seq', 6, true);


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
-- Name: idk idk_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.idk
    ADD CONSTRAINT idk_name_key UNIQUE (name);


--
-- Name: idk idk_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.idk
    ADD CONSTRAINT idk_pkey PRIMARY KEY (idk_id);


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

