CREATE DATABASE banco;

CREATE TABLE conta
(
    cpf varchar(11) NOT NULL,
    nro_agencia varchar(4) NOT NULL,
    nro_conta varchar(10) NOT NULL PRIMARY KEY,
    saldo float NOT NULL,
);

CREATE TABLE cliente
(
    cpf varchar(11) NOT NULL PRIMARY KEY,
    rg varchar(15) NOT NULL,
    nome varchar(50) NOT NULL,
    telefone varchar(15) NOT NULL,
    endereco varchar(70) NOT NULL,
    estado_civil varchar(15) NOT NULL,
);

CREATE TABLE agencia
(
    nro_agencia varchar(4) NOT NULL PRIMARY KEY,
    nome varchar(20) NOT NULL,
    endereco varchar(70) NOT NULL,
    gerente varchar(50) NOT NULL,
);

CREATE TABLE movimentacao
(
    nro_agencia varchar(4) NOT NULL,
    nro_conta varchar(10) NOT NULL,
    cr_db varchar(1) NOT NULL,
    tipo varchar(15) NOT NULL,
    data_ date NOT NULL,
    hora time NOT NULL,
    valor float NOT NULL,
);

INSERT INTO conta
VALUES
(
        "08645642346",
        "1",
        "1",
        93,
),
(
        "99999999999",
        "2",
        "2",
        112,
);

INSERT INTO cliente
VALUES
(
    "08645642346",
    "123456789123456",
    "Leonardo Luz",
    "99999999999999",
    "Solteiro",
),
(
    "99999999999",
    "987654321987654",
    "Diego Prestes",
    "88888888888888",
    "Casado",
);

INSERT INTO agencia
VALUES
(
    "1",
    "Banrisul",
    "rua 1, bairro araça, numero 311, porto alegre",
    "Roberto Carlos",
),
(
    "2",
    "Banco do Brasil",
    "rua 2, bairro araça, numero 311, Osório",
    "Julio Cesar",
);

INSERT INTO movimentacao
VALUES
(
    "1",
    "1",
    "c",
    "Deposito",
    "1998-11-11",
    "11:04",
    12,4,
),
(
    "2",
    "2",
    "d",
    "saque",
    "2011-11-11",
    "11:11",
    11,11,
);
