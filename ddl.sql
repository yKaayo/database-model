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

ALTER TABLE tipo_logadouro
    ADD CONSTRAINT fk_tipo_logadouro FOREIGN KEY ( id_endereco )
        REFERENCES endereco ( id_endereco );

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

ALTER TABLE tipo_cliente
    ADD CONSTRAINT fk_tipo_cliente FOREIGN KEY ( id_cliente )
        REFERENCES cliente ( id_cliente );

CREATE TABLE genero (
    id_genero        NUMBER PRIMARY KEY,
    descricao_genero VARCHAR(30) NOT NULL
);

ALTER TABLE genero
    ADD CONSTRAINT fk_genero FOREIGN KEY ( id_cliente )
        REFERENCES cliente ( id_cliente );

####

CREATE TABLE pedido (
    cod_pedido      NUMBER PRIMARY KEY,
    data            DATE NOT NULL,
);

CREATE TABLE funcionario (
    cod_funcionario       NUMBER PRIMARY KEY,
    nome                  VARCHAR(30) NOT NULL,
    data_cadastro         DATE NOT NULL
);

CREATE TABLE cargo (
    cod_cargo       NUMBER PRIMARY KEY,
    nome            VARCHAR(30) NOT NULL
);

CREATE TABLE item_pedido (
    quantidade       NUMBER NOT NULL,
    valor_unitario   NUMBER NOT NULL,
    valor_total      NUMBER NOT NULL
);

CREATE TABLE produto (
    cod_produto      NUMBER PRIMARY KEY,
    descricao        VARCHAR(50) NOT NULL,
);

CREATE TABLE tipo (
    cod_tipo      NUMBER PRIMARY KEY,
    descricao     VARCHAR(50) NOT NULL,
);
