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
-- Name: black_hole; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.black_hole (
    black_hole_id integer NOT NULL,
    description text,
    age_in_millions_of_years integer NOT NULL,
    name character varying(255),
    galaxy_id integer
);


ALTER TABLE public.black_hole OWNER TO freecodecamp;

--
-- Name: black_hole_hole_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.black_hole_hole_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.black_hole_hole_id_seq OWNER TO freecodecamp;

--
-- Name: black_hole_hole_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.black_hole_hole_id_seq OWNED BY public.black_hole.black_hole_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    description text,
    age_in_millions_of_years integer NOT NULL,
    name character varying(255),
    distance_from_earth integer
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
    description text,
    age_in_millions_of_years integer NOT NULL,
    name character varying(255),
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
    description text,
    is_spherical boolean NOT NULL,
    has_life boolean,
    name character varying(255),
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
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    description text,
    age_in_millions_of_years numeric(4,1) NOT NULL,
    distance_from_earth integer,
    name character varying(255),
    galaxy_id integer
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
-- Name: black_hole black_hole_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.black_hole ALTER COLUMN black_hole_id SET DEFAULT nextval('public.black_hole_hole_id_seq'::regclass);


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
-- Data for Name: black_hole; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.black_hole VALUES (9, 'Supermassive black hole', 10000, 'Sagittarius A*', 1);
INSERT INTO public.black_hole VALUES (10, 'Stellar black hole', 500, 'V404 Cygni', 2);
INSERT INTO public.black_hole VALUES (11, 'Supermassive black hole', 20000, 'M87*', 3);
INSERT INTO public.black_hole VALUES (12, 'Stellar black hole', 300, 'Cygnus X-1', 4);
INSERT INTO public.black_hole VALUES (13, 'Supermassive black hole', 12000, 'NGC 1277', 5);
INSERT INTO public.black_hole VALUES (14, 'Stellar black hole', 700, 'XTE J1650-500', 6);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Spiral galaxy', 13700, 'Milky Way', NULL);
INSERT INTO public.galaxy VALUES (2, 'Elliptical galaxy', 10000, 'Andromeda', NULL);
INSERT INTO public.galaxy VALUES (3, 'Dwarf galaxy', 5000, 'Sagittarius Dwarf', NULL);
INSERT INTO public.galaxy VALUES (4, 'Irregular galaxy', 12000, 'Large Magellanic Cloud', NULL);
INSERT INTO public.galaxy VALUES (5, 'Spiral galaxy', 13000, 'Triangulum', NULL);
INSERT INTO public.galaxy VALUES (6, 'Spiral galaxy', 11000, 'Whirlpool Galaxy', NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Natural satellite', 4500, 'Moon', 1);
INSERT INTO public.moon VALUES (2, 'Largest moon in the Solar System', 4500, 'Ganymede', 2);
INSERT INTO public.moon VALUES (3, 'Most geologically active moon', 100, 'Io', 2);
INSERT INTO public.moon VALUES (4, 'Ice-covered moon', 400, 'Europa', 2);
INSERT INTO public.moon VALUES (5, 'Largest moon of Saturn', 4500, 'Titan', 5);
INSERT INTO public.moon VALUES (6, 'Moon with a retrograde orbit', 100, 'Triton', 1);
INSERT INTO public.moon VALUES (7, 'Dwarf planet moon', 4000, 'Charon', 7);
INSERT INTO public.moon VALUES (8, 'Natural satellite', 4000, 'Phobos', 4);
INSERT INTO public.moon VALUES (9, 'Natural satellite', 4000, 'Deimos', 4);
INSERT INTO public.moon VALUES (10, 'Cratered moon', 2000, 'Callisto', 2);
INSERT INTO public.moon VALUES (11, 'Volcanic moon', 100, 'Enceladus', 5);
INSERT INTO public.moon VALUES (12, 'Reddish moon', 400, 'Miranda', 5);
INSERT INTO public.moon VALUES (13, 'Natural satellite', 2500, 'Rhea', 5);
INSERT INTO public.moon VALUES (14, 'Small moon', 3000, 'Mimas', 5);
INSERT INTO public.moon VALUES (15, 'Icy moon', 3000, 'Dione', 5);
INSERT INTO public.moon VALUES (16, 'Moon with rings', 400, 'Haumea I', 6);
INSERT INTO public.moon VALUES (18, 'Natural satellite', 4000, 'Nereid', 9);
INSERT INTO public.moon VALUES (19, 'Small irregular moon', 3000, 'Hyperion', 5);
INSERT INTO public.moon VALUES (20, 'Moon with thick atmosphere', 1500, 'Titania', 10);
INSERT INTO public.moon VALUES (21, 'Ice moon', 1000, 'Oberon', 10);
INSERT INTO public.moon VALUES (17, 'Moon with water ice', 2000, 'Trito', 8);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Terrestrial planet', true, true, 'Earth', 1);
INSERT INTO public.planet VALUES (2, 'Gas giant', true, false, 'Jupiter', 1);
INSERT INTO public.planet VALUES (3, 'Ice giant', true, false, 'Neptune', 1);
INSERT INTO public.planet VALUES (4, 'Rocky planet', true, false, 'Mars', 1);
INSERT INTO public.planet VALUES (5, 'Gas giant', true, false, 'Saturn', 1);
INSERT INTO public.planet VALUES (6, 'Terrestrial planet', true, true, 'Venus', 1);
INSERT INTO public.planet VALUES (7, 'Dwarf planet', true, false, 'Pluto', 2);
INSERT INTO public.planet VALUES (8, 'Super-Earth', true, false, 'HD 40307g', 2);
INSERT INTO public.planet VALUES (9, 'Exoplanet', true, false, 'Kepler-186f', 2);
INSERT INTO public.planet VALUES (10, 'Terrestrial planet', true, true, 'Proxima Centauri b', 2);
INSERT INTO public.planet VALUES (11, 'Rocky planet', true, false, 'Gliese 581d', 3);
INSERT INTO public.planet VALUES (12, 'Ice planet', true, false, 'Uranus', 1);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Main sequence star', 450.0, 0, 'Sun', 1);
INSERT INTO public.star VALUES (2, 'Red dwarf', 600.0, 4, 'Proxima Centauri', 2);
INSERT INTO public.star VALUES (3, 'Red giant', 800.0, 640, 'Betelgeuse', 1);
INSERT INTO public.star VALUES (4, 'Yellow dwarf', 500.0, 25, 'Alpha Centauri A', 2);
INSERT INTO public.star VALUES (5, 'Blue giant', 950.0, 200, 'Rigel', 3);
INSERT INTO public.star VALUES (6, 'White dwarf', 700.0, 500, 'Sirius B', 1);


--
-- Name: black_hole_hole_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.black_hole_hole_id_seq', 14, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 21, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: black_hole black_hole_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.black_hole
    ADD CONSTRAINT black_hole_pkey PRIMARY KEY (black_hole_id);


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
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: black_hole unique_black_hole_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.black_hole
    ADD CONSTRAINT unique_black_hole_name UNIQUE (name);


--
-- Name: black_hole unique_galaxy_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.black_hole
    ADD CONSTRAINT unique_galaxy_id UNIQUE (galaxy_id);


--
-- Name: galaxy unique_galaxy_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT unique_galaxy_name UNIQUE (name);


--
-- Name: moon unique_moon_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT unique_moon_name UNIQUE (name);


--
-- Name: planet unique_planet_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT unique_planet_name UNIQUE (name);


--
-- Name: star unique_star_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT unique_star_name UNIQUE (name);


--
-- Name: star fk_galaxy; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_galaxy FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: black_hole fk_galaxy_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.black_hole
    ADD CONSTRAINT fk_galaxy_id FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: moon fk_planet_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fk_planet_id FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet fk_star_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_star_id FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- PostgreSQL database dump complete
--

