PGDMP     ,                    z            postgres    14.2    14.1 	    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    13754    postgres    DATABASE     h   CREATE DATABASE postgres WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Portuguese_Brazil.1252';
    DROP DATABASE postgres;
                postgres    false            �           0    0    DATABASE postgres    COMMENT     N   COMMENT ON DATABASE postgres IS 'default administrative connection database';
                   postgres    false    3309                        3079    16384 	   adminpack 	   EXTENSION     A   CREATE EXTENSION IF NOT EXISTS adminpack WITH SCHEMA pg_catalog;
    DROP EXTENSION adminpack;
                   false            �           0    0    EXTENSION adminpack    COMMENT     M   COMMENT ON EXTENSION adminpack IS 'administrative functions for PostgreSQL';
                        false    2            �            1259    16495    safra    TABLE     ,  CREATE TABLE public.safra (
    cpf integer,
    profissao integer,
    educacao integer,
    cargo integer,
    renda integer,
    segmentacao integer,
    seguro integer,
    saldo_cc integer,
    investimentos numeric,
    produtos numeric,
    endividamento numeric,
    perc_ult_chq_3m money
);
    DROP TABLE public.safra;
       public         heap    postgres    false            �          0    16495    safra 
   TABLE DATA           �   COPY public.safra (cpf, profissao, educacao, cargo, renda, segmentacao, seguro, saldo_cc, investimentos, produtos, endividamento, perc_ult_chq_3m) FROM stdin;
    public          postgres    false    210   �       �      x������ � �     