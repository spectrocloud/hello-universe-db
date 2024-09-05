-- Copyright (c) Spectro Cloud
-- SPDX-License-Identifier: MPL-2.0

CREATE TABLE "counter" (
    "id" SERIAL PRIMARY KEY,
    "page" varchar(255),
    "date" timestamp NOT NULL,
    "browser" varchar(255),
    "os" varchar(255)
);