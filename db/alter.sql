CREATE SEQUENCE public."Users_UID_seq";

ALTER SEQUENCE public."Users_UID_seq"
    OWNER TO ci4_blog_user;

CREATE TABLE public."Users"
(
    "UID" bigint NOT NULL DEFAULT nextval('"Users_UID_seq"'::regclass),
    "Name" character varying(255),
    "Email" character varying(255),
    "Password" character varying(50),
    PRIMARY KEY ("UID")
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public."Users"
    OWNER to ci4_blog_user;

ALTER TABLE IF EXISTS public."Users"
    ADD COLUMN "CreatedAt" timestamp without time zone DEFAULT now();