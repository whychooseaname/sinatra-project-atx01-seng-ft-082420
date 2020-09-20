CREATE TABLE IF NOT EXISTS "cooks" ("id" integer PRIMARY KEY AUTOINCREMENT NOT NULL, "name" varchar);
CREATE TABLE sqlite_sequence(name,seq);
CREATE TABLE IF NOT EXISTS "dishes" ("id" integer PRIMARY KEY AUTOINCREMENT NOT NULL, "name" varchar, "image" varchar, "cook_id" integer, "expo_id" integer);
CREATE TABLE IF NOT EXISTS "expos" ("id" integer PRIMARY KEY AUTOINCREMENT NOT NULL, "name" varchar);
CREATE TABLE IF NOT EXISTS "schema_migrations" ("version" varchar NOT NULL PRIMARY KEY);
CREATE TABLE IF NOT EXISTS "ar_internal_metadata" ("key" varchar NOT NULL PRIMARY KEY, "value" varchar, "created_at" datetime(6) NOT NULL, "updated_at" datetime(6) NOT NULL);
INSERT INTO "schema_migrations" (version) VALUES
('20200918152018'),
('20200918152030'),
('20200918152037');


