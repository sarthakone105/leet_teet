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
    name character varying(255) NOT NULL,
    distance integer NOT NULL,
    travel boolean DEFAULT false NOT NULL,
    description text NOT NULL
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
    name character varying(255) NOT NULL,
    class character varying(255) NOT NULL,
    distance numeric NOT NULL,
    planet_id integer
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
    name character varying(255) NOT NULL,
    class character varying(255) NOT NULL,
    distance numeric NOT NULL,
    star_id integer
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
-- Name: solar; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.solar (
    solar_id integer NOT NULL,
    name character varying(255) NOT NULL,
    size integer NOT NULL,
    galaxy_id integer,
    travel boolean DEFAULT false NOT NULL
);


ALTER TABLE public.solar OWNER TO freecodecamp;

--
-- Name: solar_solar_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.solar_solar_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.solar_solar_id_seq OWNER TO freecodecamp;

--
-- Name: solar_solar_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.solar_solar_id_seq OWNED BY public.solar.solar_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(255) NOT NULL,
    class character varying(255) NOT NULL,
    distance numeric NOT NULL,
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
-- Name: solar solar_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.solar ALTER COLUMN solar_id SET DEFAULT nextval('public.solar_solar_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'India', 0, true, 'Currently several planets residing');
INSERT INTO public.galaxy VALUES (2, 'UAE', 3, true, 'Land of oil');
INSERT INTO public.galaxy VALUES (3, 'Australia', 4, false, 'Land of kangaroos');
INSERT INTO public.galaxy VALUES (4, 'England', 5, false, 'Land of ugly bitches');
INSERT INTO public.galaxy VALUES (5, 'USA', 7, false, 'Land of guns');
INSERT INTO public.galaxy VALUES (7, 'CANNADA', 8, false, 'Land of beautiful wokes');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Aparna', 'a', 0.5, 1);
INSERT INTO public.moon VALUES (2, 'Anjali', 'a', 0.5, 1);
INSERT INTO public.moon VALUES (3, 'Bhoomika', 'b', 0.5, 1);
INSERT INTO public.moon VALUES (4, 'Bianca', 'c', 0.5, 2);
INSERT INTO public.moon VALUES (5, 'Parul', 'a', 0.5, 2);
INSERT INTO public.moon VALUES (6, 'Cathy', 'b', 0.5, 6);
INSERT INTO public.moon VALUES (7, 'Veronica', 'a', 0.5, 7);
INSERT INTO public.moon VALUES (8, 'Aditi', 'c', 0.5, 5);
INSERT INTO public.moon VALUES (9, 'Mohini', 'd', 0.5, 2);
INSERT INTO public.moon VALUES (10, 'Rachna', 'a', 0.5, 11);
INSERT INTO public.moon VALUES (11, 'Noor', 'a', 0.5, 1);
INSERT INTO public.moon VALUES (12, 'Megha', 'a', 0.3, 7);
INSERT INTO public.moon VALUES (13, 'Neelakshi', 'a', 0.3, 7);
INSERT INTO public.moon VALUES (14, 'Niharika', 'a', 0.3, 3);
INSERT INTO public.moon VALUES (15, 'Nancy', 'a', 0.3, 8);
INSERT INTO public.moon VALUES (16, 'Nandita', 'a', 0.3, 8);
INSERT INTO public.moon VALUES (17, 'Yukti', 'a', 0.3, 1);
INSERT INTO public.moon VALUES (18, 'Shramishtha', 'a', 0.3, 1);
INSERT INTO public.moon VALUES (19, 'Lopamudra', 'a', 0.3, 1);
INSERT INTO public.moon VALUES (20, 'Seerat', 'a', 0.3, 1);
INSERT INTO public.moon VALUES (21, 'Surat', 'a', 0.3, 5);
INSERT INTO public.moon VALUES (22, 'Archana', 'a', 0.3, 9);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Anish', 'a', 0.5, 1);
INSERT INTO public.planet VALUES (2, 'Rohan', 'a', 0.01, 1);
INSERT INTO public.planet VALUES (3, 'Chunmun', 'a', 0.02, 1);
INSERT INTO public.planet VALUES (4, 'Karan', 'a', 0, 1);
INSERT INTO public.planet VALUES (5, 'Manish', 'a', 0.1, 1);
INSERT INTO public.planet VALUES (6, 'Surujit', 'a', 0.1, 1);
INSERT INTO public.planet VALUES (7, 'Deepanshu', 'b', 8.1, 2);
INSERT INTO public.planet VALUES (8, 'Arvind', 'b', 7.5, 6);
INSERT INTO public.planet VALUES (9, 'Minga', 'a', 3.5, 3);
INSERT INTO public.planet VALUES (10, 'Rohit', 'd', 8.2, 2);
INSERT INTO public.planet VALUES (11, 'Sajan', 'a', 7.8, 6);
INSERT INTO public.planet VALUES (12, 'Ashish', 'b', 8.5, 2);


--
-- Data for Name: solar; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.solar VALUES (1, 'Breakfast', 500, 1, true);
INSERT INTO public.solar VALUES (2, 'Lunch', 1000, 2, true);
INSERT INTO public.solar VALUES (3, 'Dinner', 1500, 3, false);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'North', 'a', 0, 1);
INSERT INTO public.star VALUES (2, 'Toronto', 'a', 8.2, 7);
INSERT INTO public.star VALUES (3, 'Melbourne', 'b', 3.5, 3);
INSERT INTO public.star VALUES (4, 'Leiscester', 'd', 4.5, 4);
INSERT INTO public.star VALUES (5, 'Abu Dhabi', 'c', 3.5, 2);
INSERT INTO public.star VALUES (6, 'Dallas', 'b', 7.5, 5);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 7, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 22, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: solar_solar_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.solar_solar_id_seq', 3, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


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
-- Name: solar solar_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.solar
    ADD CONSTRAINT solar_name_key UNIQUE (name);


--
-- Name: solar solar_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.solar
    ADD CONSTRAINT solar_pkey PRIMARY KEY (solar_id);


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
-- Name: solar solar_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.solar
    ADD CONSTRAINT solar_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

