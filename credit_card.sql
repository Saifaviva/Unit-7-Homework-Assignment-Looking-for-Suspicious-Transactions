CREATE TABLE "credit_card" (
"card" VARCHAR(20),
"cardholder_id" int NOT NULL)

INSERT INTO credit_card VALUES
    (3517111172421930, 1),
    (4761049645711555811, 1),
    (4866761290278198714, 2),
    (675911140852, 2),
    (30078299053512, 3),
    (4263694062533017, 4),
    (584226564303, 4),
    (4276466390111, 5),
    (4268491956169254, 5),
    (3581345943543942, 6),
    (4159836738768855913, 6),
    (3516952396080247, 7),
    (4539990688484983, 7),
    (4834483169177062, 8),
    (30063281385429, 8),
    (30181963913340, 9),
    (4962915017023706562, 10),
    (4165305432349489280, 10),
    (213193946980303, 10),
    (180098539019105, 11),
    (4644008655884311378, 11),
    (4027907156459098, 11),
    (501879657465, 12),
    (5297187379298983, 12),
    (376027549341849, 12),
    (4711773125020499, 13),
    (5135837688671496, 13),
    (3561954487988605, 13),
    (5175947111814778, 14),
    (4723783028106084756, 15),
    (6500236164848279, 15),
    (503842928916, 16),
    (5570600642865857, 16),
    (5500708021555307, 16),
    (6011987562414062, 17),
    (4498002758300, 18),
    (344119623920892, 18),
    (4743204091443101526, 19),
    (5361779664174555, 19),
    (3561072557118696, 19),
    (3535651398328201, 20),
    (4506405265172173, 20),
    (4586962917519654607, 20),
    (4279104135293225293, 21),
    (501809222273, 22),
    (4741042733274, 23),
    (4188164051171486, 23),
    (4150721559116778, 23),
    (4681896441519, 24),
    (30142966699187, 24),
    (3582198969197591, 24),
    (4319653513507, 25),
    (372414832802279, 25);



CREATE TABLE "merchant" (
    "id" int   NOT NULL,
    "name" varchar   NOT NULL,
    "id_merchant_category" int   NOT NULL,
    CONSTRAINT "pk_merchant" PRIMARY KEY (
        "id"
     )
);

CREATE TABLE "merchant_category" (
    "id" int   NOT NULL,
    "name" varchar   NOT NULL,
    CONSTRAINT "pk_merchant_category" PRIMARY KEY (
        "id"
     )
);

CREATE TABLE "transaction" (
    "id" int   NOT NULL,
    "timestamp" date   NOT NULL,
    "amount" float   NOT NULL,
    "card" int   NOT NULL,
    "id_merchant" int   NOT NULL,
    CONSTRAINT "pk_transaction" PRIMARY KEY (
        "id"
     )
);

ALTER TABLE "credit_card" ADD CONSTRAINT "fk_credit_card_cardholder_id" FOREIGN KEY("cardholder_id")
REFERENCES "card_holder" ("id");

ALTER TABLE "merchant" ADD CONSTRAINT "fk_merchant_id_merchant_category" FOREIGN KEY("id_merchant_category")
REFERENCES "merchant_category" ("id");

ALTER TABLE "transaction" ADD CONSTRAINT "fk_transaction_card" FOREIGN KEY("card")
REFERENCES "credit_card" ("card");

ALTER TABLE "transaction" ADD CONSTRAINT "fk_transaction_id_merchant" FOREIGN KEY("id_merchant")
REFERENCES "merchant" ("id");


