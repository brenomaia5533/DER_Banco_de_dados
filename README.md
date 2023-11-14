# DER_Banco_de_dados
Diagrama de entidade relacional feito para uma estrutura de banco de dados de um hospital

ENUNCIADO:

Um pequeno hospital local busca desenvolver um novo sistema que atenda melhor às suas necessidades. Atualmente, parte da operação ainda se apoia em planilhas e arquivos antigos, mas espera-se que esses dados sejam transferidos para o novo sistema assim que ele estiver funcional. Neste momento, é necessário analisar com cuidado as necessidades desse cliente e sugerir uma estrutura de banco de dados adequada por meio de um Diagrama Entidade-Relacionamento.

DESCRIÇÃO:

Analise a seguinte descrição e extraia dela os requisitos para o banco de dados:

O hospital necessita de um sistema para sua área clínica que ajude a controlar consultas realizadas. Os médicos podem ser generalistas, especialistas ou residentes e têm seus dados pessoais cadastrados em planilhas digitais. Cada médico pode ter uma ou mais especialidades, que podem ser pediatria, clínica geral, gastroenterologia e dermatologia. Alguns registros antigos ainda estão em formulário de papel, mas será necessário incluir esses dados no novo sistema.

Os pacientes também precisam de cadastro, contendo dados pessoais (nome, data de nascimento, endereço, telefone e e-mail), documentos (CPF e RG) e convênio. Para cada convênio, são registrados nome, CNPJ e tempo de carência.

As consultas também têm sido registradas em planilhas, com data e hora de realização, médico responsável, paciente, valor da consulta ou nome do convênio, com o número da carteira. Também é necessário indicar na consulta qual a especialidade buscada pelo paciente.

Deseja-se ainda informatizar a receita do médico, de maneira que, no encerramento da consulta, ele possa registrar os medicamentos receitados, a quantidade e as instruções de uso. A partir disso, espera-se que o sistema imprima um relatório da receita ao paciente ou permita sua visualização via internet.

DIAGRAMA DE ENTIDADE RELACIONAL:

![Captura de tela 2023-10-22 214513](https://github.com/brenomaia5533/DER_Banco_de_dados/assets/142261368/9837bcb7-fb79-48f7-86bb-f9cbbc03a82f)


Parte 2:

Script para trabalhar com essa tabela no banco de dados:

use consultas;

select * from quartos;

insert into quartos values
( 1, "apartamentos", 230.00 ),
( 2, "quartos_duplos", 160.00 ),
( 3, "enfermaria", 95.00 );

select * from internacoes;

INSERT INTO internacoes VALUES
(1, '2021-11-05', '2021-11-18', '2021-11-18', 160.00, 18, 2, 6),
(2, '2020-01-28', '2021-02-05', '2021-02-10', 230.00, 17, 2, 6),
(3, '2019-05-05', '2019-05-18', '2019-05-18', 160.00, 16, 2, 6),
(4, '2021-12-25', '2021-12-27', '2021-12-28', 160.00, 15, 2, 6),
(5, '2020-11-10', '2020-11-18', '2020-11-18', 95.00, 10, 2, 6),
(6, '2021-11-11', '2021-11-18', '2021-11-18', 160.00, 9, 2, 6),
(7, '2022-03-27', '2022-04-01', '2022-04-03', 160.00, 8, 2, 6),
(8, '2021-08-16', '2021-08-19', '2021-08-20', 95.00, 7, 2, 6),
(9, '2022-09-12', '2022-09-22', '2022-10-01', 95.00, 6, 2, 6),
(10, '2019-02-05', '2019-02-18', '2019-02-18', 230.0, 5, 2, 6);



INSERT INTO internacoes ( data_entrada_internacao,data_alta_internacao , prevista_alta_internacao , valor_diaria_quarto)
SELECT   data_entrada_internacao,data_alta_internacao , prevista_alta_internacao , valor_diaria_quarto
FROM consultas;

ALTER TABLE internacoes
CHANGE data_entrada data_entrada_internacao DATE;

ALTER TABLE internacoes
CHANGE prevista_alta_intercao data_alta_internacao DATE;

ALTER TABLE internacoes
CHANGE data_alta prevista_alta_intercao DATE;

ALTER TABLE internacoes
CHANGE data_alta data_alta_internacao DATE;

ALTER TABLE internacoes
CHANGE procedimento procedimento_intercao VARCHAR(100);


