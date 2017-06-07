
-- MySQL 2 PostgreSQL dump

SET client_encoding = 'UTF8';
SET standard_conforming_strings = off;
SET check_function_bodies = false;
SET client_min_messages = warning;

DROP SEQUENCE IF EXISTS "oauth_access_tokens_id_seq" CASCADE;
CREATE SEQUENCE "oauth_access_tokens_id_seq" INCREMENT BY 1
                                  NO MAXVALUE NO MINVALUE CACHE 1;
SELECT pg_catalog.setval('"oauth_access_tokens_id_seq"', 37, true);

-- Table: oauth_access_tokens
DROP TABLE IF EXISTS "oauth_access_tokens" CASCADE;
CREATE TABLE "oauth_access_tokens" (
  "id" integer DEFAULT nextval('"oauth_access_tokens_id_seq"'::regclass) NOT NULL,
  "access_token" character varying(256),
  "expires" timestamp without time zone,
  "scope" character varying(255),
  "client_id" integer,
  "user_id" integer
)
WITHOUT OIDS;


DROP SEQUENCE IF EXISTS "oauth_authorization_codes_id_seq" CASCADE;
CREATE SEQUENCE "oauth_authorization_codes_id_seq" INCREMENT BY 1
                                  NO MAXVALUE NO MINVALUE CACHE 1;
SELECT pg_catalog.setval('"oauth_authorization_codes_id_seq"', 16, true);

-- Table: oauth_authorization_codes
DROP TABLE IF EXISTS "oauth_authorization_codes" CASCADE;
CREATE TABLE "oauth_authorization_codes" (
  "id" integer DEFAULT nextval('"oauth_authorization_codes_id_seq"'::regclass) NOT NULL,
  "authorization_code" character varying(256),
  "expires" timestamp without time zone,
  "redirect_uri" character varying(2000),
  "scope" character varying(255),
  "client_id" integer,
  "user_id" integer
)
WITHOUT OIDS;


DROP SEQUENCE IF EXISTS "oauth_clients_id_seq" CASCADE;
CREATE SEQUENCE "oauth_clients_id_seq" INCREMENT BY 1
                                  NO MAXVALUE NO MINVALUE CACHE 1;
SELECT pg_catalog.setval('"oauth_clients_id_seq"', 2, true);

-- Table: oauth_clients
DROP TABLE IF EXISTS "oauth_clients" CASCADE;
CREATE TABLE "oauth_clients" (
  "id" integer DEFAULT nextval('"oauth_clients_id_seq"'::regclass) NOT NULL,
  "name" character varying(255),
  "client_id" character varying(80),
  "client_secret" character varying(80),
  "redirect_uri" character varying(2000),
  "grant_types" character varying(80),
  "scope" character varying(255),
  "user_id" integer
)
WITHOUT OIDS;


DROP SEQUENCE IF EXISTS "oauth_refresh_tokens_id_seq" CASCADE;
CREATE SEQUENCE "oauth_refresh_tokens_id_seq" INCREMENT BY 1
                                  NO MAXVALUE NO MINVALUE CACHE 1;
SELECT pg_catalog.setval('"oauth_refresh_tokens_id_seq"', 27, true);

-- Table: oauth_refresh_tokens
DROP TABLE IF EXISTS "oauth_refresh_tokens" CASCADE;
CREATE TABLE "oauth_refresh_tokens" (
  "id" integer DEFAULT nextval('"oauth_refresh_tokens_id_seq"'::regclass) NOT NULL,
  "refresh_token" character varying(256),
  "expires" timestamp without time zone,
  "scope" character varying(255),
  "client_id" integer,
  "user_id" integer
)
WITHOUT OIDS;


DROP SEQUENCE IF EXISTS "oauth_scopes_id_seq" CASCADE;
CREATE SEQUENCE "oauth_scopes_id_seq" INCREMENT BY 1
                                  NO MAXVALUE NO MINVALUE CACHE 1;
SELECT pg_catalog.setval('"oauth_scopes_id_seq"', 2, true);

-- Table: oauth_scopes
DROP TABLE IF EXISTS "oauth_scopes" CASCADE;
CREATE TABLE "oauth_scopes" (
  "id" integer DEFAULT nextval('"oauth_scopes_id_seq"'::regclass) NOT NULL,
  "scope" character varying(80),
  "is_default" boolean
)
WITHOUT OIDS;


DROP SEQUENCE IF EXISTS "users_id_seq" CASCADE;
CREATE SEQUENCE "users_id_seq" INCREMENT BY 1
                                  NO MAXVALUE NO MINVALUE CACHE 1;
SELECT pg_catalog.setval('"users_id_seq"', 2, true);

-- Table: users
DROP TABLE IF EXISTS "users" CASCADE;
CREATE TABLE "users" (
  "id" integer DEFAULT nextval('"users_id_seq"'::regclass) NOT NULL,
  "username" character varying(32),
  "password" character varying(32),
  "scope" character varying(255)
)
WITHOUT OIDS;


--
-- Data for Name: oauth_access_tokens; Type: TABLE DATA;
--

INSERT INTO oauth_access_tokens (id, access_token, expires, scope, client_id, user_id) VALUES
(1, '81b011b7f3a903f4e30a19988c8985a16f22d64f', '2016-05-14 19:09:56', NULL, NULL, NULL),
(2, '35d35de511f004fa4132fff79cf0bcf9f03f1c49', '2016-05-14 19:10:34', NULL, NULL, NULL),
(3, 'f70252ff1b57493a5eaf27212b72cd24f12cf764', '2016-05-14 19:12:30', NULL, NULL, 1),
(4, 'aefdf36e9ff2947f121e15cbe2680fc309ebd945', '2016-05-14 19:17:06', NULL, NULL, NULL),
(5, '40898bede94699b0385878c6d37d0284e59e2abf', '2016-05-14 19:17:25', NULL, NULL, NULL),
(6, '4b1d4673bda41926c065a9acb0b3e7bb31f5ea24', '2016-05-14 19:18:04', NULL, NULL, NULL),
(7, '0143e8f0d9f3ccc43c62aa87c38c40f23a5e9ba4', '2016-05-14 19:19:50', NULL, NULL, NULL),
(8, '8c5234b1372c2b78b4d96f3b6f5db8932fa29762', '2016-05-14 19:25:40', NULL, NULL, NULL),
(9, '61fe2c5b0faf9ff96334356b1527ba73b190fa3d', '2016-05-14 19:26:25', NULL, NULL, NULL),
(10, 'b6c9212f29909ec5db9dbeaa4e80f71b507df37f', '2016-05-14 19:27:31', NULL, NULL, 1),
(11, '4185ab5b52452ae295c3011f04c8c13c4115d325', '2016-05-14 19:28:36', NULL, NULL, 1),
(12, '253734e26e1ec8d7389d23458eedf06d6cb50392', '2016-05-14 19:30:06', NULL, 1, 1),
(13, '8161e39caa925cc069e0e709de840fd30be9b7eb', '2016-05-14 19:31:30', NULL, 1, 1),
(14, 'a602543f6bdd6092779939bf1de2299a905dbfec', '2016-05-14 19:31:55', NULL, 1, 1),
(15, '25263fd984cdb089b866608e91c5c17fbc7662a9', '2016-05-14 19:32:07', NULL, 1, 1),
(16, '009adb36c0b2c8d4269676908562fe0a5f0169c3', '2016-05-14 19:32:40', NULL, 1, 1),
(17, '11e3209ea6a793011f7296d566840edf20ac8cd9', '2016-05-14 19:34:00', NULL, 1, 1),
(18, '8226f459dd246a9d1b66ae6671572c38e03a5c57', '2016-05-14 19:34:38', NULL, 1, 1),
(19, '1ca9fe68115a5ecb441af33d8b29ed8fd4aa20d0', '2016-05-14 19:36:38', 'consultant', 1, 1),
(20, '15397cb9904a954a31e162f7635adffb554293ef', '2016-05-14 19:37:14', 'consultant', 1, 1),
(21, '691199101e65b704befca81cb811800aaa8e2ab5', '2016-05-14 19:37:17', 'consultant', 1, 1),
(22, '9c9a78392f164542071d3d3ec8bf8e99e8909ffa', '2016-05-14 19:46:13', NULL, 1, 1),
(23, '06a158438f7685f77b514dd79349af0748a0ba4b', '2016-05-14 19:47:08', NULL, 1, 1),
(24, '2ed79b5743f81418a8da0c5825d67e36be570466', '2016-05-14 19:47:27', NULL, 1, 1),
(25, '4f65fe82d3f9f167328646d710d080f3b270990b', '2016-05-14 19:48:24', NULL, 1, 1),
(26, '0327759746fe5be483943c64eaa018de2d1b72b8', '2016-05-14 19:48:38', NULL, 1, 1),
(27, '9000675b1e23427d7933ea42865605464d1d5600', '2016-05-14 19:51:06', NULL, 1, 1),
(28, 'e3476d9a25cde4ba533c32b4fbd172f55adef84b', '2016-05-14 19:52:41', NULL, 1, 1),
(29, 'a6116f80d7e174e25922912aaed3e5f5972bdfc0', '2016-05-14 19:54:47', NULL, 1, 1),
(30, '21d6074e3b1657f088ea233ece902022e8161910', NULL, NULL, 1, 1),
(31, '83a3a6e42e160716f4c534d1c61f87d78bdf2204', '2016-05-14 19:59:00', NULL, 1, 1),
(32, 'dfc39e4194313191c13a86cbc9d34ca7ffda8b49', '2016-05-14 19:59:03', 'consultant', 1, 1),
(33, '635399997087ef64b813957e20b542ae407c229f', '2016-05-14 19:59:05', NULL, 1, 1),
(34, '4095857d971198669fe3a92a9be2d9f08fa4b09b', '2016-05-14 19:59:10', NULL, 1, 1),
(35, 'b36eaf38995433675531c99abb977199a1b36530', NULL, NULL, 1, 1),
(36, '5a815d1bf7f87cd9465e4599876ce32acfa8bdad', '2016-05-14 20:14:11', NULL, 1, 1);



--
-- Data for Name: oauth_authorization_codes; Type: TABLE DATA;
--

INSERT INTO oauth_authorization_codes (id, authorization_code, expires, redirect_uri, scope, client_id, user_id) VALUES
(1, NULL, '2016-05-14 18:45:02', NULL, NULL, NULL, 1),
(2, NULL, '2016-05-14 18:45:10', NULL, NULL, NULL, 1),
(3, NULL, '2016-05-14 18:45:15', NULL, NULL, NULL, 1),
(4, NULL, '2016-05-14 18:45:41', NULL, NULL, NULL, 1),
(5, NULL, '2016-05-14 18:46:59', NULL, NULL, NULL, 1),
(6, NULL, '2016-05-14 18:47:22', NULL, NULL, NULL, 1),
(7, NULL, '2016-05-14 18:51:16', NULL, NULL, NULL, 1),
(8, NULL, '2016-05-14 18:52:10', NULL, NULL, NULL, 1),
(9, NULL, '2016-05-14 18:52:33', NULL, NULL, NULL, 1),
(10, NULL, '2016-05-14 18:54:20', NULL, NULL, 1, 1),
(11, NULL, '2016-05-14 18:56:08', NULL, NULL, 1, 1),
(12, NULL, '2016-05-14 18:57:44', NULL, NULL, 1, 1),
(13, '513418e2d3a7f6ab72a63100a298d9ddb8ad0b8e', '2016-05-14 18:59:49', NULL, NULL, 1, 1),
(14, '993fa8fe3be5691baa73801e31420f406b1516f8', '2016-05-14 19:04:08', NULL, NULL, 1, 1),
(15, 'e78351c1b13dc09a3c51d24123b2dfb2bf178306', '2016-05-14 19:04:25', NULL, NULL, 1, 1);
(16, 'e78351c1b13dc09a3c51d2412undjsb2bf178306', '2017-06-14 19:04:25', NULL, NULL, 1, 1);



--
-- Data for Name: oauth_clients; Type: TABLE DATA;
--

INSERT INTO oauth_clients (id, name, client_id, client_secret, redirect_uri, grant_types, scope, user_id) VALUES
(1, NULL, 'democlient', 'democlientsecret', 'http://localhost/cb', NULL, NULL, 1);


--
-- Data for Name: oauth_refresh_tokens; Type: TABLE DATA;
--

INSERT INTO oauth_refresh_tokens (id, refresh_token, expires, scope, client_id, user_id) VALUES
(1, '6beb7f8b4b7ab60fe123e0430a3f7081da486152', '2016-05-28 18:09:56', NULL, NULL, NULL),
(2, '5dcdbd119a19f3655cc8e247c2f5165822d24399', '2016-05-28 18:10:34', NULL, NULL, NULL),
(3, '3879deb38e38a12a5f5f75ecd142cfcdad00384b', '2016-05-28 18:17:06', NULL, NULL, NULL),
(4, '51021e085ceb17f66701b3f736a1150eadf89ae1', '2016-05-28 18:17:25', NULL, NULL, NULL),
(5, '6658a45a863123535b5331898aa6da44bc352379', '2016-05-28 18:18:04', NULL, NULL, NULL),
(6, 'c28a74b985cc5d95a71d1344c91f40a0e24fc19b', '2016-05-28 18:19:50', NULL, 1, NULL),
(7, '73c49f0adb6ebcb1903245653bb2377ec5dcd31e', '2016-05-28 18:25:40', NULL, 1, NULL),
(8, 'bd5a641e7dce63a11c34a7740a74cf7e1223a1da', '2016-05-28 18:26:25', NULL, 1, NULL),
(9, 'f033a1cc559762ad8ba05244054a8f465a3b8b28', '2016-05-28 18:27:31', NULL, 1, 1),
(10, 'bb67c127cd9653899089eea0938e0da97372056d', '2016-05-28 18:28:36', NULL, 1, 1),
(11, '0e9f3e2dfd02205c7dba197cf54c1cff432ea6fd', '2016-05-28 18:30:06', NULL, 1, 1),
(12, '5b05a19d83ffb4f0559e9df464983deeae87e486', '2016-05-28 18:31:30', NULL, 1, 1),
(13, '929df161fe9921a0e4750de3c532036f99e40fe7', '2016-05-28 18:31:55', NULL, 1, 1),
(14, 'd96008566a2e84aecb403d869e2ea362f88221fc', '2016-05-28 18:32:07', NULL, 1, 1),
(15, 'f4f1a52886d564aa80fcae8eafcabef579a1feb0', '2016-05-28 18:32:40', NULL, 1, 1),
(16, 'd7df4d8bf5472131d3e5d032b5884c65b9a2f65a', '2016-05-28 18:34:00', NULL, 1, 1),
(20, '8ab0c52713e3cb055d7bab949d34806a2807d084', '2016-05-28 18:37:17', 'consultant', 1, 1),
(21, '2b11b4e4559a42f2d9ccbdf7b1ba4c83b79f015e', '2016-05-28 18:47:27', NULL, 1, 1),
(22, '2dfd5a0303b1b7444445fd82287076bcdd535e44', NULL, NULL, 1, 1),
(24, '59d66d169923ae3c26bcccbe9b2d893279efd62e', '2016-05-28 18:59:03', 'consultant', 1, 1),
(25, 'ce3a313e9a98c9cbbe80b0b243d3f9f19d5bb1cb', NULL, NULL, 1, 1),
(26, 'aacfcc24f97b0a8f4455d7c67017a72159d78f79', '2016-05-28 19:14:11', NULL, 1, 1);


--
-- Data for Name: oauth_scopes; Type: TABLE DATA;
--

INSERT INTO oauth_scopes (id, scope, is_default) VALUES
(1, 'profile', NULL);


--
-- Data for Name: users; Type: TABLE DATA;
--

INSERT INTO users (id, username, password, scope) VALUES
(1, 'admin', 'admin', 'profile');

ALTER TABLE "oauth_access_tokens" ADD CONSTRAINT "Noneoauth_access_tokens_id_pkey" PRIMARY KEY("id");
DROP INDEX IF EXISTS "Noneoauth_access_tokens_id" CASCADE;
CREATE UNIQUE INDEX "Noneoauth_access_tokens_id" ON "oauth_access_tokens" ("id");
DROP INDEX IF EXISTS "Noneoauth_access_tokens_id" CASCADE;
CREATE UNIQUE INDEX "Noneoauth_access_tokens_id" ON "oauth_access_tokens" ("id");
DROP INDEX IF EXISTS "Noneoauth_access_tokens_client_id" CASCADE;
CREATE INDEX "Noneoauth_access_tokens_client_id" ON "oauth_access_tokens" ("client_id");
DROP INDEX IF EXISTS "Noneoauth_access_tokens_user_id" CASCADE;
CREATE INDEX "Noneoauth_access_tokens_user_id" ON "oauth_access_tokens" ("user_id");ALTER TABLE "oauth_authorization_codes" ADD CONSTRAINT "Noneoauth_authorization_codes_id_pkey" PRIMARY KEY("id");
DROP INDEX IF EXISTS "Noneoauth_authorization_codes_id" CASCADE;
CREATE UNIQUE INDEX "Noneoauth_authorization_codes_id" ON "oauth_authorization_codes" ("id");
DROP INDEX IF EXISTS "Noneoauth_authorization_codes_id" CASCADE;
CREATE UNIQUE INDEX "Noneoauth_authorization_codes_id" ON "oauth_authorization_codes" ("id");
DROP INDEX IF EXISTS "Noneoauth_authorization_codes_client_id" CASCADE;
CREATE INDEX "Noneoauth_authorization_codes_client_id" ON "oauth_authorization_codes" ("client_id");
DROP INDEX IF EXISTS "Noneoauth_authorization_codes_user_id" CASCADE;
CREATE INDEX "Noneoauth_authorization_codes_user_id" ON "oauth_authorization_codes" ("user_id");ALTER TABLE "oauth_clients" ADD CONSTRAINT "Noneoauth_clients_id_pkey" PRIMARY KEY("id");
DROP INDEX IF EXISTS "Noneoauth_clients_id" CASCADE;
CREATE UNIQUE INDEX "Noneoauth_clients_id" ON "oauth_clients" ("id");
DROP INDEX IF EXISTS "Noneoauth_clients_id" CASCADE;
CREATE UNIQUE INDEX "Noneoauth_clients_id" ON "oauth_clients" ("id");
DROP INDEX IF EXISTS "Noneoauth_clients_user_id" CASCADE;
CREATE INDEX "Noneoauth_clients_user_id" ON "oauth_clients" ("user_id");ALTER TABLE "oauth_refresh_tokens" ADD CONSTRAINT "Noneoauth_refresh_tokens_id_pkey" PRIMARY KEY("id");
DROP INDEX IF EXISTS "Noneoauth_refresh_tokens_id" CASCADE;
CREATE UNIQUE INDEX "Noneoauth_refresh_tokens_id" ON "oauth_refresh_tokens" ("id");
DROP INDEX IF EXISTS "Noneoauth_refresh_tokens_id" CASCADE;
CREATE UNIQUE INDEX "Noneoauth_refresh_tokens_id" ON "oauth_refresh_tokens" ("id");
DROP INDEX IF EXISTS "Noneoauth_refresh_tokens_client_id" CASCADE;
CREATE INDEX "Noneoauth_refresh_tokens_client_id" ON "oauth_refresh_tokens" ("client_id");
DROP INDEX IF EXISTS "Noneoauth_refresh_tokens_user_id" CASCADE;
CREATE INDEX "Noneoauth_refresh_tokens_user_id" ON "oauth_refresh_tokens" ("user_id");ALTER TABLE "oauth_scopes" ADD CONSTRAINT "Noneoauth_scopes_id_pkey" PRIMARY KEY("id");
DROP INDEX IF EXISTS "Noneoauth_scopes_id" CASCADE;
CREATE UNIQUE INDEX "Noneoauth_scopes_id" ON "oauth_scopes" ("id");
DROP INDEX IF EXISTS "Noneoauth_scopes_id" CASCADE;
CREATE UNIQUE INDEX "Noneoauth_scopes_id" ON "oauth_scopes" ("id");ALTER TABLE "users" ADD CONSTRAINT "Noneusers_id_pkey" PRIMARY KEY("id");
DROP INDEX IF EXISTS "Noneusers_id" CASCADE;
CREATE UNIQUE INDEX "Noneusers_id" ON "users" ("id");
DROP INDEX IF EXISTS "Noneusers_id" CASCADE;
CREATE UNIQUE INDEX "Noneusers_id" ON "users" ("id");ALTER TABLE "oauth_access_tokens" ADD FOREIGN KEY ("client_id")
            REFERENCES "oauth_clients"(id);
ALTER TABLE "oauth_access_tokens" ADD FOREIGN KEY ("user_id")
            REFERENCES "users"(id);ALTER TABLE "oauth_authorization_codes" ADD FOREIGN KEY ("client_id")
            REFERENCES "oauth_clients"(id);
ALTER TABLE "oauth_authorization_codes" ADD FOREIGN KEY ("user_id")
            REFERENCES "users"(id);ALTER TABLE "oauth_clients" ADD FOREIGN KEY ("user_id")
            REFERENCES "users"(id);ALTER TABLE "oauth_refresh_tokens" ADD FOREIGN KEY ("client_id")
            REFERENCES "oauth_clients"(id);
ALTER TABLE "oauth_refresh_tokens" ADD FOREIGN KEY ("user_id")
            REFERENCES "users"(id);