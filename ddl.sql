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

###

CREATE SEQUENCE SO_MODELO_PEDIDO;

INSERT INTO pais (id_pais, nome_pais) VALUES (so_modelo_pedido.nextval, 'Brasil'); COMMIT;
INSERT INTO pais (id_pais, nome_pais) VALUES (so_modelo_pedido.nextval, 'Portugal'); COMMIT;
INSERT INTO pais (id_pais, nome_pais) VALUES (so_modelo_pedido.nextval, 'Marrocos'); COMMIT;
INSERT INTO pais (id_pais, nome_pais) VALUES (so_modelo_pedido.nextval, 'Rússia'); COMMIT;
INSERT INTO pais (id_pais, nome_pais) VALUES (so_modelo_pedido.nextval, 'Reino Unido'); COMMIT;

SELECT * FROM pais;



INSERT INTO estado (id_estado, nome_estado, id_pais) VALUES (so_modelo_pedido.nextval, 'São Paulo', 1); COMMIT;
INSERT INTO estado (id_estado, nome_estado, id_pais) VALUES (so_modelo_pedido.nextval, 'Minas Gerais', 1); COMMIT;
INSERT INTO estado (id_estado, nome_estado, id_pais) VALUES (so_modelo_pedido.nextval, 'Santa Catarina', 1); COMMIT;
INSERT INTO estado (id_estado, nome_estado, id_pais) VALUES (so_modelo_pedido.nextval, 'Bahia', 1); COMMIT;
INSERT INTO estado (id_estado, nome_estado, id_pais) VALUES (so_modelo_pedido.nextval, 'Amazônia', 1); COMMIT;

INSERT INTO estado (id_estado, nome_estado, id_pais) VALUES (so_modelo_pedido.nextval, 'Faro', 2); COMMIT;
INSERT INTO estado (id_estado, nome_estado, id_pais) VALUES (so_modelo_pedido.nextval, 'Lisbon', 2); COMMIT;
INSERT INTO estado (id_estado, nome_estado, id_pais) VALUES (so_modelo_pedido.nextval, 'Guarda', 2); COMMIT;
INSERT INTO estado (id_estado, nome_estado, id_pais) VALUES (so_modelo_pedido.nextval, 'Vila Real', 2); COMMIT;
INSERT INTO estado (id_estado, nome_estado, id_pais) VALUES (so_modelo_pedido.nextval, 'Porto', 2); COMMIT;

INSERT INTO estado (id_estado, nome_estado, id_pais) VALUES (so_modelo_pedido.nextval, 'Safi', 3); COMMIT;
INSERT INTO estado (id_estado, nome_estado, id_pais) VALUES (so_modelo_pedido.nextval, 'Agadir', 3); COMMIT;
INSERT INTO estado (id_estado, nome_estado, id_pais) VALUES (so_modelo_pedido.nextval, 'Tata', 3); COMMIT;
INSERT INTO estado (id_estado, nome_estado, id_pais) VALUES (so_modelo_pedido.nextval, 'Oujda', 3); COMMIT;
INSERT INTO estado (id_estado, nome_estado, id_pais) VALUES (so_modelo_pedido.nextval, 'Rabat', 3); COMMIT;

INSERT INTO estado (id_estado, nome_estado, id_pais) VALUES (so_modelo_pedido.nextval, 'Tuva', 4); COMMIT;
INSERT INTO estado (id_estado, nome_estado, id_pais) VALUES (so_modelo_pedido.nextval, 'Cacássia', 4); COMMIT;
INSERT INTO estado (id_estado, nome_estado, id_pais) VALUES (so_modelo_pedido.nextval, 'Udmúrtia', 4); COMMIT;
INSERT INTO estado (id_estado, nome_estado, id_pais) VALUES (so_modelo_pedido.nextval, 'Chechênia', 4); COMMIT;
INSERT INTO estado (id_estado, nome_estado, id_pais) VALUES (so_modelo_pedido.nextval, 'Komi', 4); COMMIT;

INSERT INTO estado (id_estado, nome_estado, id_pais) VALUES (so_modelo_pedido.nextval, 'Highland', 5); COMMIT;
INSERT INTO estado (id_estado, nome_estado, id_pais) VALUES (so_modelo_pedido.nextval, 'Moray', 5); COMMIT;
INSERT INTO estado (id_estado, nome_estado, id_pais) VALUES (so_modelo_pedido.nextval, 'Angus', 5); COMMIT;
INSERT INTO estado (id_estado, nome_estado, id_pais) VALUES (so_modelo_pedido.nextval, 'Eden', 5); COMMIT;
INSERT INTO estado (id_estado, nome_estado, id_pais) VALUES (so_modelo_pedido.nextval, 'Aberdeenshire', 5); COMMIT;

SELECT * FROM estado;



INSERT INTO cidade (id_cidade, nome_cidade, id_cidade) VALUES (so_modelo_pedido.nextval, 'São Paulo', 7); COMMIT;
INSERT INTO cidade (id_cidade, nome_cidade, id_cidade) VALUES (so_modelo_pedido.nextval, 'Santos', 7); COMMIT;
INSERT INTO cidade (id_cidade, nome_cidade, id_cidade) VALUES (so_modelo_pedido.nextval, 'Taboão da Serra', 7); COMMIT;
INSERT INTO cidade (id_cidade, nome_cidade, id_cidade) VALUES (so_modelo_pedido.nextval, 'Osasco', 7); COMMIT;
INSERT INTO cidade (id_cidade, nome_cidade, id_cidade) VALUES (so_modelo_pedido.nextval, 'Cotia', 7); COMMIT;

INSERT INTO cidade (id_cidade, nome_cidade, id_cidade) VALUES (so_modelo_pedido.nextval, 'Andrelândia', 8); COMMIT;
INSERT INTO cidade (id_cidade, nome_cidade, id_cidade) VALUES (so_modelo_pedido.nextval, 'São Vicente de Minas', 8); COMMIT;
INSERT INTO cidade (id_cidade, nome_cidade, id_cidade) VALUES (so_modelo_pedido.nextval, 'Belo Horizonte', 8); COMMIT;
INSERT INTO cidade (id_cidade, nome_cidade, id_cidade) VALUES (so_modelo_pedido.nextval, 'São João Del Rei', 8); COMMIT;
INSERT INTO cidade (id_cidade, nome_cidade, id_cidade) VALUES (so_modelo_pedido.nextval, 'Juiz de Fora', 8); COMMIT;

INSERT INTO cidade (id_cidade, nome_cidade, id_cidade) VALUES (so_modelo_pedido.nextval, 'Florianópolis', 9); COMMIT;
INSERT INTO cidade (id_cidade, nome_cidade, id_cidade) VALUES (so_modelo_pedido.nextval, 'Joinville', 9); COMMIT;
INSERT INTO cidade (id_cidade, nome_cidade, id_cidade) VALUES (so_modelo_pedido.nextval, 'Blumenau', 9); COMMIT;
INSERT INTO cidade (id_cidade, nome_cidade, id_cidade) VALUES (so_modelo_pedido.nextval, 'Balneário Caboriú', 9); COMMIT;
INSERT INTO cidade (id_cidade, nome_cidade, id_cidade) VALUES (so_modelo_pedido.nextval, 'Chapecó', 9); COMMIT;

INSERT INTO cidade (id_cidade, nome_cidade, id_cidade) VALUES (so_modelo_pedido.nextval, 'Salvador', 10); COMMIT;
INSERT INTO cidade (id_cidade, nome_cidade, id_cidade) VALUES (so_modelo_pedido.nextval, 'Feira de Santana', 10); COMMIT;
INSERT INTO cidade (id_cidade, nome_cidade, id_cidade) VALUES (so_modelo_pedido.nextval, 'Porto Seguro', 10); COMMIT;
INSERT INTO cidade (id_cidade, nome_cidade, id_cidade) VALUES (so_modelo_pedido.nextval, 'Mortugaba', 10); COMMIT;
INSERT INTO cidade (id_cidade, nome_cidade, id_cidade) VALUES (so_modelo_pedido.nextval, 'Vitória da Conquista', 10); COMMIT;

INSERT INTO cidade (id_cidade, nome_cidade, id_cidade) VALUES (so_modelo_pedido.nextval, 'Manaus', 11); COMMIT;
INSERT INTO cidade (id_cidade, nome_cidade, id_cidade) VALUES (so_modelo_pedido.nextval, 'Belém', 11); COMMIT;
INSERT INTO cidade (id_cidade, nome_cidade, id_cidade) VALUES (so_modelo_pedido.nextval, 'Porto Velho', 11); COMMIT;
INSERT INTO cidade (id_cidade, nome_cidade, id_cidade) VALUES (so_modelo_pedido.nextval, 'Rio Branco', 11); COMMIT;
INSERT INTO cidade (id_cidade, nome_cidade, id_cidade) VALUES (so_modelo_pedido.nextval, 'Boa Vista', 11); COMMIT;

INSERT INTO cidade (id_cidade, nome_cidade, id_cidade) VALUES (so_modelo_pedido.nextval, 'Lisboa', 13); COMMIT;
INSERT INTO cidade (id_cidade, nome_cidade, id_cidade) VALUES (so_modelo_pedido.nextval, 'Sintra', 13); COMMIT;
INSERT INTO cidade (id_cidade, nome_cidade, id_cidade) VALUES (so_modelo_pedido.nextval, 'Cascais', 13); COMMIT;
INSERT INTO cidade (id_cidade, nome_cidade, id_cidade) VALUES (so_modelo_pedido.nextval, 'Loures', 13); COMMIT;
INSERT INTO cidade (id_cidade, nome_cidade, id_cidade) VALUES (so_modelo_pedido.nextval, 'Oeiras', 13); COMMIT;

INSERT INTO cidade (id_cidade, nome_cidade, id_cidade) VALUES (so_modelo_pedido.nextval, 'Almeida', 14); COMMIT;
INSERT INTO cidade (id_cidade, nome_cidade, id_cidade) VALUES (so_modelo_pedido.nextval, 'Seia', 14); COMMIT;
INSERT INTO cidade (id_cidade, nome_cidade, id_cidade) VALUES (so_modelo_pedido.nextval, 'Covilhã', 14); COMMIT;
INSERT INTO cidade (id_cidade, nome_cidade, id_cidade) VALUES (so_modelo_pedido.nextval, 'Sabugal', 14); COMMIT;
INSERT INTO cidade (id_cidade, nome_cidade, id_cidade) VALUES (so_modelo_pedido.nextval, 'Guarda', 14); COMMIT;

INSERT INTO cidade (id_cidade, nome_cidade, id_cidade) VALUES (so_modelo_pedido.nextval, 'Vila Real', 15); COMMIT;
INSERT INTO cidade (id_cidade, nome_cidade, id_cidade) VALUES (so_modelo_pedido.nextval, 'Chaves', 15); COMMIT;
INSERT INTO cidade (id_cidade, nome_cidade, id_cidade) VALUES (so_modelo_pedido.nextval, 'Valpaços', 15); COMMIT;
INSERT INTO cidade (id_cidade, nome_cidade, id_cidade) VALUES (so_modelo_pedido.nextval, 'Régua', 15); COMMIT;
INSERT INTO cidade (id_cidade, nome_cidade, id_cidade) VALUES (so_modelo_pedido.nextval, 'Sabrosa', 15); COMMIT;

INSERT INTO cidade (id_cidade, nome_cidade, id_cidade) VALUES (so_modelo_pedido.nextval, 'Porto', 16); COMMIT;
INSERT INTO cidade (id_cidade, nome_cidade, id_cidade) VALUES (so_modelo_pedido.nextval, 'Maia', 16); COMMIT;
INSERT INTO cidade (id_cidade, nome_cidade, id_cidade) VALUES (so_modelo_pedido.nextval, 'Gondomar', 16); COMMIT;
INSERT INTO cidade (id_cidade, nome_cidade, id_cidade) VALUES (so_modelo_pedido.nextval, 'Matosinhos', 16); COMMIT;
INSERT INTO cidade (id_cidade, nome_cidade, id_cidade) VALUES (so_modelo_pedido.nextval, 'Vila Nova de Gaia', 16); COMMIT;

INSERT INTO cidade (id_cidade, nome_cidade, id_cidade) VALUES (so_modelo_pedido.nextval, 'Safi', 17); COMMIT;
INSERT INTO cidade (id_cidade, nome_cidade, id_cidade) VALUES (so_modelo_pedido.nextval, 'El Jadida', 17); COMMIT;
INSERT INTO cidade (id_cidade, nome_cidade, id_cidade) VALUES (so_modelo_pedido.nextval, 'Oualidia', 17); COMMIT;
INSERT INTO cidade (id_cidade, nome_cidade, id_cidade) VALUES (so_modelo_pedido.nextval, 'Essaouira', 17); COMMIT;
INSERT INTO cidade (id_cidade, nome_cidade, id_cidade) VALUES (so_modelo_pedido.nextval, 'Youssoufia', 17); COMMIT;

INSERT INTO cidade (id_cidade, nome_cidade, id_cidade) VALUES (so_modelo_pedido.nextval, 'Agadir', 18); COMMIT;
INSERT INTO cidade (id_cidade, nome_cidade, id_cidade) VALUES (so_modelo_pedido.nextval, 'Taroudant', 18); COMMIT;
INSERT INTO cidade (id_cidade, nome_cidade, id_cidade) VALUES (so_modelo_pedido.nextval, 'Tiznit', 18); COMMIT;
INSERT INTO cidade (id_cidade, nome_cidade, id_cidade) VALUES (so_modelo_pedido.nextval, 'Ait Melloul', 18); COMMIT;
INSERT INTO cidade (id_cidade, nome_cidade, id_cidade) VALUES (so_modelo_pedido.nextval, 'Biougra', 18); COMMIT;

INSERT INTO cidade (id_cidade, nome_cidade, id_cidade) VALUES (so_modelo_pedido.nextval, 'Kyzyl', 22); COMMIT;
INSERT INTO cidade (id_cidade, nome_cidade, id_cidade) VALUES (so_modelo_pedido.nextval, 'Ak-Dovurak', 22); COMMIT;
INSERT INTO cidade (id_cidade, nome_cidade, id_cidade) VALUES (so_modelo_pedido.nextval, 'Chadan', 22); COMMIT;
INSERT INTO cidade (id_cidade, nome_cidade, id_cidade) VALUES (so_modelo_pedido.nextval, 'Shagonar', 22); COMMIT;
INSERT INTO cidade (id_cidade, nome_cidade, id_cidade) VALUES (so_modelo_pedido.nextval, 'Turan', 22); COMMIT;

INSERT INTO cidade (id_cidade, nome_cidade, id_cidade) VALUES (so_modelo_pedido.nextval, 'Abakan', 23); COMMIT;
INSERT INTO cidade (id_cidade, nome_cidade, id_cidade) VALUES (so_modelo_pedido.nextval, 'Chernogorsk', 23); COMMIT;
INSERT INTO cidade (id_cidade, nome_cidade, id_cidade) VALUES (so_modelo_pedido.nextval, 'Sayanogorsk', 23); COMMIT;
INSERT INTO cidade (id_cidade, nome_cidade, id_cidade) VALUES (so_modelo_pedido.nextval, 'Abaza', 23); COMMIT;
INSERT INTO cidade (id_cidade, nome_cidade, id_cidade) VALUES (so_modelo_pedido.nextval, 'Sorsk', 23); COMMIT;

INSERT INTO cidade (id_cidade, nome_cidade, id_cidade) VALUES (so_modelo_pedido.nextval, 'Faro', 32); COMMIT;
INSERT INTO cidade (id_cidade, nome_cidade, id_cidade) VALUES (so_modelo_pedido.nextval, 'Albufeira', 32); COMMIT;
INSERT INTO cidade (id_cidade, nome_cidade, id_cidade) VALUES (so_modelo_pedido.nextval, 'Lagos', 32); COMMIT;
INSERT INTO cidade (id_cidade, nome_cidade, id_cidade) VALUES (so_modelo_pedido.nextval, 'Portimão', 32); COMMIT;
INSERT INTO cidade (id_cidade, nome_cidade, id_cidade) VALUES (so_modelo_pedido.nextval, 'Tavira', 32); COMMIT;

SELECT * FROM cidade;


CREATE TABLE tipo (
    cod_tipo      NUMBER PRIMARY KEY,
    descricao     VARCHAR(50) NOT NULL,
);
