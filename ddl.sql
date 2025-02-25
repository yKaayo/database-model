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
    cpf_cnpj           NUMBER NOT NULL,
    cod_pedido      NUMBER
);

CREATE TABLE genero (
    id_genero        NUMBER PRIMARY KEY,
    descricao_genero VARCHAR(30) NOT NULL,
    id_cliente         NUMBER
);

ALTER TABLE genero
    ADD CONSTRAINT fk_genero FOREIGN KEY ( id_cliente )
        REFERENCES cliente ( id_cliente );

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
    valor_total      NUMBER NOT NULL,
    cod_produto      NUMBER
);

CREATE TABLE produto (
    cod_produto      NUMBER PRIMARY KEY,
    descricao        VARCHAR(50) NOT NULL,
    cod_tipo      NUMBER
);

ALTER TABLE produto
    ADD CONSTRAINT fk_produto FOREIGN KEY ( cod_item_pedido )
        REFERENCES item_pedido ( cod_item_pedido );

CREATE TABLE tipo (
    cod_tipo      NUMBER PRIMARY KEY,
    descricao     VARCHAR(50) NOT NULL,
);

ALTER TABLE tipo
    ADD CONSTRAINT fk_tipo FOREIGN KEY ( cod_produto )
        REFERENCES produto ( cod_produto );

-- 

CREATE SEQUENCE SO_MODELO_PEDIDO;

-- Insert Pais
INSERT INTO pais (id_pais, nome_pais) VALUES (so_modelo_pedido.nextval, 'Brasil'); COMMIT;
INSERT INTO pais (id_pais, nome_pais) VALUES (so_modelo_pedido.nextval, 'Portugal'); COMMIT;
INSERT INTO pais (id_pais, nome_pais) VALUES (so_modelo_pedido.nextval, 'Marrocos'); COMMIT;
INSERT INTO pais (id_pais, nome_pais) VALUES (so_modelo_pedido.nextval, 'Rússia'); COMMIT;
INSERT INTO pais (id_pais, nome_pais) VALUES (so_modelo_pedido.nextval, 'Reino Unido'); COMMIT;

SELECT * FROM pais;

-- Insert estado
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

-- Insert Cidade
INSERT INTO cidade (id_cidade, nome_cidade, id_estado) VALUES (so_modelo_pedido.nextval, 'São Paulo', 7); COMMIT;
INSERT INTO cidade (id_cidade, nome_cidade, id_estado) VALUES (so_modelo_pedido.nextval, 'Santos', 7); COMMIT;
INSERT INTO cidade (id_cidade, nome_cidade, id_estado) VALUES (so_modelo_pedido.nextval, 'Taboão da Serra', 7); COMMIT;
INSERT INTO cidade (id_cidade, nome_cidade, id_estado) VALUES (so_modelo_pedido.nextval, 'Osasco', 7); COMMIT;
INSERT INTO cidade (id_cidade, nome_cidade, id_estado) VALUES (so_modelo_pedido.nextval, 'Cotia', 7); COMMIT;

INSERT INTO cidade (id_cidade, nome_cidade, id_estado) VALUES (so_modelo_pedido.nextval, 'Andrelândia', 8); COMMIT;
INSERT INTO cidade (id_cidade, nome_cidade, id_estado) VALUES (so_modelo_pedido.nextval, 'São Vicente de Minas', 8); COMMIT;
INSERT INTO cidade (id_cidade, nome_cidade, id_estado) VALUES (so_modelo_pedido.nextval, 'Belo Horizonte', 8); COMMIT;
INSERT INTO cidade (id_cidade, nome_cidade, id_estado) VALUES (so_modelo_pedido.nextval, 'São João Del Rei', 8); COMMIT;
INSERT INTO cidade (id_cidade, nome_cidade, id_estado) VALUES (so_modelo_pedido.nextval, 'Juiz de Fora', 8); COMMIT;

INSERT INTO cidade (id_cidade, nome_cidade, id_estado) VALUES (so_modelo_pedido.nextval, 'Florianópolis', 9); COMMIT;
INSERT INTO cidade (id_cidade, nome_cidade, id_estado) VALUES (so_modelo_pedido.nextval, 'Joinville', 9); COMMIT;
INSERT INTO cidade (id_cidade, nome_cidade, id_estado) VALUES (so_modelo_pedido.nextval, 'Blumenau', 9); COMMIT;
INSERT INTO cidade (id_cidade, nome_cidade, id_estado) VALUES (so_modelo_pedido.nextval, 'Balneário Caboriú', 9); COMMIT;
INSERT INTO cidade (id_cidade, nome_cidade, id_estado) VALUES (so_modelo_pedido.nextval, 'Chapecó', 9); COMMIT;

INSERT INTO cidade (id_cidade, nome_cidade, id_estado) VALUES (so_modelo_pedido.nextval, 'Salvador', 10); COMMIT;
INSERT INTO cidade (id_cidade, nome_cidade, id_estado) VALUES (so_modelo_pedido.nextval, 'Feira de Santana', 10); COMMIT;
INSERT INTO cidade (id_cidade, nome_cidade, id_estado) VALUES (so_modelo_pedido.nextval, 'Porto Seguro', 10); COMMIT;
INSERT INTO cidade (id_cidade, nome_cidade, id_estado) VALUES (so_modelo_pedido.nextval, 'Mortugaba', 10); COMMIT;
INSERT INTO cidade (id_cidade, nome_cidade, id_estado) VALUES (so_modelo_pedido.nextval, 'Vitória da Conquista', 10); COMMIT;

INSERT INTO cidade (id_cidade, nome_cidade, id_estado) VALUES (so_modelo_pedido.nextval, 'Manaus', 11); COMMIT;
INSERT INTO cidade (id_cidade, nome_cidade, id_estado) VALUES (so_modelo_pedido.nextval, 'Belém', 11); COMMIT;
INSERT INTO cidade (id_cidade, nome_cidade, id_estado) VALUES (so_modelo_pedido.nextval, 'Porto Velho', 11); COMMIT;
INSERT INTO cidade (id_cidade, nome_cidade, id_estado) VALUES (so_modelo_pedido.nextval, 'Rio Branco', 11); COMMIT;
INSERT INTO cidade (id_cidade, nome_cidade, id_estado) VALUES (so_modelo_pedido.nextval, 'Boa Vista', 11); COMMIT;

INSERT INTO cidade (id_cidade, nome_cidade, id_estado) VALUES (so_modelo_pedido.nextval, 'Lisboa', 13); COMMIT;
INSERT INTO cidade (id_cidade, nome_cidade, id_estado) VALUES (so_modelo_pedido.nextval, 'Sintra', 13); COMMIT;
INSERT INTO cidade (id_cidade, nome_cidade, id_estado) VALUES (so_modelo_pedido.nextval, 'Cascais', 13); COMMIT;
INSERT INTO cidade (id_cidade, nome_cidade, id_estado) VALUES (so_modelo_pedido.nextval, 'Loures', 13); COMMIT;
INSERT INTO cidade (id_cidade, nome_cidade, id_estado) VALUES (so_modelo_pedido.nextval, 'Oeiras', 13); COMMIT;

INSERT INTO cidade (id_cidade, nome_cidade, id_estado) VALUES (so_modelo_pedido.nextval, 'Almeida', 14); COMMIT;
INSERT INTO cidade (id_cidade, nome_cidade, id_estado) VALUES (so_modelo_pedido.nextval, 'Seia', 14); COMMIT;
INSERT INTO cidade (id_cidade, nome_cidade, id_estado) VALUES (so_modelo_pedido.nextval, 'Covilhã', 14); COMMIT;
INSERT INTO cidade (id_cidade, nome_cidade, id_estado) VALUES (so_modelo_pedido.nextval, 'Sabugal', 14); COMMIT;
INSERT INTO cidade (id_cidade, nome_cidade, id_estado) VALUES (so_modelo_pedido.nextval, 'Guarda', 14); COMMIT;

INSERT INTO cidade (id_cidade, nome_cidade, id_estado) VALUES (so_modelo_pedido.nextval, 'Vila Real', 15); COMMIT;
INSERT INTO cidade (id_cidade, nome_cidade, id_estado) VALUES (so_modelo_pedido.nextval, 'Chaves', 15); COMMIT;
INSERT INTO cidade (id_cidade, nome_cidade, id_estado) VALUES (so_modelo_pedido.nextval, 'Valpaços', 15); COMMIT;
INSERT INTO cidade (id_cidade, nome_cidade, id_estado) VALUES (so_modelo_pedido.nextval, 'Régua', 15); COMMIT;
INSERT INTO cidade (id_cidade, nome_cidade, id_estado) VALUES (so_modelo_pedido.nextval, 'Sabrosa', 15); COMMIT;

INSERT INTO cidade (id_cidade, nome_cidade, id_estado) VALUES (so_modelo_pedido.nextval, 'Porto', 16); COMMIT;
INSERT INTO cidade (id_cidade, nome_cidade, id_estado) VALUES (so_modelo_pedido.nextval, 'Maia', 16); COMMIT;
INSERT INTO cidade (id_cidade, nome_cidade, id_estado) VALUES (so_modelo_pedido.nextval, 'Gondomar', 16); COMMIT;
INSERT INTO cidade (id_cidade, nome_cidade, id_estado) VALUES (so_modelo_pedido.nextval, 'Matosinhos', 16); COMMIT;
INSERT INTO cidade (id_cidade, nome_cidade, id_estado) VALUES (so_modelo_pedido.nextval, 'Vila Nova de Gaia', 16); COMMIT;

INSERT INTO cidade (id_cidade, nome_cidade, id_estado) VALUES (so_modelo_pedido.nextval, 'Safi', 17); COMMIT;
INSERT INTO cidade (id_cidade, nome_cidade, id_estado) VALUES (so_modelo_pedido.nextval, 'El Jadida', 17); COMMIT;
INSERT INTO cidade (id_cidade, nome_cidade, id_estado) VALUES (so_modelo_pedido.nextval, 'Oualidia', 17); COMMIT;
INSERT INTO cidade (id_cidade, nome_cidade, id_estado) VALUES (so_modelo_pedido.nextval, 'Essaouira', 17); COMMIT;
INSERT INTO cidade (id_cidade, nome_cidade, id_estado) VALUES (so_modelo_pedido.nextval, 'Youssoufia', 17); COMMIT;

INSERT INTO cidade (id_cidade, nome_cidade, id_estado) VALUES (so_modelo_pedido.nextval, 'Agadir', 18); COMMIT;
INSERT INTO cidade (id_cidade, nome_cidade, id_estado) VALUES (so_modelo_pedido.nextval, 'Taroudant', 18); COMMIT;
INSERT INTO cidade (id_cidade, nome_cidade, id_estado) VALUES (so_modelo_pedido.nextval, 'Tiznit', 18); COMMIT;
INSERT INTO cidade (id_cidade, nome_cidade, id_estado) VALUES (so_modelo_pedido.nextval, 'Ait Melloul', 18); COMMIT;
INSERT INTO cidade (id_cidade, nome_cidade, id_estado) VALUES (so_modelo_pedido.nextval, 'Biougra', 18); COMMIT;

INSERT INTO cidade (id_cidade, nome_cidade, id_estado) VALUES (so_modelo_pedido.nextval, 'Kyzyl', 22); COMMIT;
INSERT INTO cidade (id_cidade, nome_cidade, id_estado) VALUES (so_modelo_pedido.nextval, 'Ak-Dovurak', 22); COMMIT;
INSERT INTO cidade (id_cidade, nome_cidade, id_estado) VALUES (so_modelo_pedido.nextval, 'Chadan', 22); COMMIT;
INSERT INTO cidade (id_cidade, nome_cidade, id_estado) VALUES (so_modelo_pedido.nextval, 'Shagonar', 22); COMMIT;
INSERT INTO cidade (id_cidade, nome_cidade, id_estado) VALUES (so_modelo_pedido.nextval, 'Turan', 22); COMMIT;

INSERT INTO cidade (id_cidade, nome_cidade, id_estado) VALUES (so_modelo_pedido.nextval, 'Abakan', 23); COMMIT;
INSERT INTO cidade (id_cidade, nome_cidade, id_estado) VALUES (so_modelo_pedido.nextval, 'Chernogorsk', 23); COMMIT;
INSERT INTO cidade (id_cidade, nome_cidade, id_estado) VALUES (so_modelo_pedido.nextval, 'Sayanogorsk', 23); COMMIT;
INSERT INTO cidade (id_cidade, nome_cidade, id_estado) VALUES (so_modelo_pedido.nextval, 'Abaza', 23); COMMIT;
INSERT INTO cidade (id_cidade, nome_cidade, id_estado) VALUES (so_modelo_pedido.nextval, 'Sorsk', 23); COMMIT;

INSERT INTO cidade (id_cidade, nome_cidade, id_estado) VALUES (so_modelo_pedido.nextval, 'Abakan', 24); COMMIT;
INSERT INTO cidade (id_cidade, nome_cidade, id_estado) VALUES (so_modelo_pedido.nextval, 'Chernogorsk', 24); COMMIT;
INSERT INTO cidade (id_cidade, nome_cidade, id_estado) VALUES (so_modelo_pedido.nextval, 'Sayanogorsk', 24); COMMIT;
INSERT INTO cidade (id_cidade, nome_cidade, id_estado) VALUES (so_modelo_pedido.nextval, 'Abaza', 24); COMMIT;
INSERT INTO cidade (id_cidade, nome_cidade, id_estado) VALUES (so_modelo_pedido.nextval, 'Sorsk', 24); COMMIT;

INSERT INTO cidade (id_cidade, nome_cidade, id_estado) VALUES (so_modelo_pedido.nextval, 'Grozny', 25); COMMIT;
INSERT INTO cidade (id_cidade, nome_cidade, id_estado) VALUES (so_modelo_pedido.nextval, 'Argun', 25); COMMIT;
INSERT INTO cidade (id_cidade, nome_cidade, id_estado) VALUES (so_modelo_pedido.nextval, 'Shali', 25); COMMIT;
INSERT INTO cidade (id_cidade, nome_cidade, id_estado) VALUES (so_modelo_pedido.nextval, 'Urus-Martan', 25); COMMIT;
INSERT INTO cidade (id_cidade, nome_cidade, id_estado) VALUES (so_modelo_pedido.nextval, 'Gudermes', 25); COMMIT;

INSERT INTO cidade (id_cidade, nome_cidade, id_estado) VALUES (so_modelo_pedido.nextval, 'Syktyvkar', 26); COMMIT;
INSERT INTO cidade (id_cidade, nome_cidade, id_estado) VALUES (so_modelo_pedido.nextval, 'Ukhta', 26); COMMIT;
INSERT INTO cidade (id_cidade, nome_cidade, id_estado) VALUES (so_modelo_pedido.nextval, 'Vorkuta', 26); COMMIT;
INSERT INTO cidade (id_cidade, nome_cidade, id_estado) VALUES (so_modelo_pedido.nextval, 'Pechora', 26); COMMIT;
INSERT INTO cidade (id_cidade, nome_cidade, id_estado) VALUES (so_modelo_pedido.nextval, 'Inta', 26); COMMIT;

INSERT INTO cidade (id_cidade, nome_cidade, id_estado) VALUES (so_modelo_pedido.nextval, 'Inverness', 27); COMMIT;
INSERT INTO cidade (id_cidade, nome_cidade, id_estado) VALUES (so_modelo_pedido.nextval, 'Fort William', 27); COMMIT;
INSERT INTO cidade (id_cidade, nome_cidade, id_estado) VALUES (so_modelo_pedido.nextval, 'Aviemore', 27); COMMIT;
INSERT INTO cidade (id_cidade, nome_cidade, id_estado) VALUES (so_modelo_pedido.nextval, 'Thurso', 27); COMMIT;
INSERT INTO cidade (id_cidade, nome_cidade, id_estado) VALUES (so_modelo_pedido.nextval, 'Wick', 27); COMMIT;

INSERT INTO cidade (id_cidade, nome_cidade, id_estado) VALUES (so_modelo_pedido.nextval, 'Elgin', 28); COMMIT;
INSERT INTO cidade (id_cidade, nome_cidade, id_estado) VALUES (so_modelo_pedido.nextval, 'Forres', 28); COMMIT;
INSERT INTO cidade (id_cidade, nome_cidade, id_estado) VALUES (so_modelo_pedido.nextval, 'Lossiemouth', 28); COMMIT;
INSERT INTO cidade (id_cidade, nome_cidade, id_estado) VALUES (so_modelo_pedido.nextval, 'Buckie', 28); COMMIT;
INSERT INTO cidade (id_cidade, nome_cidade, id_estado) VALUES (so_modelo_pedido.nextval, 'Keith', 28); COMMIT;

INSERT INTO cidade (id_cidade, nome_cidade, id_estado) VALUES (so_modelo_pedido.nextval, 'Dundee', 29); COMMIT;
INSERT INTO cidade (id_cidade, nome_cidade, id_estado) VALUES (so_modelo_pedido.nextval, 'Arbroath', 29); COMMIT;
INSERT INTO cidade (id_cidade, nome_cidade, id_estado) VALUES (so_modelo_pedido.nextval, 'Forfar', 29); COMMIT;
INSERT INTO cidade (id_cidade, nome_cidade, id_estado) VALUES (so_modelo_pedido.nextval, 'Montrose', 29); COMMIT;
INSERT INTO cidade (id_cidade, nome_cidade, id_estado) VALUES (so_modelo_pedido.nextval, 'Brechin', 29); COMMIT;

INSERT INTO cidade (id_cidade, nome_cidade, id_estado) VALUES (so_modelo_pedido.nextval, 'Penrith', 30); COMMIT;
INSERT INTO cidade (id_cidade, nome_cidade, id_estado) VALUES (so_modelo_pedido.nextval, 'Appleby-in-Westmorland', 30); COMMIT;
INSERT INTO cidade (id_cidade, nome_cidade, id_estado) VALUES (so_modelo_pedido.nextval, 'Kirkby Stephen', 30); COMMIT;
INSERT INTO cidade (id_cidade, nome_cidade, id_estado) VALUES (so_modelo_pedido.nextval, 'Alston', 30); COMMIT;
INSERT INTO cidade (id_cidade, nome_cidade, id_estado) VALUES (so_modelo_pedido.nextval, 'Shap', 30); COMMIT;

INSERT INTO cidade (id_cidade, nome_cidade, id_estado) VALUES (so_modelo_pedido.nextval, 'Aberdeen', 31); COMMIT;
INSERT INTO cidade (id_cidade, nome_cidade, id_estado) VALUES (so_modelo_pedido.nextval, 'Peterhead', 31); COMMIT;
INSERT INTO cidade (id_cidade, nome_cidade, id_estado) VALUES (so_modelo_pedido.nextval, 'Fraserburgh', 31); COMMIT;
INSERT INTO cidade (id_cidade, nome_cidade, id_estado) VALUES (so_modelo_pedido.nextval, 'Inverurie', 31); COMMIT;
INSERT INTO cidade (id_cidade, nome_cidade, id_estado) VALUES (so_modelo_pedido.nextval, 'Stonehaven', 31); COMMIT;

INSERT INTO cidade (id_cidade, nome_cidade, id_estado) VALUES (so_modelo_pedido.nextval, 'Faro', 32); COMMIT;
INSERT INTO cidade (id_cidade, nome_cidade, id_estado) VALUES (so_modelo_pedido.nextval, 'Albufeira', 32); COMMIT;
INSERT INTO cidade (id_cidade, nome_cidade, id_estado) VALUES (so_modelo_pedido.nextval, 'Lagos', 32); COMMIT;
INSERT INTO cidade (id_cidade, nome_cidade, id_estado) VALUES (so_modelo_pedido.nextval, 'Portimão', 32); COMMIT;
INSERT INTO cidade (id_cidade, nome_cidade, id_estado) VALUES (so_modelo_pedido.nextval, 'Tavira', 32); COMMIT;

SELECT * FROM cidade;

-- Insert Bairro
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Centro', 41); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Vila Nova', 41); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Jardim Primavera', 41); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Bairro dos Pinheiros', 41); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Alto da Boa Vista', 41); COMMIT;

INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Centro', 42); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Vila Nova', 42); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Jardim Primavera', 42); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Bairro dos Pinheiros', 42); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Alto da Boa Vista', 42); COMMIT;

INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Centro', 43); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Vila Nova', 43); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Jardim Primavera', 43); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Bairro dos Pinheiros', 43); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Alto da Boa Vista', 43); COMMIT;

INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Centro', 44); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Vila Nova', 44); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Jardim Primavera', 44); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Bairro dos Pinheiros', 44); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Alto da Boa Vista', 44); COMMIT;

INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Centro', 45); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Vila Nova', 45); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Jardim Primavera', 45); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Bairro dos Pinheiros', 45); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Alto da Boa Vista', 45); COMMIT;

INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Centro', 46); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Vila Nova', 46); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Jardim Primavera', 46); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Bairro dos Pinheiros', 46); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Alto da Boa Vista', 46); COMMIT;

INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Centro', 47); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Vila Nova', 47); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Jardim Primavera', 47); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Bairro dos Pinheiros', 47); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Alto da Boa Vista', 47); COMMIT;

INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Centro', 48); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Vila Nova', 48); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Jardim Primavera', 48); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Bairro dos Pinheiros', 48); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Alto da Boa Vista', 48); COMMIT;

INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Centro', 49); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Vila Nova', 49); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Jardim Primavera', 49); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Bairro dos Pinheiros', 49); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Alto da Boa Vista', 49); COMMIT;

INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Centro', 51); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Vila Nova', 51); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Jardim Primavera', 51); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Bairro dos Pinheiros', 51); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Alto da Boa Vista', 51); COMMIT;

INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Centro', 52); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Vila Nova', 52); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Jardim Primavera', 52); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Bairro dos Pinheiros', 52); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Alto da Boa Vista', 52); COMMIT;

INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Centro', 53); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Vila Nova', 53); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Jardim Primavera', 53); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Bairro dos Pinheiros', 53); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Alto da Boa Vista', 53); COMMIT;

INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Centro', 54); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Vila Nova', 54); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Jardim Primavera', 54); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Bairro dos Pinheiros', 54); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Alto da Boa Vista', 54); COMMIT;

INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Centro', 55); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Vila Nova', 55); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Jardim Primavera', 55); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Bairro dos Pinheiros', 55); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Alto da Boa Vista', 55); COMMIT;

INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Centro', 56); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Vila Nova', 56); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Jardim Primavera', 56); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Bairro dos Pinheiros', 56); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Alto da Boa Vista', 56); COMMIT;

INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Centro', 57); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Vila Nova', 57); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Jardim Primavera', 57); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Bairro dos Pinheiros', 57); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Alto da Boa Vista', 57); COMMIT;

INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Centro', 58); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Vila Nova', 58); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Jardim Primavera', 58); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Bairro dos Pinheiros', 58); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Alto da Boa Vista', 58); COMMIT;

INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Centro', 59); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Vila Nova', 59); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Jardim Primavera', 59); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Bairro dos Pinheiros', 59); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Alto da Boa Vista', 59); COMMIT;

INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Centro', 60); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Vila Nova', 60); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Jardim Primavera', 60); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Bairro dos Pinheiros', 60); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Alto da Boa Vista', 60); COMMIT;

INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Centro', 61); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Vila Nova', 61); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Jardim Primavera', 61); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Bairro dos Pinheiros', 61); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Alto da Boa Vista', 61); COMMIT;

INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Centro', 62); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Vila Nova', 62); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Jardim Primavera', 62); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Bairro dos Pinheiros', 62); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Alto da Boa Vista', 62); COMMIT;

INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Centro', 63); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Vila Nova', 63); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Jardim Primavera', 63); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Bairro dos Pinheiros', 63); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Alto da Boa Vista', 63); COMMIT;

INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Centro', 64); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Vila Nova', 64); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Jardim Primavera', 64); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Bairro dos Pinheiros', 64); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Alto da Boa Vista', 64); COMMIT;

INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Centro', 65); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Vila Nova', 65); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Jardim Primavera', 65); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Bairro dos Pinheiros', 65); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Alto da Boa Vista', 65); COMMIT;

INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Centro', 66); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Vila Nova', 66); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Jardim Primavera', 66); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Bairro dos Pinheiros', 66); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Alto da Boa Vista', 66); COMMIT;

INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Centro', 67); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Vila Nova', 67); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Jardim Primavera', 67); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Bairro dos Pinheiros', 67); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Alto da Boa Vista', 67); COMMIT;

INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Centro', 68); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Vila Nova', 68); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Jardim Primavera', 68); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Bairro dos Pinheiros', 68); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Alto da Boa Vista', 68); COMMIT;

INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Centro', 69); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Vila Nova', 69); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Jardim Primavera', 69); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Bairro dos Pinheiros', 69); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Alto da Boa Vista', 69); COMMIT;

INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Centro', 70); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Vila Nova', 70); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Jardim Primavera', 70); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Bairro dos Pinheiros', 70); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Alto da Boa Vista', 70); COMMIT;

INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Centro', 71); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Vila Nova', 71); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Jardim Primavera', 71); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Bairro dos Pinheiros', 71); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Alto da Boa Vista', 71); COMMIT;

INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Centro', 72); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Vila Nova', 72); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Jardim Primavera', 72); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Bairro dos Pinheiros', 72); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Alto da Boa Vista', 72); COMMIT;

INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Centro', 72); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Vila Nova', 72); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Jardim Primavera', 72); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Bairro dos Pinheiros', 72); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Alto da Boa Vista', 72); COMMIT;

INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Centro', 73); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Vila Nova', 73); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Jardim Primavera', 73); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Bairro dos Pinheiros', 73); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Alto da Boa Vista', 73); COMMIT;

INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Centro', 74); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Vila Nova', 74); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Jardim Primavera', 74); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Bairro dos Pinheiros', 74); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Alto da Boa Vista', 74); COMMIT;

INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Centro', 75); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Vila Nova', 75); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Jardim Primavera', 75); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Bairro dos Pinheiros', 75); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Alto da Boa Vista', 75); COMMIT;

INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Centro', 76); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Vila Nova', 76); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Jardim Primavera', 76); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Bairro dos Pinheiros', 76); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Alto da Boa Vista', 76); COMMIT;

INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Centro', 77); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Vila Nova', 77); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Jardim Primavera', 77); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Bairro dos Pinheiros', 77); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Alto da Boa Vista', 77); COMMIT;

INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Centro', 78); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Vila Nova', 78); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Jardim Primavera', 78); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Bairro dos Pinheiros', 78); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Alto da Boa Vista', 78); COMMIT;

INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Centro', 79); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Vila Nova', 79); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Jardim Primavera', 79); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Bairro dos Pinheiros', 79); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Alto da Boa Vista', 79); COMMIT;

INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Centro', 80); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Vila Nova', 80); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Jardim Primavera', 80); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Bairro dos Pinheiros', 80); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Alto da Boa Vista', 80); COMMIT;

INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Jardins', 81); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Moema', 81); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Pinheiros', 81); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Vila Madalena', 81); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Itaim Bibi', 81); COMMIT;

INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Gonzaga', 82); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Boqueirão', 82); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Embaré', 82); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Ponta da Praia', 82); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'José Menino', 82); COMMIT;

INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Jardim Record', 83); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Jardim Maria Luiza', 83); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Parque Pinheiros', 83); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Vila São Francisco', 83); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Jardim Trianon', 83); COMMIT;

INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Centro', 84); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Bela Vista', 84); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Km 18', 84); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Rochdale', 84); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Piratininga', 84); COMMIT;

INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Granja Viana', 85); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Caucaia do Alto', 85); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Jardim Nomura', 85); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Parque São George', 85); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Vila São Pedro', 85); COMMIT;

INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Centro', 87); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Vila Operária', 87); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Jardim das Flores', 87); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Bairro Novo', 87); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Alto do Cruzeiro', 87); COMMIT;

INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Centro', 88); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Vila Nova', 88); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Jardim Primavera', 88); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Bairro dos Pinheiros', 88); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Alto da Boa Vista', 88); COMMIT;

INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Savassi', 89); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Lourdes', 89); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Pampulha', 89); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Santa Tereza', 89); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Barro Preto', 89); COMMIT;

INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Centro', 90); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Tijuco', 90); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Colônia do Marçal', 90); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Fábricas', 90); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Bonfim', 90); COMMIT;

INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Centro', 91); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'São Mateus', 91); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Santa Catarina', 91); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Bom Pastor', 91); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Jardim Glória', 91); COMMIT;

INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Centro', 92); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Trindade', 92); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Lagoa da Conceição', 92); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Santo Antônio de Lisboa', 92); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Canasvieiras', 92); COMMIT;

INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Centro', 93); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Boa Vista', 93); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Aventureiro', 93); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Iririú', 93); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Costa e Silva', 93); COMMIT;

INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Centro', 94); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Velha', 94); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Itoupava Seca', 94); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Garcia', 94); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Fortaleza', 94); COMMIT;

INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Centro', 95); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Barra', 95); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Praia Brava', 95); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Nações', 95); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'São Conrado', 95); COMMIT;

INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Centro', 96); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Efapi', 96); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'São Pedro', 96); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Passo dos Fortes', 96); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Maria Goretti', 96); COMMIT;

INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Barra', 97); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Pituba', 97); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Rio Vermelho', 97); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Ondina', 97); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Pelourinho', 97); COMMIT;

INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Centro', 98); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Kalilândia', 98); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Sobradinho', 98); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Tomba', 98); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Jardim Cruzeiro', 98); COMMIT;

INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Centro', 99); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Passarela do Álcool', 99); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Taperapuã', 99); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Arraial d''Ajuda', 99); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Trancoso', 99); COMMIT;

INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Centro', 100); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Vila Nova', 100); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Jardim Primavera', 100); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Bairro dos Pinheiros', 100); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Alto da Boa Vista', 100); COMMIT;

INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Centro', 101); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Candeias', 101); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Brasil', 101); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Patagônia', 101); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Jardim Valéria', 101); COMMIT;

INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Centro', 102); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Adrianópolis', 102); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Cidade Nova', 102); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Aleixo', 102); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Parque 10 de Novembro', 102); COMMIT;

INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Centro', 103); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Nazaré', 103); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Umarizal', 103); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Marco', 103); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Batista Campos', 103); COMMIT;

INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Centro', 104); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Nossa Senhora das Graças', 104); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Nova Porto Velho', 104); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Tucumanzal', 104); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Caiari', 104); COMMIT;

INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Centro', 105); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Bosque', 105); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Seis de Agosto', 105); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Base', 105); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Ayrton Senna', 105); COMMIT;

INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Centro', 106); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Mecejana', 106); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Asa Branca', 106); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Cauamé', 106); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Buritis', 106); COMMIT;

INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Alfama', 107); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Chiado', 107); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Belém', 107); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Bairro Alto', 107); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Parque das Nações', 107); COMMIT;

INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Centro Histórico', 108); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Queluz', 108); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Monte da Lua', 108); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'São Pedro de Penaferrim', 108); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Almargem do Bispo', 108); COMMIT;

INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Centro', 109); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Estoril', 109); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Monte Estoril', 109); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'São João do Estoril', 109); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Carcavelos', 109); COMMIT;

INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Centro', 110); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Santo António dos Cavaleiros', 110); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Bucelas', 110); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Fanhões', 110); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Lousa', 110); COMMIT;

INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Centro', 111); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Carnaxide', 111); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Algés', 111); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Linda-a-Velha', 111); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Paço de Arcos', 111); COMMIT;

INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Centro', 112); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Vila Nova', 112); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Jardim Primavera', 112); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Bairro dos Pinheiros', 112); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Alto da Boa Vista', 112); COMMIT;

INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Centro', 113); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Vila Nova', 113); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Jardim Primavera', 113); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Bairro dos Pinheiros', 113); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Alto da Boa Vista', 113); COMMIT;

INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Centro', 114); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Vila Nova', 114); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Jardim Primavera', 114); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Bairro dos Pinheiros', 114); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Alto da Boa Vista', 114); COMMIT;

INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Centro', 115); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Vila Nova', 115); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Jardim Primavera', 115); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Bairro dos Pinheiros', 115); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Alto da Boa Vista', 115); COMMIT;

INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Centro', 116); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Vila Nova', 116); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Jardim Primavera', 116); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Bairro dos Pinheiros', 116); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Alto da Boa Vista', 116); COMMIT;

INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Centro', 117); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Vila Nova', 117); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Jardim Primavera', 117); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Bairro dos Pinheiros', 117); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Alto da Boa Vista', 117); COMMIT;

INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Centro', 118); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Vila Nova', 118); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Jardim Primavera', 118); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Bairro dos Pinheiros', 118); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Alto da Boa Vista', 118); COMMIT;

INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Centro', 119); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Vila Nova', 119); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Jardim Primavera', 119); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Bairro dos Pinheiros', 119); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Alto da Boa Vista', 119); COMMIT;

INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Centro', 120); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Vila Nova', 120); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Jardim Primavera', 120); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Bairro dos Pinheiros', 120); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Alto da Boa Vista', 120); COMMIT;

INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Centro', 121); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Vila Nova', 121); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Jardim Primavera', 121); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Bairro dos Pinheiros', 121); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Alto da Boa Vista', 121); COMMIT;

INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Centro', 122); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Ribeira', 122); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Foz do Douro', 122); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Boavista', 122); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Cedofeita', 122); COMMIT;

INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Centro', 123); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Gueifães', 123); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Águas Santas', 123); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Castelo da Maia', 123); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Vila Nova da Telha', 123); COMMIT;

INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Centro', 124); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Rio Tinto', 124); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Valbom', 124); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Jovim', 124); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Fânzeres', 124); COMMIT;

INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Centro', 125); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Leça da Palmeira', 125); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Senhora da Hora', 125); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Guifões', 125); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Perafita', 125); COMMIT;

INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Centro', 126); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Canidelo', 126); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Madalena', 126); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Mafamude', 126); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Vilar de Andorinho', 126); COMMIT;

INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Centro', 127); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Vila Nova', 127); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Jardim Primavera', 127); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Bairro dos Pinheiros', 127); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Alto da Boa Vista', 127); COMMIT;

INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Centro', 128); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Vila Nova', 128); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Jardim Primavera', 128); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Bairro dos Pinheiros', 128); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Alto da Boa Vista', 128); COMMIT;

INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Centro', 129); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Vila Nova', 129); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Jardim Primavera', 129); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Bairro dos Pinheiros', 129); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Alto da Boa Vista', 129); COMMIT;

INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Centro', 130); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Vila Nova', 130); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Jardim Primavera', 130); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Bairro dos Pinheiros', 130); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Alto da Boa Vista', 130); COMMIT;

INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Centro', 131); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Vila Nova', 131); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Jardim Primavera', 131); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Bairro dos Pinheiros', 131); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Alto da Boa Vista', 131); COMMIT;

INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Centro', 132); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Vila Nova', 132); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Jardim Primavera', 132); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Bairro dos Pinheiros', 132); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Alto da Boa Vista', 132); COMMIT;

INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Centro', 133); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Vila Nova', 133); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Jardim Primavera', 133); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Bairro dos Pinheiros', 133); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Alto da Boa Vista', 133); COMMIT;

INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Centro', 134); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Vila Nova', 134); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Jardim Primavera', 134); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Bairro dos Pinheiros', 134); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Alto da Boa Vista', 134); COMMIT;

INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Centro', 135); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Vila Nova', 135); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Jardim Primavera', 135); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Bairro dos Pinheiros', 135); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Alto da Boa Vista', 135); COMMIT;

INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Centro', 136); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Vila Nova', 136); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Jardim Primavera', 136); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Bairro dos Pinheiros', 136); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Alto da Boa Vista', 136); COMMIT;

INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Centro', 137); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Vila Nova', 137); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Jardim Primavera', 137); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Bairro dos Pinheiros', 137); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Alto da Boa Vista', 137); COMMIT;

INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Centro', 138); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Vila Nova', 138); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Jardim Primavera', 138); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Bairro dos Pinheiros', 138); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Alto da Boa Vista', 138); COMMIT;

INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Centro', 139); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Vila Nova', 139); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Jardim Primavera', 139); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Bairro dos Pinheiros', 139); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Alto da Boa Vista', 139); COMMIT;

INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Centro', 140); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Vila Nova', 140); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Jardim Primavera', 140); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Bairro dos Pinheiros', 140); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Alto da Boa Vista', 140); COMMIT;

INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Centro', 141); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Vila Nova', 141); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Jardim Primavera', 141); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Bairro dos Pinheiros', 141); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Alto da Boa Vista', 141); COMMIT;

INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Centro', 142); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Vila Nova', 142); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Jardim Primavera', 142); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Bairro dos Pinheiros', 142); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Alto da Boa Vista', 142); COMMIT;

INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Centro', 143); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Vila Nova', 143); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Jardim Primavera', 143); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Bairro dos Pinheiros', 143); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Alto da Boa Vista', 143); COMMIT;

INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Centro', 144); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Vila Nova', 144); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Jardim Primavera', 144); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Bairro dos Pinheiros', 144); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Alto da Boa Vista', 144); COMMIT;

INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Centro', 145); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Vila Nova', 145); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Jardim Primavera', 145); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Bairro dos Pinheiros', 145); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Alto da Boa Vista', 145); COMMIT;

INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Centro', 146); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Vila Nova', 146); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Jardim Primavera', 146); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Bairro dos Pinheiros', 146); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Alto da Boa Vista', 146); COMMIT;

INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Centro', 147); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Vila Nova', 147); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Jardim Primavera', 147); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Bairro dos Pinheiros', 147); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Alto da Boa Vista', 147); COMMIT;

INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Centro', 148); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Vila Nova', 148); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Jardim Primavera', 148); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Bairro dos Pinheiros', 148); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Alto da Boa Vista', 148); COMMIT;

INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Centro', 149); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Vila Nova', 149); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Jardim Primavera', 149); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Bairro dos Pinheiros', 149); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Alto da Boa Vista', 149); COMMIT;

INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Centro', 150); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Vila Nova', 150); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Jardim Primavera', 150); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Bairro dos Pinheiros', 150); COMMIT;
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (so_modelo_pedido.nextval, 'Alto da Boa Vista', 150); COMMIT;

SELECT * FROM bairro
