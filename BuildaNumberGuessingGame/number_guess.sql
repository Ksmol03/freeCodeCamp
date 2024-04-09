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

DROP DATABASE game;
--
-- Name: game; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE game WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE game OWNER TO freecodecamp;

\connect game

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
    takes integer NOT NULL,
    username character varying(22) NOT NULL
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
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (1, 23, 'Kacper');
INSERT INTO public.games VALUES (2, 14, 'Kacper');
INSERT INTO public.games VALUES (3, 14, 'Majkel');
INSERT INTO public.games VALUES (4, 9, 'Kacper');
INSERT INTO public.games VALUES (5, 482, 'user_1712653166187');
INSERT INTO public.games VALUES (6, 839, 'user_1712653166187');
INSERT INTO public.games VALUES (7, 1000, 'user_1712653166186');
INSERT INTO public.games VALUES (8, 273, 'user_1712653166186');
INSERT INTO public.games VALUES (9, 182, 'user_1712653166187');
INSERT INTO public.games VALUES (10, 622, 'user_1712653166187');
INSERT INTO public.games VALUES (11, 380, 'user_1712653166187');
INSERT INTO public.games VALUES (12, 649, 'user_1712653187419');
INSERT INTO public.games VALUES (13, 706, 'user_1712653187419');
INSERT INTO public.games VALUES (14, 980, 'user_1712653187418');
INSERT INTO public.games VALUES (15, 900, 'user_1712653187418');
INSERT INTO public.games VALUES (16, 311, 'user_1712653187419');
INSERT INTO public.games VALUES (17, 188, 'user_1712653187419');
INSERT INTO public.games VALUES (18, 588, 'user_1712653187419');
INSERT INTO public.games VALUES (19, 31, 'user_1712653234430');
INSERT INTO public.games VALUES (20, 402, 'user_1712653234430');
INSERT INTO public.games VALUES (21, 59, 'user_1712653234429');
INSERT INTO public.games VALUES (22, 825, 'user_1712653234429');
INSERT INTO public.games VALUES (23, 980, 'user_1712653234430');
INSERT INTO public.games VALUES (24, 704, 'user_1712653234430');
INSERT INTO public.games VALUES (25, 831, 'user_1712653234430');
INSERT INTO public.games VALUES (26, 389, 'user_1712653236757');
INSERT INTO public.games VALUES (27, 203, 'user_1712653236757');
INSERT INTO public.games VALUES (28, 163, 'user_1712653236756');
INSERT INTO public.games VALUES (29, 561, 'user_1712653236756');
INSERT INTO public.games VALUES (30, 128, 'user_1712653236757');
INSERT INTO public.games VALUES (31, 820, 'user_1712653236757');
INSERT INTO public.games VALUES (32, 473, 'user_1712653236757');
INSERT INTO public.games VALUES (33, 806, 'user_1712653238539');
INSERT INTO public.games VALUES (34, 975, 'user_1712653238539');
INSERT INTO public.games VALUES (35, 844, 'user_1712653238538');
INSERT INTO public.games VALUES (36, 921, 'user_1712653238538');
INSERT INTO public.games VALUES (37, 923, 'user_1712653238539');
INSERT INTO public.games VALUES (38, 772, 'user_1712653238539');
INSERT INTO public.games VALUES (39, 881, 'user_1712653238539');
INSERT INTO public.games VALUES (40, 574, 'user_1712653243191');
INSERT INTO public.games VALUES (41, 870, 'user_1712653243191');
INSERT INTO public.games VALUES (42, 519, 'user_1712653243190');
INSERT INTO public.games VALUES (43, 9, 'user_1712653243190');
INSERT INTO public.games VALUES (44, 636, 'user_1712653243191');
INSERT INTO public.games VALUES (45, 176, 'user_1712653243191');
INSERT INTO public.games VALUES (46, 719, 'user_1712653243191');
INSERT INTO public.games VALUES (47, 518, 'user_1712653246735');
INSERT INTO public.games VALUES (48, 54, 'user_1712653246735');
INSERT INTO public.games VALUES (49, 275, 'user_1712653246734');
INSERT INTO public.games VALUES (50, 214, 'user_1712653246734');
INSERT INTO public.games VALUES (51, 107, 'user_1712653246735');
INSERT INTO public.games VALUES (52, 508, 'user_1712653246735');
INSERT INTO public.games VALUES (53, 842, 'user_1712653246735');
INSERT INTO public.games VALUES (54, 320, 'user_1712653257177');
INSERT INTO public.games VALUES (55, 875, 'user_1712653257177');
INSERT INTO public.games VALUES (56, 201, 'user_1712653257176');
INSERT INTO public.games VALUES (57, 814, 'user_1712653257176');
INSERT INTO public.games VALUES (58, 635, 'user_1712653257177');
INSERT INTO public.games VALUES (59, 969, 'user_1712653257177');
INSERT INTO public.games VALUES (60, 738, 'user_1712653257177');
INSERT INTO public.games VALUES (61, 243, 'user_1712653260189');
INSERT INTO public.games VALUES (62, 421, 'user_1712653260189');
INSERT INTO public.games VALUES (63, 380, 'user_1712653260188');
INSERT INTO public.games VALUES (64, 645, 'user_1712653260188');
INSERT INTO public.games VALUES (65, 473, 'user_1712653260189');
INSERT INTO public.games VALUES (66, 554, 'user_1712653260189');
INSERT INTO public.games VALUES (67, 670, 'user_1712653260189');
INSERT INTO public.games VALUES (68, 386, 'user_1712653262989');
INSERT INTO public.games VALUES (69, 595, 'user_1712653262989');
INSERT INTO public.games VALUES (70, 930, 'user_1712653262988');
INSERT INTO public.games VALUES (71, 249, 'user_1712653262988');
INSERT INTO public.games VALUES (72, 588, 'user_1712653262989');
INSERT INTO public.games VALUES (73, 337, 'user_1712653262989');
INSERT INTO public.games VALUES (74, 748, 'user_1712653262989');
INSERT INTO public.games VALUES (75, 481, 'user_1712653266290');
INSERT INTO public.games VALUES (76, 708, 'user_1712653266290');
INSERT INTO public.games VALUES (77, 908, 'user_1712653266289');
INSERT INTO public.games VALUES (78, 642, 'user_1712653266289');
INSERT INTO public.games VALUES (79, 137, 'user_1712653266290');
INSERT INTO public.games VALUES (80, 796, 'user_1712653266290');
INSERT INTO public.games VALUES (81, 275, 'user_1712653266290');
INSERT INTO public.games VALUES (82, 932, 'user_1712653268146');
INSERT INTO public.games VALUES (83, 746, 'user_1712653268146');
INSERT INTO public.games VALUES (84, 578, 'user_1712653268145');
INSERT INTO public.games VALUES (85, 243, 'user_1712653268145');
INSERT INTO public.games VALUES (86, 984, 'user_1712653268146');
INSERT INTO public.games VALUES (87, 38, 'user_1712653268146');
INSERT INTO public.games VALUES (88, 457, 'user_1712653268146');
INSERT INTO public.games VALUES (89, 896, 'user_1712653270047');
INSERT INTO public.games VALUES (90, 709, 'user_1712653270047');
INSERT INTO public.games VALUES (91, 401, 'user_1712653270046');
INSERT INTO public.games VALUES (92, 234, 'user_1712653270046');
INSERT INTO public.games VALUES (93, 930, 'user_1712653270047');
INSERT INTO public.games VALUES (94, 182, 'user_1712653270047');
INSERT INTO public.games VALUES (95, 323, 'user_1712653270047');
INSERT INTO public.games VALUES (96, 408, 'user_1712653315262');
INSERT INTO public.games VALUES (97, 252, 'user_1712653315262');
INSERT INTO public.games VALUES (98, 231, 'user_1712653315261');
INSERT INTO public.games VALUES (99, 120, 'user_1712653315261');
INSERT INTO public.games VALUES (100, 527, 'user_1712653315262');
INSERT INTO public.games VALUES (101, 97, 'user_1712653315262');
INSERT INTO public.games VALUES (102, 864, 'user_1712653315262');
INSERT INTO public.games VALUES (103, 104, 'user_1712653316957');
INSERT INTO public.games VALUES (104, 441, 'user_1712653316957');
INSERT INTO public.games VALUES (105, 680, 'user_1712653316956');
INSERT INTO public.games VALUES (106, 638, 'user_1712653316956');
INSERT INTO public.games VALUES (107, 415, 'user_1712653316957');
INSERT INTO public.games VALUES (108, 590, 'user_1712653316957');
INSERT INTO public.games VALUES (109, 189, 'user_1712653316957');
INSERT INTO public.games VALUES (110, 199, 'user_1712653318609');
INSERT INTO public.games VALUES (111, 90, 'user_1712653318609');
INSERT INTO public.games VALUES (112, 663, 'user_1712653318608');
INSERT INTO public.games VALUES (113, 543, 'user_1712653318608');
INSERT INTO public.games VALUES (114, 329, 'user_1712653318609');
INSERT INTO public.games VALUES (115, 255, 'user_1712653318609');
INSERT INTO public.games VALUES (116, 262, 'user_1712653318609');
INSERT INTO public.games VALUES (117, 69, 'user_1712653320195');
INSERT INTO public.games VALUES (118, 25, 'user_1712653320195');
INSERT INTO public.games VALUES (119, 878, 'user_1712653320194');
INSERT INTO public.games VALUES (120, 242, 'user_1712653320194');
INSERT INTO public.games VALUES (121, 58, 'user_1712653320195');
INSERT INTO public.games VALUES (122, 810, 'user_1712653320195');
INSERT INTO public.games VALUES (123, 697, 'user_1712653320195');
INSERT INTO public.games VALUES (124, 20, 'Kacper');
INSERT INTO public.games VALUES (125, 714, 'user_1712653508586');
INSERT INTO public.games VALUES (126, 930, 'user_1712653508586');
INSERT INTO public.games VALUES (127, 909, 'user_1712653508585');
INSERT INTO public.games VALUES (128, 196, 'user_1712653508585');
INSERT INTO public.games VALUES (129, 696, 'user_1712653508586');
INSERT INTO public.games VALUES (130, 518, 'user_1712653508586');
INSERT INTO public.games VALUES (131, 988, 'user_1712653508586');
INSERT INTO public.games VALUES (132, 394, 'user_1712653510950');
INSERT INTO public.games VALUES (133, 712, 'user_1712653510950');
INSERT INTO public.games VALUES (134, 128, 'user_1712653510949');
INSERT INTO public.games VALUES (135, 672, 'user_1712653510949');
INSERT INTO public.games VALUES (136, 104, 'user_1712653510950');
INSERT INTO public.games VALUES (137, 684, 'user_1712653510950');
INSERT INTO public.games VALUES (138, 737, 'user_1712653510950');
INSERT INTO public.games VALUES (139, 685, 'user_1712653512939');
INSERT INTO public.games VALUES (140, 662, 'user_1712653512939');
INSERT INTO public.games VALUES (141, 303, 'user_1712653512938');
INSERT INTO public.games VALUES (142, 887, 'user_1712653512938');
INSERT INTO public.games VALUES (143, 240, 'user_1712653512939');
INSERT INTO public.games VALUES (144, 102, 'user_1712653512939');
INSERT INTO public.games VALUES (145, 61, 'user_1712653512939');
INSERT INTO public.games VALUES (146, 690, 'user_1712653515417');
INSERT INTO public.games VALUES (147, 855, 'user_1712653515417');
INSERT INTO public.games VALUES (148, 199, 'user_1712653515416');
INSERT INTO public.games VALUES (149, 604, 'user_1712653515416');
INSERT INTO public.games VALUES (150, 912, 'user_1712653515417');
INSERT INTO public.games VALUES (151, 539, 'user_1712653515417');
INSERT INTO public.games VALUES (152, 303, 'user_1712653515417');
INSERT INTO public.games VALUES (153, 642, 'user_1712653519919');
INSERT INTO public.games VALUES (154, 746, 'user_1712653519919');
INSERT INTO public.games VALUES (155, 355, 'user_1712653519918');
INSERT INTO public.games VALUES (156, 63, 'user_1712653519918');
INSERT INTO public.games VALUES (157, 112, 'user_1712653519919');
INSERT INTO public.games VALUES (158, 415, 'user_1712653519919');
INSERT INTO public.games VALUES (159, 350, 'user_1712653519919');
INSERT INTO public.games VALUES (160, 429, 'user_1712653521599');
INSERT INTO public.games VALUES (161, 96, 'user_1712653521599');
INSERT INTO public.games VALUES (162, 131, 'user_1712653521598');
INSERT INTO public.games VALUES (163, 532, 'user_1712653521598');
INSERT INTO public.games VALUES (164, 545, 'user_1712653521599');
INSERT INTO public.games VALUES (165, 429, 'user_1712653521599');
INSERT INTO public.games VALUES (166, 860, 'user_1712653521599');
INSERT INTO public.games VALUES (167, 278, 'user_1712653525032');
INSERT INTO public.games VALUES (168, 905, 'user_1712653525032');
INSERT INTO public.games VALUES (169, 714, 'user_1712653525031');
INSERT INTO public.games VALUES (170, 546, 'user_1712653525031');
INSERT INTO public.games VALUES (171, 258, 'user_1712653525032');
INSERT INTO public.games VALUES (172, 673, 'user_1712653525032');
INSERT INTO public.games VALUES (173, 686, 'user_1712653525032');
INSERT INTO public.games VALUES (174, 800, 'user_1712653547534');
INSERT INTO public.games VALUES (175, 452, 'user_1712653547534');
INSERT INTO public.games VALUES (176, 399, 'user_1712653547533');
INSERT INTO public.games VALUES (177, 213, 'user_1712653547533');
INSERT INTO public.games VALUES (178, 509, 'user_1712653547534');
INSERT INTO public.games VALUES (179, 577, 'user_1712653547534');
INSERT INTO public.games VALUES (180, 331, 'user_1712653547534');
INSERT INTO public.games VALUES (181, 834, 'user_1712653549583');
INSERT INTO public.games VALUES (182, 432, 'user_1712653549583');
INSERT INTO public.games VALUES (183, 568, 'user_1712653549581');
INSERT INTO public.games VALUES (184, 393, 'user_1712653549581');
INSERT INTO public.games VALUES (185, 876, 'user_1712653549583');
INSERT INTO public.games VALUES (186, 998, 'user_1712653549583');
INSERT INTO public.games VALUES (187, 765, 'user_1712653549583');
INSERT INTO public.games VALUES (188, 219, 'user_1712653586767');
INSERT INTO public.games VALUES (189, 402, 'user_1712653586767');
INSERT INTO public.games VALUES (190, 25, 'user_1712653586766');
INSERT INTO public.games VALUES (191, 56, 'user_1712653586766');
INSERT INTO public.games VALUES (192, 736, 'user_1712653586767');
INSERT INTO public.games VALUES (193, 41, 'user_1712653586767');
INSERT INTO public.games VALUES (194, 297, 'user_1712653586767');
INSERT INTO public.games VALUES (195, 991, 'user_1712653621673');
INSERT INTO public.games VALUES (196, 7, 'user_1712653621673');
INSERT INTO public.games VALUES (197, 520, 'user_1712653621672');
INSERT INTO public.games VALUES (198, 227, 'user_1712653621672');
INSERT INTO public.games VALUES (199, 696, 'user_1712653621673');
INSERT INTO public.games VALUES (200, 143, 'user_1712653621673');
INSERT INTO public.games VALUES (201, 85, 'user_1712653621673');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 201, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- PostgreSQL database dump complete
--

