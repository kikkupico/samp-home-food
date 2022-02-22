SET check_function_bodies = false;
CREATE TABLE public.dishes (
    id integer NOT NULL,
    name text NOT NULL,
    ingredients text NOT NULL,
    veg boolean NOT NULL,
    price numeric NOT NULL,
    available boolean NOT NULL
);
CREATE SEQUENCE public.dishes_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
ALTER SEQUENCE public.dishes_id_seq OWNED BY public.dishes.id;
CREATE TABLE public.orders (
    id integer NOT NULL,
    name text NOT NULL,
    address text NOT NULL,
    phone text NOT NULL,
    status text NOT NULL
);
CREATE SEQUENCE public.orders_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
ALTER SEQUENCE public.orders_id_seq OWNED BY public.orders.id;
ALTER TABLE ONLY public.dishes ALTER COLUMN id SET DEFAULT nextval('public.dishes_id_seq'::regclass);
ALTER TABLE ONLY public.orders ALTER COLUMN id SET DEFAULT nextval('public.orders_id_seq'::regclass);
ALTER TABLE ONLY public.dishes
    ADD CONSTRAINT dishes_pkey PRIMARY KEY (id);
ALTER TABLE ONLY public.orders
    ADD CONSTRAINT orders_pkey PRIMARY KEY (id);
