
CREATE TABLE "public"."deliveries" ("id" serial NOT NULL, "order" integer NOT NULL, "location" text NOT NULL, PRIMARY KEY ("id") , FOREIGN KEY ("order") REFERENCES "public"."orders"("id") ON UPDATE restrict ON DELETE restrict);
