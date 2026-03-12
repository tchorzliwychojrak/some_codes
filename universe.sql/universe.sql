--
-- PostgreSQL database dump
--

-- Dumped from database version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)
-- Dumped by pg_dump version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)

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
-- Name: freecodecamp; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.freecodecamp (
    freecodecamp_id integer NOT NULL,
    thanks character varying(10),
    freecodecamp integer NOT NULL,
    name character varying(10)
);


ALTER TABLE public.freecodecamp OWNER TO freecodecamp;

--
-- Name: fifth_table_index_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.fifth_table_index_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.fifth_table_index_id_seq OWNER TO freecodecamp;

--
-- Name: fifth_table_index_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.fifth_table_index_id_seq OWNED BY public.freecodecamp.freecodecamp_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(40) NOT NULL,
    date_of_discovery text,
    distance_in_mln_ly numeric(6,4),
    exists_live character varying(13) DEFAULT 'unknown'::character varying NOT NULL
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
    name character varying(50) NOT NULL,
    system_age_in_gyr numeric(5,3),
    planet_id integer NOT NULL,
    mass_in_earth_mass_x1e12 bigint
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
    moons integer,
    planetary_rings boolean,
    star_id integer NOT NULL
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
    name character varying(20) NOT NULL,
    gravitational_acceleration integer,
    degenerated boolean,
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
-- Name: freecodecamp freecodecamp_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.freecodecamp ALTER COLUMN freecodecamp_id SET DEFAULT nextval('public.fifth_table_index_id_seq'::regclass);


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
-- Data for Name: freecodecamp; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.freecodecamp VALUES (1, 'it was', 10, NULL);
INSERT INTO public.freecodecamp VALUES (2, '/', 10, NULL);
INSERT INTO public.freecodecamp VALUES (3, 'course', 0, NULL);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Andromeda Galaxy', '964 by Abd Al-Rahman Al Sufi', 2.5200, 'still no data');
INSERT INTO public.galaxy VALUES (2, 'The Triangulum Galaxy', 'before 1654 by Giovanni Hodierna', 2.9000, 'still no data');
INSERT INTO public.galaxy VALUES (3, 'The Milky Way', 'Know in Ancient times', 0.0260, 'YES');
INSERT INTO public.galaxy VALUES (4, 'Maffei I', '1958 by Paolo Maffei', 9.3000, 'still no data');
INSERT INTO public.galaxy VALUES (5, 'Messier 94', '1781 by Pierre Méchain', 16.0000, 'still no data');
INSERT INTO public.galaxy VALUES (6, 'NGC 1316', '1826 by James Dunlop', 68.0000, 'still no data');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (3, '“exo-Io” (hypothesized volcanic moon)', 11.900, 4, NULL);
INSERT INTO public.moon VALUES (4, 'candidate moon source (hypothesis from gas cloud)', 8.500, 5, NULL);
INSERT INTO public.moon VALUES (5, 'HD 206893 B I(candidate)', 0.015, 6, 127000000000000);
INSERT INTO public.moon VALUES (9, 'Deimos', 4.500, 10, 247000000);
INSERT INTO public.moon VALUES (7, 'DH Tauri Bb(candidate)', 0.003, 8, 317000000000000);
INSERT INTO public.moon VALUES (6, 'candidate moon (predicted from obliquity)', 0.003, 7, 150000000000000);
INSERT INTO public.moon VALUES (2, 'Kepler-1708b I(candidate)', 3.160, 3, 37000000000000);
INSERT INTO public.moon VALUES (1, 'Kepler-1625(candidate)', 8.700, 1, 20000000000000);
INSERT INTO public.moon VALUES (8, 'The Moon - Silver Globe', 4.510, 9, 12300000000);
INSERT INTO public.moon VALUES (10, 'Phobos', 4.500, 10, 1800);
INSERT INTO public.moon VALUES (13, 'Ganymede', 4.500, 11, 24800000000);
INSERT INTO public.moon VALUES (14, 'Titan', 4.500, 12, 22500000000);
INSERT INTO public.moon VALUES (11, 'Io', 4.500, 11, 14950000000);
INSERT INTO public.moon VALUES (12, 'Europe', 4.500, 11, 8040000000);
INSERT INTO public.moon VALUES (15, 'Enceladus', 4.500, 12, 18100000);
INSERT INTO public.moon VALUES (16, 'Rea', 4.500, 12, 386200000);
INSERT INTO public.moon VALUES (17, 'Titania', 4.500, 13, 15000000);
INSERT INTO public.moon VALUES (18, 'Oberon', 4.500, 13, 504000000);
INSERT INTO public.moon VALUES (19, 'Miranda', 4.500, 13, 11100000);
INSERT INTO public.moon VALUES (20, 'Triton', 4.500, 14, 3580000000);
INSERT INTO public.moon VALUES (21, 'Nereid', 4.500, 14, 5190000);
INSERT INTO public.moon VALUES (22, 'Proteus', 4.500, 14, 7370000);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Kepler-1625b', NULL, false, 7);
INSERT INTO public.planet VALUES (9, 'Earth', 1, false, 1);
INSERT INTO public.planet VALUES (10, 'Mars', 2, false, 1);
INSERT INTO public.planet VALUES (11, 'Jupiter', 97, false, 1);
INSERT INTO public.planet VALUES (12, 'Saturn', 274, true, 1);
INSERT INTO public.planet VALUES (13, 'Uranus', 29, false, 1);
INSERT INTO public.planet VALUES (14, 'Neptune', 16, false, 1);
INSERT INTO public.planet VALUES (8, 'DH Tauri b', NULL, false, 13);
INSERT INTO public.planet VALUES (6, 'HD 206893b', NULL, false, 11);
INSERT INTO public.planet VALUES (5, 'WASP-39b', NULL, false, 10);
INSERT INTO public.planet VALUES (4, 'WASP-49b', NULL, false, 9);
INSERT INTO public.planet VALUES (3, 'Kepler-1708b', NULL, false, 8);
INSERT INTO public.planet VALUES (7, 'Beta Pictoris b', NULL, false, 12);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'The Sun', 274, false, 3);
INSERT INTO public.star VALUES (2, 'Syriusz A', 214, true, 3);
INSERT INTO public.star VALUES (3, 'M31-V1 - BlackHOLE', 2, true, 1);
INSERT INTO public.star VALUES (4, 'α Andromedae', 135, false, 1);
INSERT INTO public.star VALUES (5, 'Var A', 274, false, 2);
INSERT INTO public.star VALUES (6, 'B416 - star system', 10, false, 2);
INSERT INTO public.star VALUES (7, 'Kepler-1625', 123, false, 3);
INSERT INTO public.star VALUES (13, 'DH Tauri', 71, false, 3);
INSERT INTO public.star VALUES (12, 'Beta Pictoris', 151, false, 3);
INSERT INTO public.star VALUES (11, 'HD 206893', 186, false, 3);
INSERT INTO public.star VALUES (10, 'WASP-39', 284, false, 3);
INSERT INTO public.star VALUES (9, 'WASP-49', 255, false, 3);
INSERT INTO public.star VALUES (8, 'Kepler-1708', 234, false, 3);


--
-- Name: fifth_table_index_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.fifth_table_index_id_seq', 3, true);


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

SELECT pg_catalog.setval('public.planet_planet_id_seq', 14, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 13, true);


--
-- Name: freecodecamp fifth_table_index_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.freecodecamp
    ADD CONSTRAINT fifth_table_index_id_key UNIQUE (freecodecamp_id);


--
-- Name: freecodecamp freecodecamp_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.freecodecamp
    ADD CONSTRAINT freecodecamp_pkey PRIMARY KEY (freecodecamp_id);


--
-- Name: galaxy galaxy_galaxy_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_galaxy_id_key UNIQUE (galaxy_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_moon_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_moon_id_key UNIQUE (moon_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: planet planet_planet_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_planet_id_key UNIQUE (planet_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star star_star_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_star_id_key UNIQUE (star_id);


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

