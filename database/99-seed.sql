--
-- PostgreSQL database dump
--

-- \restrict psGbeVYTKLk7t8pDqGgEqcorhpHCyDi80SvIeP7GDT4MDDacaeccRqzoAiqAf71

-- Dumped from database version 16.9 (Debian 16.9-1.pgdg120+1)
-- Dumped by pg_dump version 16.10 (Debian 16.10-1.pgdg12+1)

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

--
-- Data for Name: ncs; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.ncs VALUES ('5838d0c7-5c07-4cca-ae2e-0c93b29c3d3e', 'KS3 Design and Technology', true, '2025-08-18 18:40:42.594094', 'auto', 1);
INSERT INTO public.ncs VALUES ('14b04142-99e9-4787-86ea-eb1f1333e79a', 'KS4 Design and Technology', true, '2025-08-18 18:40:42.594094', 'auto', 2);
INSERT INTO public.ncs VALUES ('beaaa35d-515f-4996-9186-58a774470a51', 'KS3 Computing', true, '2025-08-18 18:40:42.594094', 'auto', 3);
INSERT INTO public.ncs VALUES ('ba7788ef-f02a-4d2b-a195-31e966d8ec51', 'KS4 Computing', true, '2025-08-18 18:40:42.594094', 'auto', 4);


--
-- Data for Name: courses; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.courses VALUES ('d41f30c1-c421-4288-afb8-050243071b35', 'YR7 Design and Technology', '5838d0c7-5c07-4cca-ae2e-0c93b29c3d3e', '{ks3,yr7,dt}', true, '2025-08-18 18:40:42.60848', 'auto', 1);
INSERT INTO public.courses VALUES ('76767970-8ab2-4ede-8811-c9186030408e', 'YR8 Design and Technology', '5838d0c7-5c07-4cca-ae2e-0c93b29c3d3e', '{ks3,yr8,dt}', true, '2025-08-18 18:40:42.60848', 'auto', 2);
INSERT INTO public.courses VALUES ('b0c714e3-dc20-4edc-bd03-36f0cdacd72f', 'YR9 Design and Technology', '5838d0c7-5c07-4cca-ae2e-0c93b29c3d3e', '{ks3,yr9,dt}', true, '2025-08-18 18:40:42.60848', 'auto', 3);
INSERT INTO public.courses VALUES ('50d1946e-f7d8-45ff-b076-98ad565060ba', 'YR10 Design and Technology', '14b04142-99e9-4787-86ea-eb1f1333e79a', '{ks4,yr10,dt}', true, '2025-08-18 18:40:42.60848', 'auto', 4);


--
-- Data for Name: units; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.units VALUES ('aa5ce9da-0499-4cdc-87af-9894ba2995ec', 'Microbit Cars', '76767970-8ab2-4ede-8811-c9186030408e', '{ks3,yr8,dt}', false, '2025-08-18 18:40:42.612769', 'auto', 3, '');
INSERT INTO public.units VALUES ('9366fb16-8968-44e3-bf4c-377468a19fbd', 'Materials - Metals', '50d1946e-f7d8-45ff-b076-98ad565060ba', '{ks4,yr10,dt}', true, '2025-08-18 18:40:42.612769', 'auto', 0, '');
INSERT INTO public.units VALUES ('c2dfedf3-601a-49ba-9ed3-a2a177b32935', 'Design Process (Shipping Container Houses)', 'd41f30c1-c421-4288-afb8-050243071b35', '{ks3,yr7,dt}', true, '2025-08-18 18:40:42.612769', 'auto', 1, '');
INSERT INTO public.units VALUES ('6edd0687-3d31-4f7d-90cd-034c94a3a5e7', 'Materials - Timbers', '50d1946e-f7d8-45ff-b076-98ad565060ba', '{}', true, '2025-08-22 13:59:39.41848', 'system', 1, '');
INSERT INTO public.units VALUES ('20ef6e03-77f4-47d1-84ac-0eb8fc504593', 'Manufacturing Processes', '50d1946e-f7d8-45ff-b076-98ad565060ba', '{ks4,yr10,dt}', true, '2025-08-18 18:40:42.612769', 'auto', 3, '');
INSERT INTO public.units VALUES ('4a367ee3-cf48-4dc8-ae92-dfbfd878c848', 'Materials (Candle Holders)', 'd41f30c1-c421-4288-afb8-050243071b35', '{ks3,yr7,dt}', true, '2025-08-18 18:40:42.612769', 'auto', 2, '');
INSERT INTO public.units VALUES ('ea5a6cbb-ef2b-4bfd-887b-a7f3160af11f', 'Design: Processes & Strategies', '50d1946e-f7d8-45ff-b076-98ad565060ba', '{ks4,yr10,dt}', true, '2025-08-18 18:40:42.612769', 'auto', 4, '');
INSERT INTO public.units VALUES ('e709cfbb-9db9-402e-ba47-015a1db821fb', 'Energy Generation and Storage', '50d1946e-f7d8-45ff-b076-98ad565060ba', '{}', true, '2025-08-20 14:08:53.269839', 'system', 2, '');
INSERT INTO public.units VALUES ('4344d880-0604-496d-bc52-82d2978cf0fe', 'Design a Villa', '76767970-8ab2-4ede-8811-c9186030408e', '{}', true, '2025-08-23 09:55:16.961065', 'system', 6, '');
INSERT INTO public.units VALUES ('361345bb-da35-4570-b49c-d83146be148e', 'Cams and Levers (Automata)', 'b0c714e3-dc20-4edc-bd03-36f0cdacd72f', '{}', true, '2025-08-23 15:11:36.730078', 'system', 7, '');
INSERT INTO public.units VALUES ('9c475255-52a0-4965-8cba-e945711c8623', 'Recycling (Key Rings)', '76767970-8ab2-4ede-8811-c9186030408e', '{}', true, '2025-08-22 16:53:28.898742', 'system', 0, '');
INSERT INTO public.units VALUES ('56e51090-6bfa-4429-bd04-7b7d1b302264', 'Microbits (Cars)', 'b0c714e3-dc20-4edc-bd03-36f0cdacd72f', '{}', true, '2025-08-22 16:55:27.226518', 'system', 0, '');
INSERT INTO public.units VALUES ('ccbb5bcf-4ffc-4a4e-81d7-170f7c004195', 'Design Process (Door Hanger)', 'd41f30c1-c421-4288-afb8-050243071b35', '{}', true, '2025-08-22 16:35:08.563757', 'system', 0, '');
INSERT INTO public.units VALUES ('f53133cb-3fac-4678-9902-95f0851b2fb9', 'Microbits (Natural Disaster Alarm)', '76767970-8ab2-4ede-8811-c9186030408e', '{}', true, '2025-08-22 16:56:25.127046', 'system', 1, '');
INSERT INTO public.units VALUES ('9d1dc4b5-200f-4b44-8184-be6f07b34398', 'Exam Command Words', '50d1946e-f7d8-45ff-b076-98ad565060ba', '{}', true, '2025-08-22 07:38:46.548863', 'system', 5, '');


--
-- Data for Name: lessons; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.lessons VALUES ('1d763aeb-ed0a-4c20-a861-4bf93ad560cf', 'Lesson 2: Exploring User Needs', NULL, '{ks3,yr7,dt}', 'c2dfedf3-601a-49ba-9ed3-a2a177b32935', true, '2025-08-18 18:40:42.622008', 'auto', 2);
INSERT INTO public.lessons VALUES ('b2666768-8395-4c49-a62d-3ad4b08c2ff7', 'Lesson 3: Sketching and Prototyping', NULL, '{ks3,yr7,dt}', 'c2dfedf3-601a-49ba-9ed3-a2a177b32935', true, '2025-08-18 18:40:42.622008', 'auto', 3);
INSERT INTO public.lessons VALUES ('c8f9d042-3b94-489e-b31e-c9393081d3f6', 'Lesson 1: Basics of Electronics', NULL, '{ks3,yr7,dt}', 'aa5ce9da-0499-4cdc-87af-9894ba2995ec', true, '2025-08-18 18:40:42.622008', 'auto', 1);
INSERT INTO public.lessons VALUES ('f08eb20c-b650-45cd-8dce-ddc40bc08504', 'Lesson 2: Circuit Design', NULL, '{ks3,yr7,dt}', 'aa5ce9da-0499-4cdc-87af-9894ba2995ec', true, '2025-08-18 18:40:42.622008', 'auto', 2);
INSERT INTO public.lessons VALUES ('d1085597-f49a-46ea-ba9d-86b077078867', 'Lesson 1: Introduction to Electronics', NULL, '{ks3,yr8,dt}', 'aa5ce9da-0499-4cdc-87af-9894ba2995ec', true, '2025-08-18 18:40:42.622008', 'auto', 3);
INSERT INTO public.lessons VALUES ('b7058c42-cec6-4f69-a7e7-ae1987c091e5', 'Lesson 2: Advanced Circuit Design', NULL, '{ks3,yr8,dt}', 'aa5ce9da-0499-4cdc-87af-9894ba2995ec', true, '2025-08-18 18:40:42.622008', 'auto', 4);
INSERT INTO public.lessons VALUES ('0a12a4d8-e01e-4f0d-9645-c6b94cf07ae7', 'Make: Door Hanger', NULL, '{}', 'ccbb5bcf-4ffc-4a4e-81d7-170f7c004195', true, '2025-08-23 07:38:41.986665', 'auto', 4);
INSERT INTO public.lessons VALUES ('6f1064b8-b040-430e-97d3-c4187804e8d7', 'Evaluate: Did my door hanger meet my clients needs?', NULL, '{}', 'ccbb5bcf-4ffc-4a4e-81d7-170f7c004195', true, '2025-08-23 07:39:19.121412', 'auto', 5);
INSERT INTO public.lessons VALUES ('79f798a2-0017-4778-bce9-dea875045390', 'Alloys', NULL, '{}', '9366fb16-8968-44e3-bf4c-377468a19fbd', false, '2025-08-19 06:59:23.852822', 'auto', 4);
INSERT INTO public.lessons VALUES ('4866d3d2-2232-401f-9561-c028cd024d72', 'Key Terms : Metals', NULL, '{}', '9366fb16-8968-44e3-bf4c-377468a19fbd', false, '2025-08-19 15:11:29.190566', 'auto', 0);
INSERT INTO public.lessons VALUES ('41d3c5b6-7cb2-484e-880a-4ea344d33886', 'Lesson 1: Basics of CAD', NULL, '{ks3,yr8,dt}', 'ea5a6cbb-ef2b-4bfd-887b-a7f3160af11f', false, '2025-08-18 18:40:42.622008', 'auto', 1);
INSERT INTO public.lessons VALUES ('a1e5c2dd-5f14-41cd-bb42-326d480b35c3', 'Lesson 2: 3D Modelling', NULL, '{ks3,yr8,dt}', 'ea5a6cbb-ef2b-4bfd-887b-a7f3160af11f', false, '2025-08-18 18:40:42.622008', 'auto', 2);
INSERT INTO public.lessons VALUES ('2effab0b-f971-4443-bf17-cf4ea6b0fa2a', 'Lesson 1: Advanced CAD Techniques', NULL, '{ks3,yr9,dt}', 'ea5a6cbb-ef2b-4bfd-887b-a7f3160af11f', false, '2025-08-18 18:40:42.622008', 'auto', 3);
INSERT INTO public.lessons VALUES ('d58f0bc6-6af8-4afb-a53b-7dbf78e9ce54', 'Lesson 2: CAD for Product Design', NULL, '{ks3,yr9,dt}', 'ea5a6cbb-ef2b-4bfd-887b-a7f3160af11f', false, '2025-08-18 18:40:42.622008', 'auto', 4);
INSERT INTO public.lessons VALUES ('a00fbd1b-6cb9-4c84-a107-3a362f7c832b', 'Vocabulary', NULL, '{}', '9366fb16-8968-44e3-bf4c-377468a19fbd', false, '2025-08-19 06:55:08.485036', 'auto', 1);
INSERT INTO public.lessons VALUES ('4b851d98-ed4c-4b6b-bf2a-a42829321860', 'New Lesson 13', NULL, '{}', 'ea5a6cbb-ef2b-4bfd-887b-a7f3160af11f', false, '2025-08-19 14:28:19.554367', 'auto', 5);
INSERT INTO public.lessons VALUES ('50aab33a-be08-4383-b319-d53685539046', 'Lesson 1: Advanced Electronics', NULL, '{ks3,yr9,dt}', '20ef6e03-77f4-47d1-84ac-0eb8fc504593', false, '2025-08-18 18:40:42.622008', 'auto', 1);
INSERT INTO public.lessons VALUES ('e7152961-bfa1-4dc7-836e-5abc912af75c', 'Lesson 2: Electronics in Real-World Applications', NULL, '{ks3,yr9,dt}', '20ef6e03-77f4-47d1-84ac-0eb8fc504593', false, '2025-08-18 18:40:42.622008', 'auto', 2);
INSERT INTO public.lessons VALUES ('eacb406e-c11a-4c92-beb1-dc1ce67d7eeb', 'Investigate - Ideation', NULL, '{}', 'ea5a6cbb-ef2b-4bfd-887b-a7f3160af11f', true, '2025-08-19 15:12:54.078415', 'auto', 6);
INSERT INTO public.lessons VALUES ('46c9ed06-c8b2-49eb-8070-1512872ad78c', 'New Lesson 12', NULL, '{}', '9d1dc4b5-200f-4b44-8184-be6f07b34398', true, '2025-08-22 07:54:06.965323', 'auto', 1);
INSERT INTO public.lessons VALUES ('4c1f759d-800b-44d3-8ead-7b4703d10f39', 'Test', NULL, '{ks3,yr7,dt}', 'c2dfedf3-601a-49ba-9ed3-a2a177b32935', true, '2025-08-18 18:40:42.622008', 'auto', 1);
INSERT INTO public.lessons VALUES ('5c873966-2a45-4611-b293-7455fc305ddc', 'What is the Design Process?', NULL, '{}', 'ccbb5bcf-4ffc-4a4e-81d7-170f7c004195', true, '2025-08-23 07:32:35.383431', 'auto', 1);
INSERT INTO public.lessons VALUES ('9ddcf921-e8c6-4913-8db8-c95a27b55329', 'How do I communicate my ideas?', NULL, '{}', 'ccbb5bcf-4ffc-4a4e-81d7-170f7c004195', true, '2025-08-23 07:36:08.817395', 'auto', 2);
INSERT INTO public.lessons VALUES ('91a8c86c-8172-4153-9dce-66ac815ac489', 'How do I use the Laser Cutter?', NULL, '{}', 'ccbb5bcf-4ffc-4a4e-81d7-170f7c004195', true, '2025-08-23 07:38:00.568352', 'auto', 3);
INSERT INTO public.lessons VALUES ('16179e33-c013-469b-ad9b-93251e196639', 'Ferrous Metals', NULL, '{}', '9366fb16-8968-44e3-bf4c-377468a19fbd', true, '2025-08-19 06:58:59.512738', 'auto', 2);
INSERT INTO public.lessons VALUES ('a08fe7f5-8079-492c-9812-1d4a53b6fc45', 'Non Ferrous Metals', NULL, '{}', '9366fb16-8968-44e3-bf4c-377468a19fbd', true, '2025-08-19 06:59:14.422867', 'auto', 1);
INSERT INTO public.lessons VALUES ('e61fe277-16b3-4c89-a0f5-375d751c8274', 'Environmental Imapct of Metals', NULL, '{}', '9366fb16-8968-44e3-bf4c-377468a19fbd', true, '2025-08-19 07:18:28.497589', 'auto', 3);
INSERT INTO public.lessons VALUES ('95ef125e-c933-4fb1-9c81-f6fe6dd76ea5', 'Key Terms: Metals', NULL, '{}', '9366fb16-8968-44e3-bf4c-377468a19fbd', true, '2025-08-23 16:23:04.728343', 'auto', 0);


--
-- Data for Name: activities; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.activities VALUES ('4ae85194-d089-4740-9fcc-604e738ca84b', 'Keywords', '2effab0b-f971-4443-bf17-cf4ea6b0fa2a', 'keywords', '{"keywords": [{"id": "0", "keyword": "CAD", "definition": "Computer Aided Design.  A software app that  helps you to design your ideas."}]}', true, '2025-08-18 18:40:42.654239', 'auto', 1);
INSERT INTO public.activities VALUES ('cdee34e6-088d-4f25-8ccf-8042e27f4b30', 'Description', '2effab0b-f971-4443-bf17-cf4ea6b0fa2a', 'text', '{"html": "<p>Hello, this is a <strong>Great</strong> description.</p>"}', true, '2025-08-18 18:40:42.654239', 'auto', 2);
INSERT INTO public.activities VALUES ('324d0cf8-9423-48e7-9cc4-ea7ca0079d5b', 'Description', '2effab0b-f971-4443-bf17-cf4ea6b0fa2a', 'video', '{"url": "X8u3zhDUDzE"}', true, '2025-08-18 18:40:42.654239', 'auto', 3);
INSERT INTO public.activities VALUES ('31fadf34-5953-4dad-afa2-89cfd6db144e', 'new Activity', '95ef125e-c933-4fb1-9c81-f6fe6dd76ea5', 'text', '{"html": "New Activity"}', true, '2025-09-04 11:08:38.421955', 'auto', 4);


--
-- Data for Name: assignments; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- Data for Name: learning_objectives; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.learning_objectives VALUES ('5d40ef73-5cfc-4171-8273-86437f7072af', 'TBAT describe the properties and uses of ferrous metals.', '{}', '9366fb16-8968-44e3-bf4c-377468a19fbd', true, '2025-08-19 07:07:58.978812', 'auto', 2);
INSERT INTO public.learning_objectives VALUES ('93fb9e04-3de0-4bc7-9d60-6a7445d5bee9', 'TBAT Understand User Needs', '{}', 'c2dfedf3-601a-49ba-9ed3-a2a177b32935', true, '2025-08-18 18:40:42.617909', 'auto', 1);
INSERT INTO public.learning_objectives VALUES ('e98989ef-2d1c-4ae5-9e51-17d8511a0926', 'TBAT Explore Design Ideas', '{}', 'c2dfedf3-601a-49ba-9ed3-a2a177b32935', true, '2025-08-18 18:40:42.617909', 'auto', 2);
INSERT INTO public.learning_objectives VALUES ('b4991280-3612-4d58-b57e-9e02900c6e8e', 'TBAT define the properties and uses of non-ferrous metals.', '{}', '9366fb16-8968-44e3-bf4c-377468a19fbd', true, '2025-08-19 07:12:14.639446', 'auto', 1);
INSERT INTO public.learning_objectives VALUES ('a765dd11-db6f-438e-9699-54d38d0a2c65', 'TBAT Communicate Designs', '{}', 'c2dfedf3-601a-49ba-9ed3-a2a177b32935', true, '2025-08-18 18:40:42.617909', 'auto', 3);
INSERT INTO public.learning_objectives VALUES ('0f9aacef-2cd5-489c-b25b-f6cd4eec60ff', 'TBAT describe the environmental impact of ferrous and non-ferrous metals.', '{}', '9366fb16-8968-44e3-bf4c-377468a19fbd', true, '2025-08-19 07:13:54.147944', 'auto', 3);
INSERT INTO public.learning_objectives VALUES ('a0e4d951-8c64-406e-bd65-bc964846233e', 'TBAT describe the characteristics of Laser Cutting', '{}', '20ef6e03-77f4-47d1-84ac-0eb8fc504593', true, '2025-08-19 15:14:14.817681', 'auto', 8);
INSERT INTO public.learning_objectives VALUES ('ff78c110-c7bd-4d53-a2f3-ca3c51d2564b', 'TBAT use the design process to produce a product.', '{}', 'ccbb5bcf-4ffc-4a4e-81d7-170f7c004195', true, '2025-08-23 07:00:02.046154', 'auto', 25);
INSERT INTO public.learning_objectives VALUES ('0e05c49a-3646-453f-96d1-9ac168b23f29', 'TBAT communicate a design.', '{}', 'ccbb5bcf-4ffc-4a4e-81d7-170f7c004195', true, '2025-08-23 07:01:46.88579', 'auto', 26);
INSERT INTO public.learning_objectives VALUES ('cc1959c0-d160-4bb2-b11d-fb851c248f8c', 'TBAT New LO 3', '{}', 'ccbb5bcf-4ffc-4a4e-81d7-170f7c004195', false, '2025-08-23 07:03:40.359127', 'auto', 27);
INSERT INTO public.learning_objectives VALUES ('1eaaaab5-654c-4c0d-8b88-a695cce7c8b1', 'TBAT Add a test', '{}', '9366fb16-8968-44e3-bf4c-377468a19fbd', false, '2025-08-22 13:55:19.716982', 'auto', 24);
INSERT INTO public.learning_objectives VALUES ('68859aea-52b1-4832-a421-469c0a9eb35f', 'TBAT Write a new LO.', '{}', '9366fb16-8968-44e3-bf4c-377468a19fbd', false, '2025-08-19 07:01:28.331309', 'auto', 4);
INSERT INTO public.learning_objectives VALUES ('fc70a0fe-7e73-4844-9092-69435b8c6429', 'TBAT define the key terms and vocab of describing timbers', '{}', '9366fb16-8968-44e3-bf4c-377468a19fbd', false, '2025-08-20 14:09:48.692726', 'auto', 15);
INSERT INTO public.learning_objectives VALUES ('fab2c045-2ab4-4190-882b-4987ed09a528', 'TBAT define the key terms and vocab of describing polymers.', '{}', '9366fb16-8968-44e3-bf4c-377468a19fbd', false, '2025-08-20 14:10:20.025828', 'auto', 16);
INSERT INTO public.learning_objectives VALUES ('2818a509-8704-42f2-a96b-d0dd012246d8', 'TBAT New LO 5', '{}', 'ccbb5bcf-4ffc-4a4e-81d7-170f7c004195', false, '2025-08-23 07:07:41.180366', 'auto', 30);
INSERT INTO public.learning_objectives VALUES ('720607cd-41af-47ab-bd72-d70d916adea5', 'TBAT evaluate a product.', '{}', 'ccbb5bcf-4ffc-4a4e-81d7-170f7c004195', false, '2025-08-23 07:06:52.933081', 'auto', 29);
INSERT INTO public.learning_objectives VALUES ('a14f4f1a-eaad-4665-b4e2-629f5fbac189', 'TBAT define the key terms and vocab of describing ferrous and non-ferrous metals.', '{}', '9366fb16-8968-44e3-bf4c-377468a19fbd', true, '2025-08-20 14:11:03.974006', 'auto', 0);
INSERT INTO public.learning_objectives VALUES ('9e4a4e13-21f2-44b4-866d-99ef3c5c4a8c', 'TBAT describe the characteristics of 3D printing', '{}', '20ef6e03-77f4-47d1-84ac-0eb8fc504593', true, '2025-08-19 15:14:42.666351', 'auto', 9);
INSERT INTO public.learning_objectives VALUES ('5c787b5e-f34a-48aa-905a-4ed24dd14b73', 'TBAT describe the characteristics of CNC Machining', '{}', '20ef6e03-77f4-47d1-84ac-0eb8fc504593', true, '2025-08-19 15:15:08.407263', 'auto', 10);
INSERT INTO public.learning_objectives VALUES ('f35265bd-c84e-41a8-92eb-615d30552b22', 'TBAT describe the characteristics of Vacuum Forming', '{}', '20ef6e03-77f4-47d1-84ac-0eb8fc504593', true, '2025-08-19 15:15:39.641523', 'auto', 11);
INSERT INTO public.learning_objectives VALUES ('0eef1be8-19cd-44d7-9a63-8a20b2a278a8', 'TBAT describe the scales of production.', '{}', '20ef6e03-77f4-47d1-84ac-0eb8fc504593', true, '2025-08-19 15:16:09.108627', 'auto', 12);
INSERT INTO public.learning_objectives VALUES ('31a61cc7-45d6-44af-8512-13e0f47ce230', 'TBAT describe the characteristics of Strip Bending', '{}', '20ef6e03-77f4-47d1-84ac-0eb8fc504593', true, '2025-08-19 15:16:51.696203', 'auto', 13);
INSERT INTO public.learning_objectives VALUES ('f65046b1-fe63-4b3a-8938-8c4004c71eaf', 'TBAT describe the characteristics of PCB Manufacturing', '{}', '20ef6e03-77f4-47d1-84ac-0eb8fc504593', true, '2025-08-19 15:17:44.381733', 'auto', 14);
INSERT INTO public.learning_objectives VALUES ('75523d31-e7ed-4b66-9403-371a27653f24', 'TBAT define the key terms and vocab for describing energy generation and storage.', '{}', 'e709cfbb-9db9-402e-ba47-015a1db821fb', true, '2025-08-20 14:12:52.361261', 'auto', 18);
INSERT INTO public.learning_objectives VALUES ('1891e32e-f3bf-4ba6-9b9d-75ae882312fb', 'TBAT describe the non-renewable forms of energy generation.', '{}', 'e709cfbb-9db9-402e-ba47-015a1db821fb', true, '2025-08-20 14:14:32.109289', 'auto', 19);
INSERT INTO public.learning_objectives VALUES ('1d004ad3-9cb4-4964-9f6a-84830a2da7e4', 'TBAT define the renewable forms of energy generation.', '{}', 'e709cfbb-9db9-402e-ba47-015a1db821fb', true, '2025-08-20 14:15:02.876244', 'auto', 20);
INSERT INTO public.learning_objectives VALUES ('d7a40f78-41b0-42b5-a131-c07e2124820e', 'TBAT describe the environmental imapct of different forms of energy generation.', '{}', 'e709cfbb-9db9-402e-ba47-015a1db821fb', true, '2025-08-20 14:15:23.30395', 'auto', 21);
INSERT INTO public.learning_objectives VALUES ('547401eb-4041-4a66-a651-b3d85cbf129f', 'TBAT describe the environmental impact of different forms of energy storage.', '{}', 'e709cfbb-9db9-402e-ba47-015a1db821fb', true, '2025-08-20 14:16:00.909214', 'auto', 22);
INSERT INTO public.learning_objectives VALUES ('5987ca7b-fc7d-49d5-9863-b603320fbc9c', 'TBAT New LO 1', '{}', '9d1dc4b5-200f-4b44-8184-be6f07b34398', true, '2025-08-22 07:39:00.604617', 'auto', 23);
INSERT INTO public.learning_objectives VALUES ('92da33a5-628f-4714-94f5-84a9701f1fb8', 'TBAT use Laser Cutter to shape materials.', '{}', 'ccbb5bcf-4ffc-4a4e-81d7-170f7c004195', true, '2025-08-23 07:04:04.271945', 'auto', 28);
INSERT INTO public.learning_objectives VALUES ('d35fb33b-48f9-4f1e-ac02-99199ea2790a', 'TBAT Evaluate a product.', '{}', 'ccbb5bcf-4ffc-4a4e-81d7-170f7c004195', true, '2025-08-23 07:08:02.066991', 'auto', 31);
INSERT INTO public.learning_objectives VALUES ('b27b9105-964c-4ff0-bff1-60bdbdec6672', 'TBAT safely and carefully construct a product.', '{}', 'ccbb5bcf-4ffc-4a4e-81d7-170f7c004195', true, '2025-08-23 07:44:09.622087', 'auto', 32);
INSERT INTO public.learning_objectives VALUES ('8cf7749f-2daa-4601-8c1a-b534a138f8c0', 'TBAT use the design process to complete a project.', '{}', '4344d880-0604-496d-bc52-82d2978cf0fe', true, '2025-08-23 09:55:32.13614', 'auto', 33);
INSERT INTO public.learning_objectives VALUES ('4529d8aa-b73d-40a5-84eb-55bab9996c7e', 'TBAT Communicate a design.', '{}', '4344d880-0604-496d-bc52-82d2978cf0fe', true, '2025-08-23 09:56:08.051622', 'auto', 34);
INSERT INTO public.learning_objectives VALUES ('a94ac006-ac17-4951-9912-20a9d344c42c', 'TBAT use CAD in designing a model.', '{}', '4344d880-0604-496d-bc52-82d2978cf0fe', true, '2025-08-23 09:57:23.219827', 'auto', 35);


--
-- Data for Name: criteria; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.criteria VALUES ('d5d4607c-2797-46fa-af9e-60c60c34bf8a', '93fb9e04-3de0-4bc7-9d60-6a7445d5bee9', 'I can research user needs through interviews and questionnaires', true, '2025-08-18 18:40:42.630605', 'auto', 1);
INSERT INTO public.criteria VALUES ('92c64889-7a5d-4258-b7da-258eaca9ac39', '93fb9e04-3de0-4bc7-9d60-6a7445d5bee9', 'I can describe user needs in a specification', true, '2025-08-18 18:40:42.630605', 'auto', 2);
INSERT INTO public.criteria VALUES ('afe14dd6-7865-4948-9632-0f54f2fd7e30', 'e98989ef-2d1c-4ae5-9e51-17d8511a0926', 'I can brainstorm multiple creative ideas', true, '2025-08-18 18:40:42.630605', 'auto', 1);
INSERT INTO public.criteria VALUES ('f4d39dee-45d6-4215-9ed9-c1e2688130bc', 'e98989ef-2d1c-4ae5-9e51-17d8511a0926', 'I can sketch initial design concepts', true, '2025-08-18 18:40:42.630605', 'auto', 2);
INSERT INTO public.criteria VALUES ('90be5bd3-9c93-44e2-80f8-e17c94d6be7c', 'a765dd11-db6f-438e-9699-54d38d0a2c65', 'I can produce annotated sketches', true, '2025-08-18 18:40:42.630605', 'auto', 1);
INSERT INTO public.criteria VALUES ('512c30b3-c869-48a0-8a7a-9c9396216374', 'a765dd11-db6f-438e-9699-54d38d0a2c65', 'I can create 3D CAD models to communicate designs', true, '2025-08-18 18:40:42.630605', 'auto', 2);
INSERT INTO public.criteria VALUES ('911e9455-14ef-4c15-bc4d-7c30b7a4d4b5', '68859aea-52b1-4832-a421-469c0a9eb35f', 'I can describe the ferrous metals using defined properties.', true, '2025-08-19 07:03:03.958664', 'auto', 2);
INSERT INTO public.criteria VALUES ('6a8a41cd-51f6-4296-bc96-0e48aaac7a99', '68859aea-52b1-4832-a421-469c0a9eb35f', 'I can describe some uses of ferrous metals.', true, '2025-08-19 07:03:56.261319', 'auto', 3);
INSERT INTO public.criteria VALUES ('49ca1979-e3ff-4076-b7af-e7b0249cd60e', 'd35fb33b-48f9-4f1e-ac02-99199ea2790a', 'I can evaluate a product against criteria.', true, '2025-08-23 07:08:23.777149', 'auto', 1);
INSERT INTO public.criteria VALUES ('d4cdc09d-35ed-4e5f-ab6b-cb311055bb93', '4529d8aa-b73d-40a5-84eb-55bab9996c7e', 'I can draw a model in 2P perspective.', true, '2025-08-23 09:57:00.601256', 'auto', 1);
INSERT INTO public.criteria VALUES ('b33620c9-8e2e-479e-ade3-e5071f322231', '68859aea-52b1-4832-a421-469c0a9eb35f', 'I can define the properties of metals', false, '2025-08-19 07:02:34.404278', 'auto', 1);
INSERT INTO public.criteria VALUES ('23026b77-54f8-488f-b431-d956744388b0', '68859aea-52b1-4832-a421-469c0a9eb35f', 'I can describe the non-ferrous metals using defined properties.', false, '2025-08-19 07:04:53.395302', 'auto', 4);
INSERT INTO public.criteria VALUES ('f0b70d8b-d871-4a81-a525-7d7dc0aa0b2a', '68859aea-52b1-4832-a421-469c0a9eb35f', 'I can describe some uses of non-ferrous metals.', false, '2025-08-19 07:05:20.529568', 'auto', 5);
INSERT INTO public.criteria VALUES ('69b9d90e-4ceb-46c4-af6c-fef3d25883f0', '5d40ef73-5cfc-4171-8273-86437f7072af', 'I can list the properties of metals.', false, '2025-08-19 07:08:39.050427', 'auto', 1);
INSERT INTO public.criteria VALUES ('cca0da92-0965-41c3-a924-a4bcaca9cb32', '5d40ef73-5cfc-4171-8273-86437f7072af', 'I can describe the properties of ferrous metals..', true, '2025-08-19 07:08:59.535386', 'auto', 2);
INSERT INTO public.criteria VALUES ('71a487c2-74ce-4e41-9304-4a1fbaef0569', '5d40ef73-5cfc-4171-8273-86437f7072af', 'I can define some uses of ferrous metals.', true, '2025-08-19 07:09:13.763085', 'auto', 3);
INSERT INTO public.criteria VALUES ('01c5e125-8c4a-4ef7-8b88-275735810b8e', 'b4991280-3612-4d58-b57e-9e02900c6e8e', 'I can describe the properties of  non-ferrous metals.', true, '2025-08-19 07:13:03.897316', 'auto', 1);
INSERT INTO public.criteria VALUES ('8211fd9c-66b6-4853-a5c5-940e83da73a2', 'b4991280-3612-4d58-b57e-9e02900c6e8e', 'I can describe some uses of non-ferrous metals.', true, '2025-08-19 07:13:24.096868', 'auto', 2);
INSERT INTO public.criteria VALUES ('75d7dcb3-0bb6-4b22-99bf-80c6401301f4', '0f9aacef-2cd5-489c-b25b-f6cd4eec60ff', 'I can describe the impact of extraction.', true, '2025-08-19 07:15:13.610406', 'auto', 1);
INSERT INTO public.criteria VALUES ('83501d00-2100-4db0-89ba-ce658a6bd74f', '0f9aacef-2cd5-489c-b25b-f6cd4eec60ff', 'I can describe the impact of processing.', true, '2025-08-19 07:15:27.165189', 'auto', 2);
INSERT INTO public.criteria VALUES ('c2e5c6ed-97fb-4774-9fa6-a9ed6bcb680f', '0f9aacef-2cd5-489c-b25b-f6cd4eec60ff', 'I can describe the imapct of recycling and disposal.', true, '2025-08-19 07:15:44.544477', 'auto', 3);
INSERT INTO public.criteria VALUES ('f37e956d-d018-4b5f-88fa-4f60283df277', '75523d31-e7ed-4b66-9403-371a27653f24', 'I can define the vocab and key terms for energy generation.', true, '2025-08-20 14:13:35.86673', 'auto', 1);
INSERT INTO public.criteria VALUES ('5e27d44a-58ba-445e-acaa-a684562fa664', '75523d31-e7ed-4b66-9403-371a27653f24', 'I can define the vocab and key terms for energy storage.', true, '2025-08-20 14:14:08.945825', 'auto', 2);
INSERT INTO public.criteria VALUES ('8867ba13-1464-479f-9b69-d2cec07995c0', 'a14f4f1a-eaad-4665-b4e2-629f5fbac189', 'I can define the key terms used to describe ferrous and non-ferrous metals.', true, '2025-08-22 13:57:44.125391', 'auto', 1);
INSERT INTO public.criteria VALUES ('7231648c-9d90-4c12-bc7c-fe69232b801b', 'ff78c110-c7bd-4d53-a2f3-ca3c51d2564b', 'I can name the stages of the design process.', true, '2025-08-23 07:01:00.487511', 'auto', 1);
INSERT INTO public.criteria VALUES ('eadac641-09e7-4750-9435-4f36b0a1f37d', 'ff78c110-c7bd-4d53-a2f3-ca3c51d2564b', 'I can describe the stages of the design process.', true, '2025-08-23 07:01:12.645031', 'auto', 2);
INSERT INTO public.criteria VALUES ('ef11870e-6bbe-4071-843e-0d160d7b48be', '0e05c49a-3646-453f-96d1-9ac168b23f29', 'I can communicate a design using orthographic styles', true, '2025-08-23 07:02:57.64682', 'auto', 1);
INSERT INTO public.criteria VALUES ('a87aaa38-3bc0-42de-8f2e-891cebea076a', '0e05c49a-3646-453f-96d1-9ac168b23f29', 'I can communicate a design using isometric styles', true, '2025-08-23 07:03:15.537188', 'auto', 2);
INSERT INTO public.criteria VALUES ('4fe82345-2caa-4d1e-90e1-5153e9ef4877', '92da33a5-628f-4714-94f5-84a9701f1fb8', 'I can demonstrate knowledge of Laser Cutter safety.', true, '2025-08-23 07:04:43.548012', 'auto', 1);
INSERT INTO public.criteria VALUES ('3a8dc1df-31bb-4063-8c2a-9d81abdefd17', '92da33a5-628f-4714-94f5-84a9701f1fb8', 'I can operate the Laser Cutter to produce parts for a project.', true, '2025-08-23 07:05:10.884992', 'auto', 2);
INSERT INTO public.criteria VALUES ('ade1b073-615e-4885-8c92-d7c3822be671', '92da33a5-628f-4714-94f5-84a9701f1fb8', 'I can design cutting plan to minimise waste.', true, '2025-08-23 07:06:14.486335', 'auto', 3);





--
-- Data for Name: learning_objective_lesson_map; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.learning_objective_lesson_map VALUES ('93fb9e04-3de0-4bc7-9d60-6a7445d5bee9', '4c1f759d-800b-44d3-8ead-7b4703d10f39');
INSERT INTO public.learning_objective_lesson_map VALUES ('93fb9e04-3de0-4bc7-9d60-6a7445d5bee9', '1d763aeb-ed0a-4c20-a861-4bf93ad560cf');
INSERT INTO public.learning_objective_lesson_map VALUES ('e98989ef-2d1c-4ae5-9e51-17d8511a0926', '1d763aeb-ed0a-4c20-a861-4bf93ad560cf');
INSERT INTO public.learning_objective_lesson_map VALUES ('e98989ef-2d1c-4ae5-9e51-17d8511a0926', 'b2666768-8395-4c49-a62d-3ad4b08c2ff7');
INSERT INTO public.learning_objective_lesson_map VALUES ('a765dd11-db6f-438e-9699-54d38d0a2c65', 'b2666768-8395-4c49-a62d-3ad4b08c2ff7');
INSERT INTO public.learning_objective_lesson_map VALUES ('a765dd11-db6f-438e-9699-54d38d0a2c65', '41d3c5b6-7cb2-484e-880a-4ea344d33886');
INSERT INTO public.learning_objective_lesson_map VALUES ('68859aea-52b1-4832-a421-469c0a9eb35f', 'a00fbd1b-6cb9-4c84-a107-3a362f7c832b');
INSERT INTO public.learning_objective_lesson_map VALUES ('5d40ef73-5cfc-4171-8273-86437f7072af', '16179e33-c013-469b-ad9b-93251e196639');
INSERT INTO public.learning_objective_lesson_map VALUES ('b4991280-3612-4d58-b57e-9e02900c6e8e', 'a08fe7f5-8079-492c-9812-1d4a53b6fc45');
INSERT INTO public.learning_objective_lesson_map VALUES ('0f9aacef-2cd5-489c-b25b-f6cd4eec60ff', 'e61fe277-16b3-4c89-a0f5-375d751c8274');
INSERT INTO public.learning_objective_lesson_map VALUES ('ff78c110-c7bd-4d53-a2f3-ca3c51d2564b', '5c873966-2a45-4611-b293-7455fc305ddc');
INSERT INTO public.learning_objective_lesson_map VALUES ('0e05c49a-3646-453f-96d1-9ac168b23f29', '9ddcf921-e8c6-4913-8db8-c95a27b55329');
INSERT INTO public.learning_objective_lesson_map VALUES ('92da33a5-628f-4714-94f5-84a9701f1fb8', '91a8c86c-8172-4153-9dce-66ac815ac489');
INSERT INTO public.learning_objective_lesson_map VALUES ('d35fb33b-48f9-4f1e-ac02-99199ea2790a', '6f1064b8-b040-430e-97d3-c4187804e8d7');
INSERT INTO public.learning_objective_lesson_map VALUES ('b27b9105-964c-4ff0-bff1-60bdbdec6672', '0a12a4d8-e01e-4f0d-9645-c6b94cf07ae7');
INSERT INTO public.learning_objective_lesson_map VALUES ('68859aea-52b1-4832-a421-469c0a9eb35f', '4866d3d2-2232-401f-9561-c028cd024d72');
INSERT INTO public.learning_objective_lesson_map VALUES ('a14f4f1a-eaad-4665-b4e2-629f5fbac189', '4866d3d2-2232-401f-9561-c028cd024d72');
INSERT INTO public.learning_objective_lesson_map VALUES ('a14f4f1a-eaad-4665-b4e2-629f5fbac189', '95ef125e-c933-4fb1-9c81-f6fe6dd76ea5');
INSERT INTO public.learning_objective_lesson_map VALUES ('5d40ef73-5cfc-4171-8273-86437f7072af', '95ef125e-c933-4fb1-9c81-f6fe6dd76ea5');


--
-- Data for Name: nc_items; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.nc_items VALUES ('912b7a09-d47b-4986-88bf-7a171685c750', '5838d0c7-5c07-4cca-ae2e-0c93b29c3d3e', 'use research and exploration, such as the study of different cultures, to identify and understand user needs', 'design', true, '2025-08-18 18:40:42.598891', 'auto', 1);
INSERT INTO public.nc_items VALUES ('e57e1ef9-460d-4baf-a1c9-0f3348a256a4', '5838d0c7-5c07-4cca-ae2e-0c93b29c3d3e', 'identify and solve their own design problems and understand how to reformulate problems given to them', 'design', true, '2025-08-18 18:40:42.598891', 'auto', 2);
INSERT INTO public.nc_items VALUES ('87808005-9c70-4f3a-9b34-f6596c2e421e', '5838d0c7-5c07-4cca-ae2e-0c93b29c3d3e', 'develop specifications to inform the design of innovative, functional, appealing products that respond to needs in a variety of situations', 'design', true, '2025-08-18 18:40:42.598891', 'auto', 3);
INSERT INTO public.nc_items VALUES ('c872777b-dac2-4bb4-9623-26998b3be702', '5838d0c7-5c07-4cca-ae2e-0c93b29c3d3e', 'use a variety of approaches (for example biomimicry and user-centred design) to generate creative ideas and avoid stereotypical responses', 'design', true, '2025-08-18 18:40:42.598891', 'auto', 4);
INSERT INTO public.nc_items VALUES ('35495db0-940b-41aa-ac34-ba85aa1b8003', '5838d0c7-5c07-4cca-ae2e-0c93b29c3d3e', 'develop and communicate design ideas using annotated sketches, detailed plans, 3-D and mathematical modelling, oral and digital presentations and computer-based tools', 'design', true, '2025-08-18 18:40:42.598891', 'auto', 5);
INSERT INTO public.nc_items VALUES ('6c7951dd-c4df-4836-9b17-2900fabb1426', '5838d0c7-5c07-4cca-ae2e-0c93b29c3d3e', 'select from and use specialist tools, techniques, processes, equipment and machinery precisely, including computer-aided manufacture', 'make', true, '2025-08-18 18:40:42.598891', 'auto', 6);
INSERT INTO public.nc_items VALUES ('face21e6-331e-4249-80a0-0a56f8920460', '5838d0c7-5c07-4cca-ae2e-0c93b29c3d3e', 'select from and use a wider, more complex range of materials, components and ingredients, taking into account their properties', 'make', true, '2025-08-18 18:40:42.598891', 'auto', 7);
INSERT INTO public.nc_items VALUES ('073117aa-3035-4907-a7fa-0551207775fe', '5838d0c7-5c07-4cca-ae2e-0c93b29c3d3e', 'analyse the work of past and present professionals and others to develop and broaden their understanding', 'evaluate', true, '2025-08-18 18:40:42.598891', 'auto', 8);
INSERT INTO public.nc_items VALUES ('debc6db6-8756-48b8-8ae0-221c93a19119', '5838d0c7-5c07-4cca-ae2e-0c93b29c3d3e', 'investigate new and emerging technologies', 'evaluate', true, '2025-08-18 18:40:42.598891', 'auto', 9);
INSERT INTO public.nc_items VALUES ('10a0c838-5834-4f48-89e0-7acc8afe8049', '5838d0c7-5c07-4cca-ae2e-0c93b29c3d3e', 'test, evaluate and refine their ideas and products against a specification, taking into account the views of intended users and other interested groups', 'evaluate', true, '2025-08-18 18:40:42.598891', 'auto', 10);
INSERT INTO public.nc_items VALUES ('156fdc11-ec9f-4227-8058-d6ed98680b0e', '5838d0c7-5c07-4cca-ae2e-0c93b29c3d3e', 'understand developments in design and technology, its impact on individuals, society and the environment, and the responsibilities of designers, engineers and technologists', 'evaluate', true, '2025-08-18 18:40:42.598891', 'auto', 11);
INSERT INTO public.nc_items VALUES ('fac93080-1bb1-4337-a04d-4ffd44c573bf', '5838d0c7-5c07-4cca-ae2e-0c93b29c3d3e', 'understand and use the properties of materials and the performance of structural elements to achieve functioning solutions', 'technical knowledge', true, '2025-08-18 18:40:42.598891', 'auto', 12);
INSERT INTO public.nc_items VALUES ('cddc4253-1659-4743-bded-146f6e6d08ca', '5838d0c7-5c07-4cca-ae2e-0c93b29c3d3e', 'understand how more advanced mechanical systems used in their products enable changes in movement and force', 'technical knowledge', true, '2025-08-18 18:40:42.598891', 'auto', 13);
INSERT INTO public.nc_items VALUES ('740c796d-04b6-4827-9025-1a01d11d3354', '5838d0c7-5c07-4cca-ae2e-0c93b29c3d3e', 'understand how more advanced electrical and electronic systems can be powered and used in their products (for example, circuits with heat, light, sound and movement as inputs and outputs)', 'technical knowledge', true, '2025-08-18 18:40:42.598891', 'auto', 14);
INSERT INTO public.nc_items VALUES ('65877cfd-1274-463e-b134-3e9ed179cccb', '5838d0c7-5c07-4cca-ae2e-0c93b29c3d3e', 'apply computing and use electronics to embed intelligence in products that respond to inputs (for example, sensors), and control outputs (for example, actuators), using programmable components (for example, microcontrollers)', 'technical knowledge', true, '2025-08-18 18:40:42.598891', 'auto', 15);
INSERT INTO public.nc_items VALUES ('d38d7f09-4606-430d-bc0b-7b5a58924378', '5838d0c7-5c07-4cca-ae2e-0c93b29c3d3e', 'understand and apply the principles of nutrition and health', 'cooking and nutrition', true, '2025-08-18 18:40:42.598891', 'auto', 16);
INSERT INTO public.nc_items VALUES ('1a9b19f2-4458-4afd-b378-cacdacfe75f5', '5838d0c7-5c07-4cca-ae2e-0c93b29c3d3e', 'cook a repertoire of predominantly savoury dishes so that they are able to feed themselves and others a healthy and varied diet', 'cooking and nutrition', true, '2025-08-18 18:40:42.598891', 'auto', 17);
INSERT INTO public.nc_items VALUES ('77545e80-e9e3-42e2-a0cb-ccb463d3db2e', '5838d0c7-5c07-4cca-ae2e-0c93b29c3d3e', 'become competent in a range of cooking techniques (for example, selecting and preparing ingredients; using utensils and electrical equipment; applying heat in different ways; using awareness of taste, texture and smell to decide how to season dishes and combine ingredients; adapting and using their own recipes)', 'cooking and nutrition', true, '2025-08-18 18:40:42.598891', 'auto', 18);
INSERT INTO public.nc_items VALUES ('7f5715a5-afec-4c8f-a7fa-bd33584e0a80', '5838d0c7-5c07-4cca-ae2e-0c93b29c3d3e', 'understand the source, seasonality and characteristics of a broad range of ingredients', 'cooking and nutrition', true, '2025-08-18 18:40:42.598891', 'auto', 19);


--
-- PostgreSQL database dump complete
--

-- \unrestrict psGbeVYTKLk7t8pDqGgEqcorhpHCyDi80SvIeP7GDT4MDDacaeccRqzoAiqAf71

