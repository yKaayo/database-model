CREATE TABLE pais (
    id_pais   NUMBER PRIMARY KEY,
    nome_pais VARCHAR(30) NOT NULL
);

CREATE TABLE estado (
    id_etado    NUMBER PRIMARY KEY,
    nome_estado VARCHAR(30) NOT NULL,
    id_pais     NUMBER
);

ALTER TABLE estado
    ADD CONSTRAINT fk_estado FOREIGN KEY ( id_pais )
        REFERENCES pais ( id_pais );

CREATE TABLE cidade (
    id_cidade   NUMBER PRIMARY KEY,
    nome_cidade VARCHAR(30) NOT NULL,
    id_estado   NUMBER
);

ALTER TABLE cidade
    ADD CONSTRAINT fk_cidade FOREIGN KEY ( id_estado )
        REFERENCES estado ( id_estado );

CREATE TABLE bairro (
    id_bairro   NUMBER PRIMARY KEY,
    nome_bairro VARCHAR(30) NOT NULL,
    id_cidade   NUMBER
);

ALTER TABLE bairro
    ADD CONSTRAINT fk_bairro FOREIGN KEY ( id_cidade )
        REFERENCES cidade ( id_cidade );

CREATE TABLE endereco (
    id_endereco   NUMBER PRIMARY KEY,
    nome_endereco VARCHAR(30) NOT NULL,
    referencia    VARCHAR(50),
    cep           NUMBER NOT NULL,
    numero        NUMBER NOT NULL,
    id_bairro     NUMBER
);

ALTER TABLE endereco
    ADD CONSTRAINT fk_endereco FOREIGN KEY ( id_bairro )
        REFERENCES bairro ( id_bairro );

CREATE TABLE tipo_logadouro (
    id_tipo_log   NUMBER PRIMARY KEY,
    descricao_log VARCHAR(50) NOT NULL
);

CREATE TABLE cliente (
    id_cliente         NUMBER PRIMARY KEY,
    nome               VARCHAR(50) NOT NULL,
    data_de_nascimento DATE NOT NULL,
    cpf_cnpj           NUMBER NOT NULL
);

CREATE TABLE tipo_cliente (
    id_tipo_cliente NUMBER PRIMARY KEY,
    descricao_tipo  VARCHAR(50) NOT NULL
);

CREATE TABLE genero (
    id_genero        NUMBER PRIMARY KEY,
    descricao_genero VARCHAR(30) NOT NULL
);
