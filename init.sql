CREATE TABLE "counter" (
    "id" SERIAL PRIMARY KEY,
    "date" timestamp NOT NULL,
    "browser" varchar(255),
    "os" varchar(255)
);