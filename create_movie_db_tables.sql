CREATE TABLE "theater" (
  "theater_id" SERIAL,
  "tickets_available" Integer,
  "tickets_sold" Integer,
  PRIMARY KEY ("theater_id")
);

CREATE TABLE "customer" (
  "id" SERIAL,
  "first_name" VARCHAR(100),
  "last_name" VARCHAR(100),
  "ticket_id" Integer,
  PRIMARY KEY ("id")
);

CREATE TABLE "concessions" (
  "product_id" SERIAL,
  "product_name" VARCHAR(20),
  "price" NUMERIC(4,2),
  PRIMARY KEY ("product_id")
);

CREATE TABLE "movie" (
  "movie_id" SERIAL,
  "movie_title" VARCHAR(40),
  "movie_time" TIME,
  "ticket_id" Integer,
  "theater_id" Integer,
  PRIMARY KEY ("movie_id")
);

CREATE TABLE "ticket" (
  "ticket_id" SERIAL,
  "ticket_price" NUMERIC(4,2),
  "movie_id" Integer,
  PRIMARY KEY ("ticket_id"),
  foreign key ("movie_id") references movie(movie_id)
);
