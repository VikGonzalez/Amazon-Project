-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/JuWDih
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.

-- develop model

CREATE TABLE "user" (
    "UserId" varchar(30)   NOT NULL,
    "ProfileName" varchar(30)   NOT NULL,
    CONSTRAINT "pk_user" PRIMARY KEY (
        "UserId"
     )
);

CREATE TABLE "product" (
    "ProductId" varchar(30)   NOT NULL,
    CONSTRAINT "pk_product" PRIMARY KEY (
        "ProductId"
     )
);

CREATE TABLE "review" (
    "Id" int   NOT NULL,
    "Score" varchar(30)   NOT NULL,
    "Summary" varchar(30)   NOT NULL,
    "Text" varchar(30)   NOT NULL,
    CONSTRAINT "pk_review" PRIMARY KEY (
        "Id"
     )
);

CREATE TABLE "user_product_review" (
    "UserId_ProductId" varchar(30)   NOT NULL,
    "UserId" varchar(30)   NOT NULL,
    "ProductId" varchar(30)   NOT NULL,
    "id" int   NOT NULL,
    CONSTRAINT "pk_user_product_review" PRIMARY KEY (
        "UserId_ProductId"
     )
);

ALTER TABLE "user_product_review" ADD CONSTRAINT "fk_user_product_review_UserId" FOREIGN KEY("UserId")
REFERENCES "user" ("UserId");

ALTER TABLE "user_product_review" ADD CONSTRAINT "fk_user_product_review_ProductId" FOREIGN KEY("ProductId")
REFERENCES "product" ("ProductId");

ALTER TABLE "user_product_review" ADD CONSTRAINT "fk_user_product_review_id" FOREIGN KEY("id")
REFERENCES "review" ("Id");



SELECT * FROM "user_product_review";
