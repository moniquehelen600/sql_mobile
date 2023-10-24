CREATE DATABASE bd_mobile;

USE bd_mobile;

CREATE TABLE tb_usuario_motorista (
	id_usuario_motorista BINARY (16) NOT NULL,
	nome VARCHAR (255) NOT NULL,
	email VARCHAR (255) NOT NULL,
	senha VARCHAR (255) NOT NULL,
	telefone VARCHAR (50) NOT NULL,
	idade TINYINT,
	PRIMARY KEY (id_usuario_motorista)
);

CREATE TABLE  tb_usuario_parceiro (
	id_usuario_parceiro BINARY (16) NOT NULL,
	nome VARCHAR (255) NOT NULL,
    email VARCHAR (255) NOT NULL,
    senha VARCHAR (255) NOT NULL,
    telefone VARCHAR (50) NOT NULL,
    aprovado BIT ,
    PRIMARY KEY (id_usuario_parceiro)
);

CREATE TABLE tb_empresa (
	id_empresa BINARY NOT NULL,
	nome VARCHAR (255) NOT NULL,
    razaoSocial VARCHAR (255) NOT NULL,
    cnpj VARCHAR (255) NOT NULL,
    cep VARCHAR (15) NOT NULL,
    logradouro VARCHAR (100) NOT NULL,
    complemento VARCHAR (255),
    bairro VARCHAR (100) NOT NULL,
    localidade VARCHAR (255),
    uf VARCHAR (10) NOT NULL,
    ddd VARCHAR (10) NOT NULL,
    foto BLOB NOT NULL,
    descricao TEXT NOT NULL ,
    horaAbertura TIME,
    HoraFechamento TIME ,
    aprovado BIT,
    PRIMARY KEY (id_empresa)
);

CREATE TABLE tb_dias_funcionamento(
		id_dias_funcionamento BINARY NOT NULL,
		nome CHAR (1) NOT NULL,
        PRIMARY KEY (id_dias_funcionamento)
);
    
CREATE TABLE tb_rede_social(
 id_rede_social BINARY NOT NULL,
 nome  VARCHAR (255),
 link  VARCHAR (255),
 PRIMARY KEY (id_redes_sociais)
);	

CREATE TABLE tb_servico(
	id_servico BINARY (16) NOT NULL,
	nome VARCHAR (255)  NOT NULL,
    foto BLOB NOT NULL,
    servico BIT,
    descricao TEXT,
    valor FLOAT NOT NULL,
    duracaoparceria DATE NOT NULL,
    PRIMARY KEY (id_servico)
);

CREATE TABLE tb_categoria(
	id_categoria BINARY (16) NOT NULL,
	nome VARCHAR (255) NOT NULL,
    PRIMARY KEY (id_categoria)
);



CREATE TABLE tb_empresa_categoria(
	id_empresa BINARY(16) NOT NULL,
    id_categoria BINARY(16) NOT NULL,
    FOREIGN KEY(id_empresa) REFERENCES tb_empresa(id),
    FOREIGN KEY(id_categoria) REFERENCES tb_categoria(id)
);

CREATE TABLE tb_empresa_categoria(
	id_empresa BINARY(16) NOT NULL,
    id_categoria BINARY(16) NOT NULL,
    FOREIGN KEY(id_empresa) REFERENCES tb_empresa(id_empresa),
    FOREIGN KEY(id_categoria) REFERENCES tb_categoria(id_categoria)
);

CREATE TABLE id_usuario (
nome VARCHAR(255) NOT NULL,
email VARCHAR(255) NOT NULL,
senha VARCHAR(255) NOT NULL,
telefone VARCHAR(50) NOT NULL,
idade TINYINT 
);

CREATE TABLE id_categoria (
nome VARCHAR(255) NOT NULL
);



CREATE TABLE tb_servico_categoria(
	id_empresa BINARY(16) NOT NULL,
    id_categoria BINARY(16) NOT NULL,
    FOREIGN KEY(id_empresa) REFERENCES tb_empresa(id_empresa),
    FOREIGN KEY(id_categoria) REFERENCES tb_categoria(id_categoria)
);

CREATE TABLE tb_empresa_redes_sociais(
	id_empresa BINARY(16) NOT NULL,
    id_redes_sociais BINARY(16) NOT NULL,
    FOREIGN KEY(id_empresa) REFERENCES tb_empresa(id_empresa),
    FOREIGN KEY(id_redes_sociais) REFERENCES tb_empresa_redes_sociais(id_redes_sociais)
);

CREATE TABLE tb_empresa_funcionamento(
	id_empresa BINARY(16) NOT NULL,
    id_dia_funcionamento BINARY(16) NOT NULL,
    FOREIGN KEY(id_empresa) REFERENCES tb_empresa(id),
    FOREIGN KEY(id_dia_funcionamento) REFERENCES tb_dias_funcionamento(id)
);

CREATE TABLE tb_empresa_categoria(
	id_empresa BINARY(16) NOT NULL,
    id_categoria BINARY(16) NOT NULL,
    FOREIGN KEY(id_empresa) REFERENCES tb_empresa(id),
    FOREIGN KEY(id_categoria) REFERENCES tb_categoria(id)
);

