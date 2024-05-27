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
    name character varying(30),
    description text NOT NULL,
    diameter_in_miles integer,
    has_life boolean NOT NULL,
    hw_ratio numeric
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
    name character varying(30),
    description text NOT NULL,
    diameter_in_miles integer,
    has_life boolean NOT NULL,
    planet_id integer,
    hw_ratio numeric
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
    name character varying(30),
    description text NOT NULL,
    diameter_in_miles integer,
    has_life boolean NOT NULL,
    star_id integer,
    hw_ratio numeric
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
-- Name: planetary_feature; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planetary_feature (
    planetary_feature_id integer NOT NULL,
    name character varying(30),
    description text NOT NULL,
    planet_id integer,
    hw_ratio numeric
);


ALTER TABLE public.planetary_feature OWNER TO freecodecamp;

--
-- Name: planetary_feature_planetary_feature_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planetary_feature_planetary_feature_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planetary_feature_planetary_feature_id_seq OWNER TO freecodecamp;

--
-- Name: planetary_feature_planetary_feature_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planetary_feature_planetary_feature_id_seq OWNED BY public.planetary_feature.planetary_feature_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30),
    description text NOT NULL,
    diameter_in_miles integer,
    has_life boolean NOT NULL,
    galaxy_id integer,
    hw_ratio numeric
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
-- Name: planetary_feature planetary_feature_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planetary_feature ALTER COLUMN planetary_feature_id SET DEFAULT nextval('public.planetary_feature_planetary_feature_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'pldkhbfckad', 'ciaducisdcahii', 754756, false, NULL);
INSERT INTO public.galaxy VALUES (2, 'dfgbfsdg', 'gsfgwfwefgwefrgwefgv', 8979, false, NULL);
INSERT INTO public.galaxy VALUES (3, 'frtrate', 'fgsfdgvsfggfs', 45432, false, NULL);
INSERT INTO public.galaxy VALUES (4, 'Milky Way', 'Our Galaxy', 1, true, NULL);
INSERT INTO public.galaxy VALUES (5, 'gsfgsdfgsgv', 'gsfgfgsfdgfgsdfgf', 7556, false, NULL);
INSERT INTO public.galaxy VALUES (6, 'fgsfgd', 'fbgsfbfvfsbsfbsfd', 8979, false, NULL);
INSERT INTO public.galaxy VALUES (7, 'fbgfs', 'bvsfbsbsbsbsf', 45432, false, NULL);
INSERT INTO public.galaxy VALUES (8, 'fgsfsgsgfsgdf', 'gsfgsfgsfgsfgsg', 1, false, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'yfy', 'jvhgvjhg', 7926, false, 1, NULL);
INSERT INTO public.moon VALUES (2, 'skkd', 'jvhgvjhg', 7926, false, 1, NULL);
INSERT INTO public.moon VALUES (3, 'hfh', 'jvhgvjhg', 7926, false, 1, NULL);
INSERT INTO public.moon VALUES (4, 'nfnfsn', 'jvhgvjhg', 7926, false, 1, NULL);
INSERT INTO public.moon VALUES (5, 'oiuo', 'jvhgvjhg', 7926, false, 1, NULL);
INSERT INTO public.moon VALUES (6, 'bfsbbs', 'jvhgvjhg', 7926, false, 1, NULL);
INSERT INTO public.moon VALUES (7, 'fskbskbs', 'jvhgvjhg', 7926, false, 1, NULL);
INSERT INTO public.moon VALUES (8, 'fsfsf', 'jvhgvjhg', 7926, false, 1, NULL);
INSERT INTO public.moon VALUES (9, 'ghgh', 'jvhgvjhg', 7926, false, 1, NULL);
INSERT INTO public.moon VALUES (10, 'bxjkso', 'jvhgvjhg', 7926, false, 1, NULL);
INSERT INTO public.moon VALUES (11, 'palehd', 'jvhgvjhg', 7926, false, 1, NULL);
INSERT INTO public.moon VALUES (12, 'ndkdk', 'jvhgvjhg', 7926, false, 1, NULL);
INSERT INTO public.moon VALUES (13, 'jfdjkj', 'jvhgvjhg', 7926, false, 1, NULL);
INSERT INTO public.moon VALUES (14, 'dfddfdn', 'jvhgvjhg', 7926, false, 1, NULL);
INSERT INTO public.moon VALUES (15, 'dfa', 'jvhgvjhg', 7926, false, 1, NULL);
INSERT INTO public.moon VALUES (16, 'dfaafa', 'jvhgvjhg', 7926, false, 1, NULL);
INSERT INTO public.moon VALUES (17, 'fdafadf', 'jvhgvjhg', 7926, false, 1, NULL);
INSERT INTO public.moon VALUES (18, 'fadfa', 'jvhgvjhg', 7926, false, 1, NULL);
INSERT INTO public.moon VALUES (19, 'fadaf', 'jvhgvjhg', 7926, false, 1, NULL);
INSERT INTO public.moon VALUES (20, 'fadfdafa', 'jvhgvjhg', 7926, false, 1, NULL);
INSERT INTO public.moon VALUES (21, 'fadfad', 'jvhgvjhg', 7926, false, 1, NULL);
INSERT INTO public.moon VALUES (22, 'fdafdafa', 'jvhgvjhg', 7926, false, 1, NULL);
INSERT INTO public.moon VALUES (23, 'fadfadfdd', 'jvhgvjhg', 7926, false, 1, NULL);
INSERT INTO public.moon VALUES (24, 'fadfdafdf', 'jvhgvjhg', 7926, false, 1, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', 'The planet from the sun in our solar system', 3032, false, 1, NULL);
INSERT INTO public.planet VALUES (2, 'Venus', 'The planet from the sun in our solar system', 7521, false, 1, NULL);
INSERT INTO public.planet VALUES (3, 'Mars', 'The planet from the sun in our solar system', 4221, false, 1, NULL);
INSERT INTO public.planet VALUES (4, 'Jupiter', 'The planet from the sun in our solar system', 88846, false, 1, NULL);
INSERT INTO public.planet VALUES (5, 'Saturn', 'The planet from the sun in our solar system', 74898, false, 1, NULL);
INSERT INTO public.planet VALUES (6, 'Uranus', 'The planet from the sun in our solar system', 31763, false, 1, NULL);
INSERT INTO public.planet VALUES (7, 'Neptune', 'The planet from the sun in our solar system', 30775, false, 1, NULL);
INSERT INTO public.planet VALUES (8, 'Golem', 'The planet from the sun in our solar system', 7926, false, 1, NULL);
INSERT INTO public.planet VALUES (9, 'jhgjh', 'bvhjvjghvjhgvjg', 7926, false, 1, NULL);
INSERT INTO public.planet VALUES (10, 'jvkjghvk', 'Tjgvkgvkghvkhjgvkhjg kh', 7926, false, 1, NULL);
INSERT INTO public.planet VALUES (11, 'jvjjvvfg', 'iytfiyviyuciytc', 7926, false, 1, NULL);
INSERT INTO public.planet VALUES (12, 'gkjhvkjghv', 'vgkhgvikcdidkd', 7926, false, 1, NULL);


--
-- Data for Name: planetary_feature; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planetary_feature VALUES (1, 'yfy', 'ffdgafgafz', 1, NULL);
INSERT INTO public.planetary_feature VALUES (2, 'bgbgb', 'kvbvdfkavdbadav', 1, NULL);
INSERT INTO public.planetary_feature VALUES (3, 'olol', 'kchbdcbdakcbka', 1, NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'The Sun', 'Our Sun - a star in the Milky Way galaxy', 865370, false, 4, NULL);
INSERT INTO public.star VALUES (2, 'dkfgadksjhfgadkjhf', 'gkadjfchakjsdchvbadkjchadchkjda', 5370, false, 1, NULL);
INSERT INTO public.star VALUES (3, 'dkfgadksjhfgcdacdzcadkjhf', 'gkavczvzzdjfchakjsdchvbadkjchadchkjda', 5370, false, 1, NULL);
INSERT INTO public.star VALUES (4, 'dkfgadkhf', 'gkavczvzzdjfchakjsdchvbadkjvzcvzccvchadchkjda', 5370, false, 1, NULL);
INSERT INTO public.star VALUES (5, 'dadkhf', 'gkavczvzzdjfkjda', 5370, false, 1, NULL);
INSERT INTO public.star VALUES (6, 'dadkdadfahf', 'gfadsdkavczvzzdjfkjda', 5370, false, 1, NULL);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 8, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 24, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: planetary_feature_planetary_feature_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planetary_feature_planetary_feature_id_seq', 3, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: galaxy galaxy_hw_ratio_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_hw_ratio_key UNIQUE (hw_ratio);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_hw_ratio_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_hw_ratio_key UNIQUE (hw_ratio);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_hw_ratio_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_hw_ratio_key UNIQUE (hw_ratio);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: planetary_feature planetary_feature_hw_ratio_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planetary_feature
    ADD CONSTRAINT planetary_feature_hw_ratio_key UNIQUE (hw_ratio);


--
-- Name: planetary_feature planetary_feature_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planetary_feature
    ADD CONSTRAINT planetary_feature_pkey PRIMARY KEY (planetary_feature_id);


--
-- Name: star star_hw_ratio_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_hw_ratio_key UNIQUE (hw_ratio);


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
-- Name: planetary_feature planetary_feature_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planetary_feature
    ADD CONSTRAINT planetary_feature_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

