﻿---------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- ############################################################################################################################################################### --
-- ########################################################################## EXECUÇÕES ########################################################################## --
-- ############################################################################################################################################################### --
---------------------------------------------------------------------------------------------------------------------------------------------------------------------


SELECT * FROM ALUNO_MODULO;
SELECT * FROM PRE_REQUISITO;
SELECT * FROM ALUNO_CURSO;
SELECT * FROM ALUNO;
SELECT * FROM PROFESSOR;
SELECT * FROM CURSO;
SELECT * FROM MODULO;
SELECT * FROM DISCIPLINA;
SELECT * FROM VIDEO_AULA;
SELECT * FROM ALUNO_VIDEO_ASSISTIDO;
SELECT * FROM QUESTAO;
SELECT * FROM QUESTIONARIO;

--------------------------------------------------------------------- INSERIR_ALUNO_E_PROFESSOR ---------------------------------------------------------------------
--(PARÂMETROS: COD_USUARIO, NOME, CPF, DATA_NASCIMENTO, EMAIL, SENHA, TABELA)--

---- SELECT * FROM ALUNO;
---- SELECT * FROM PROFESSOR;

SELECT FROM INSERIR_ALUNO_E_PROFESSOR
('NELSON', '11223344555', '1992-07-23', 'NELSON@GMAIL.COM', '123', 'ALUNO'); -- COD_ALUNO: 1
SELECT FROM INSERIR_ALUNO_E_PROFESSOR
('CARLOS', '22334455666', '1990-01-23', 'CARLOS@GMAIL.COM', '123', 'ALUNO'); -- COD_ALUNO: 2
SELECT FROM INSERIR_ALUNO_E_PROFESSOR
('FELIPE', '33445566777', '2000-06-09', 'FELIPE@GMAIL.COM', '123', 'ALUNO'); -- COD_ALUNO: 3
SELECT FROM INSERIR_ALUNO_E_PROFESSOR
('JOHN', '44556677888', '2000-02-10', 'JOHN@GMAIL.COM', '123', 'ALUNO'); -- COD_ALUNO: 4
SELECT FROM INSERIR_ALUNO_E_PROFESSOR
('ELCY', '55667788999', '1998-10-08', 'ELCY@GMAIL.COM', '123', 'ALUNO'); -- COD_ALUNO: 5

SELECT FROM INSERIR_ALUNO_E_PROFESSOR
('GEOVANE', '12345678912', '1986-05-02', 'GEOVANE@GMAIL.COM', '123', 'PROFESSOR'); -- COD_PROFESSOR: 1
SELECT FROM INSERIR_ALUNO_E_PROFESSOR
('VILARINHO', '23456789123', '1999-03-10', 'VILARINHO@GMAIL.COM', '123', 'PROFESSOR'); -- COD_PROFESSOR: 2
SELECT FROM INSERIR_ALUNO_E_PROFESSOR
('LUAN', '34567891234', '2000-08-10', 'LUAN@GMAIL.COM', '123', 'PROFESSOR'); -- COD_PROFESSOR: 3
SELECT FROM INSERIR_ALUNO_E_PROFESSOR
('MARCOS', '45678912345', '1997-10-01', 'MARCOS@GMAIL.COM', '123', 'PROFESSOR'); -- COD_PROFESSOR: 4
SELECT FROM INSERIR_ALUNO_E_PROFESSOR
('PEDRO', '56789123456', '1989-01-05', 'PEDRO@GMAIL.COM', '123', 'PROFESSOR'); -- COD_PROFESSOR: 5

---- SELECT * FROM ALUNO;
---- SELECT * FROM PROFESSOR;

--------------------------------------------------------------------- REMOVER_ALUNO_E_PROFESSOR ---------------------------------------------------------------------
--(PARÂMETROS: COD_USUARIO_DELETADO, TABELA)--

---- SELECT * FROM ALUNO;
---- SELECT * FROM PROFESSOR;

SELECT REMOVER_ALUNO_E_PROFESSOR(4, 'ALUNO');

SELECT REMOVER_ALUNO_E_PROFESSOR(4, 'PROFESSOR');

---- SELECT * FROM ALUNO;
---- SELECT * FROM PROFESSOR;

-------------------------------------------------------------------------- ATUALIZAR_SALDO --------------------------------------------------------------------------
--(PARÂMETROS: VALOR_SALDO_A_ALTERAR, CODIGO, TABELA)--

---- SELECT * FROM ALUNO;
---- SELECT * FROM PROFESSOR;

SELECT FROM ATUALIZAR_SALDO(10000, 1, 'ALUNO');
SELECT FROM ATUALIZAR_SALDO(10, 2, 'ALUNO');
SELECT FROM ATUALIZAR_SALDO(300, 3, 'ALUNO');
SELECT FROM ATUALIZAR_SALDO(5000, 5, 'ALUNO');

SELECT FROM ATUALIZAR_SALDO(30000, 1, 'PROFESSOR');
SELECT FROM ATUALIZAR_SALDO(-10000, 1, 'PROFESSOR');
SELECT FROM ATUALIZAR_SALDO(100, 2, 'PROFESSOR');
SELECT FROM ATUALIZAR_SALDO(50, 3, 'PROFESSOR');
SELECT FROM ATUALIZAR_SALDO(7000, 5, 'PROFESSOR');

---- SELECT * FROM ALUNO;
---- SELECT * FROM PROFESSOR;

---------------------------------------------------------------------------- SACAR_SALDO ----------------------------------------------------------------------------
--(PARÂMETROS: CODIGO, TABELA)--

---- SELECT * FROM ALUNO;
---- SELECT * FROM PROFESSOR;

SELECT SACAR_SALDO(3, 'ALUNO');

SELECT SACAR_SALDO(3, 'PROFESSOR');

---- SELECT * FROM ALUNO;
---- SELECT * FROM PROFESSOR;

-------------------------------------------------------------------------- CONSULTAR_SALDO --------------------------------------------------------------------------
--(PARÂMETROS: CODIGO, TABELA)--

---- SELECT * FROM ALUNO;
---- SELECT * FROM PROFESSOR;

SELECT CONSULTAR_SALDO(1, 'ALUNO');
SELECT CONSULTAR_SALDO(2, 'ALUNO');
SELECT CONSULTAR_SALDO(3, 'ALUNO');
SELECT CONSULTAR_SALDO(5, 'ALUNO');

SELECT CONSULTAR_SALDO(1, 'PROFESSOR');
SELECT CONSULTAR_SALDO(2, 'PROFESSOR');
SELECT CONSULTAR_SALDO(3, 'PROFESSOR');
SELECT CONSULTAR_SALDO(5, 'PROFESSOR');

---- SELECT * FROM ALUNO;
---- SELECT * FROM PROFESSOR;

---------------------------------------------------------------------------- CRIAR_CURSO ----------------------------------------------------------------------------
--(PARÂMETROS: COD_PROFESSOR, NOME_CURSO, DESCRICAO, PRECO)--

---- SELECT * FROM CURSO;

SELECT FROM CRIAR_CURSO(1, 'PROGRAMACAO', 'APRENDENDO ALGORITMOS E PROGRAMACAO', 250); -- COD_CURSO: 1
SELECT FROM CRIAR_CURSO(2, 'JOGOS', 'APRENDENDO PROGRAMACAO PARA JOGOS', 150); -- COD_CURSO: 2
SELECT FROM CRIAR_CURSO(3, 'MATEMATICA', 'APRENDENDO A FAZER CALCULOS', 100); -- COD_CURSO: 3
SELECT FROM CRIAR_CURSO(5, 'BÁSICO DE JAVA', 'APRENDENDO A PROGRAMAR EM JAVA', 400); -- COD_CURSO: 4
SELECT FROM CRIAR_CURSO(3, 'PROGRAMACAO SEM GRAFOS', 'APRENDENDO A PROGRAMAR SEM GRAFOS', 200); -- COD_CURSO: 5

---- SELECT * FROM CURSO;

--------------------------------------------------------------------------- DELETAR_CURSO ---------------------------------------------------------------------------
--(PARÂMETROS: COD_CURSO_DELETADO)--

---- SELECT * FROM CURSO;

SELECT FROM DELETAR_CURSO(4);

---- SELECT * FROM CURSO;

--------------------------------------------------------------------------- CRIAR_MODULOS ---------------------------------------------------------------------------
--(PARÂMETROS: CODIGO_CURSO, NOME_MODULO(ARRAY), DESCRICAO_MODULO(ARRAY))--

---- SELECT * FROM MODULO;

SELECT FROM CRIAR_MODULOS (
	3,
	ARRAY ['MODULO 1(MATEMATICA)', 'MODULO 2(MATEMATICA)', 'MODULO 3(MATEMATICA)'],
	ARRAY ['DESCRICAO 1(MATEMATICA)', 'DESCRICAO 2(MATEMATICA)', 'DESCRICAO 3(MATEMATICA)']
);  -- COD_MODULO: 1, 2, 3

SELECT FROM CRIAR_MODULOS (
	3,
	ARRAY ['MODULO DELETADO 1', 'MODULO DELETADO 2', 'MODULO DELETADO 1'],
	ARRAY ['DESCRICAO 1', 'DESCRICAO 2', 'DESCRICAO 3']
);  -- COD_MODULO: 4, 5, 6

---- SELECT * FROM MODULO;
---- SELECT * FROM CURSO; -- VEJA QUE ELE NÃO ESTÁ DISPONIVEL

-------------------------------------------------------------------------- DELETAR_MODULO ---------------------------------------------------------------------------
--(PARÂMETROS: CODIGO_MODULO--

---- SELECT * FROM MODULO;

SELECT FROM DELETAR_MODULO(4);
SELECT FROM DELETAR_MODULO(5);
SELECT FROM DELETAR_MODULO(6);

---- SELECT * FROM MODULO;

------------------------------------------------------------------------ CRIAR_DISCIPLINAS --------------------------------------------------------------------------
--(PARÂMETROS: CODIGO_MODULO, NOME_DISCIPLINA, DESCRICAO_DISCIPLINA)--

---- SELECT * FROM DISCIPLINA;

SELECT FROM CRIAR_DISCIPLINAS (
	1,
	ARRAY ['APRENDENDO A SOMAR', 'APRENDENDO A DIVIDIR', 'APRENDENDO A SUBTRAIR'],
	ARRAY ['DESCRICAO 1', 'DESCRICAO 2', 'DESCRICAO 3']
);  -- COD_DISCIPLINA: 1, 2, 3

SELECT FROM CRIAR_DISCIPLINAS (
	2,
	ARRAY ['APRENDENDO A DERIVADA', 'APRENDENDO A BASKARA', 'APRENDENDO A ALGEBRA'],
	ARRAY ['DESCRICAO 1', 'DESCRICAO 2', 'DESCRICAO 3']
);  -- COD_DISCIPLINA: 4, 5, 6

SELECT FROM CRIAR_DISCIPLINAS (
	3,
	ARRAY ['APRENDENDO RAIZ QUADRADA', 'APRENDENDO RAIZ CÚBICA', 'APRENDENDO OUTRAS RAIZES'],
	ARRAY ['DESCRICAO 1', 'DESCRICAO 2', 'DESCRICAO 3']
);  -- COD_DISCIPLINA: 7, 8, 9

SELECT FROM CRIAR_DISCIPLINAS (
	3,
	ARRAY ['APRENDENDO A EQUAÇÃO', 'APRENDENDO GEOMETRIA', 'APRENDENDO A PRODUTO CARTEZIADO'],
	ARRAY ['DESCRICAO 1', 'DESCRICAO 2', 'DESCRICAO 3']
);  -- COD_DISCIPLINA: 10, 11, 12

---- SELECT * FROM DISCIPLINA;
---- SELECT * FROM CURSO; -- VEJA QUE ELE NÃO ESTÁ DISPONIVEL

------------------------------------------------------------------------ DELETAR_DISCIPLINA -------------------------------------------------------------------------
--(PARÂMETROS: CODIGO_DISCIPLINA)--

---- SELECT * FROM DISCIPLINA;

SELECT FROM DELETAR_DISCIPLINA(10);
SELECT FROM DELETAR_DISCIPLINA(11);
SELECT FROM DELETAR_DISCIPLINA(12);

---- SELECT * FROM DISCIPLINA;

------------------------------------------------------------------------ CRIAR_VIDEO_AULAS --------------------------------------------------------------------------
--(PARÂMETROS: CODIGO_DISCIPLINA, TITULO_VIDEO(ARRAY), DESCRICAO(ARRAY), DURACAO(ARRAY))--

---- SELECT * FROM VIDEO_AULA;

SELECT FROM CRIAR_VIDEO_AULAS (
	1,
	ARRAY ['VIDEO 1', 'VIDEO 2', 'VIDEO 3'],
	ARRAY ['DESCRICAO 1', 'DESCRICAO 2', 'DESCRICAO 3'],
	ARRAY [10, 5, 3]
);  -- COD_VIDEO_AULA: 1, 2, 3

SELECT FROM CRIAR_VIDEO_AULAS (
	2,
	ARRAY ['VIDEO 1', 'VIDEO 2', 'VIDEO 3'],
	ARRAY ['DESCRICAO 1', 'DESCRICAO 2', 'DESCRICAO 3'],
	ARRAY [20, 10, 8]
);  -- COD_VIDEO_AULA: 4, 5, 6

SELECT FROM CRIAR_VIDEO_AULAS (
	3,
	ARRAY ['VIDEO 1', 'VIDEO 2', 'VIDEO 3'],
	ARRAY ['DESCRICAO 1', 'DESCRICAO 2', 'DESCRICAO 3'],
	ARRAY [2, 15, 10]
);  -- COD_VIDEO_AULA: 7, 8, 9

SELECT FROM CRIAR_VIDEO_AULAS (
	4,
	ARRAY ['VIDEO 1', 'VIDEO 2', 'VIDEO 3'],
	ARRAY ['DESCRICAO 1', 'DESCRICAO 2', 'DESCRICAO 3'],
	ARRAY [15, 15, 4]
);  -- COD_VIDEO_AULA: 10, 11, 12

SELECT FROM CRIAR_VIDEO_AULAS (
	5,
	ARRAY ['VIDEO 1', 'VIDEO 2', 'VIDEO 3'],
	ARRAY ['DESCRICAO 1', 'DESCRICAO 2', 'DESCRICAO 3'],
	ARRAY [6, 2, 14]
);  -- COD_VIDEO_AULA: 13, 14, 15

SELECT FROM CRIAR_VIDEO_AULAS (
	6,
	ARRAY ['VIDEO 1', 'VIDEO 2', 'VIDEO 3'],
	ARRAY ['DESCRICAO 1', 'DESCRICAO 2', 'DESCRICAO 3'],
	ARRAY [30, 15, 20]
);  -- COD_VIDEO_AULA: 16, 17, 18

SELECT FROM CRIAR_VIDEO_AULAS (
	7,
	ARRAY ['VIDEO 1', 'VIDEO 2', 'VIDEO 3'],
	ARRAY ['DESCRICAO 1', 'DESCRICAO 2', 'DESCRICAO 3'],
	ARRAY [16, 4, 18]
);  -- COD_VIDEO_AULA: 19, 20, 21

SELECT FROM CRIAR_VIDEO_AULAS (
	8,
	ARRAY ['VIDEO 1', 'VIDEO 2', 'VIDEO 3'],
	ARRAY ['DESCRICAO 1', 'DESCRICAO 2', 'DESCRICAO 3'],
	ARRAY [4, 6, 8]
);  -- COD_VIDEO_AULA: 22, 23, 24

---- SELECT * FROM CURSO; -- VEJA QUE ELE NÃO ESTÁ DISPONIVEL

SELECT FROM CRIAR_VIDEO_AULAS (
	9,
	ARRAY ['VIDEO 1', 'VIDEO 2', 'VIDEO 3'],
	ARRAY ['DESCRICAO 1', 'DESCRICAO 2', 'DESCRICAO 3'],
	ARRAY [18, 25, 15]
);  -- COD_VIDEO_AULA: 25, 26, 27

---- SELECT * FROM VIDEO_AULA;
---- SELECT * FROM CURSO; -- VEJA QUE ELE ESTÁ DISPONIVEL AGORA

------------------------------------------------------------------------ DELETAR_VIDEO_AULA -------------------------------------------------------------------------
--(PARÂMETROS: CODIGO_VIDEO_AULA)--
SELECT FROM DELETAR_VIDEO_AULA(27);

---- SELECT * FROM VIDEO_AULA;
---- SELECT * FROM CURSO; -- VEJA QUE ELE NÃO ESTÁ DISPONIVEL

------------------------------------------------------------------------ CRIAR_PRE_REQUISITO ------------------------------------------------------------------------
--(PARAMENTROS: COD_MODULO, COD_MODULO_PRE_REQUISITO)--

---- SELECT * FROM PRE_REQUISITO;

SELECT FROM CRIAR_PRE_REQUISITO(2, 1);
SELECT FROM CRIAR_PRE_REQUISITO(3, 2);
SELECT FROM CRIAR_PRE_REQUISITO(1, 3); -- NÃO É PARA DAR CERTO POIS ISSO RESULTARIA UM IMPASSE DE MODULOS QUE NUNCA PODEM SER ACESSADOS.

---- SELECT * FROM PRE_REQUISITO;

--------------------------------------------------------------------------- CRIAR_QUESTAO ---------------------------------------------------------------------------
--(PARAMENTROS: CODIGO_DISCIPLINA, TEXTO_INSERIDO)--

---- SELECT * FROM QUESTAO;

SELECT FROM CRIAR_QUESTAO(2, 'QUANTO É 9 / 3?'); -- COD_QUESTAO: 1
SELECT FROM CRIAR_QUESTAO(2, 'QUANTO É 50 / 2?'); -- COD_QUESTAO: 2
SELECT FROM CRIAR_QUESTAO(2, 'QUANTO É 20 / 4?'); -- COD_QUESTAO: 3
SELECT FROM CRIAR_QUESTAO(2, 'QUANTO É 1000 / 20?'); -- COD_QUESTAO: 4
SELECT FROM CRIAR_QUESTAO(2, 'QUANTO É 7 / 1?'); -- COD_QUESTAO: 5
SELECT FROM CRIAR_QUESTAO(8, 'QUANTO É A RAIZ CÚBICA DE 1?'); -- COD_QUESTAO: 6
SELECT FROM CRIAR_QUESTAO(8, 'QUANTO É A RAIZ CÚBICA DE 8?'); -- COD_QUESTAO: 7
SELECT FROM CRIAR_QUESTAO(8, 'QUANTO É A RAIZ CÚBICA DE 27?'); -- COD_QUESTAO: 8

---- SELECT * FROM QUESTAO;

-------------------------------------------------------------------------- DELETAR_QUESTAO --------------------------------------------------------------------------
--(PARAMENTROS: CODIGO_QUESTAO)--

---- SELECT * FROM QUESTAO;

SELECT FROM DELETAR_QUESTAO(5);

---- SELECT * FROM QUESTAO;

------------------------------------------------------------------------ CRIAR_QUESTIONARIO -------------------------------------------------------------------------
--(PARAMENTROS: NOME_INSERIDO, COD_DISCIPLINA_INSERIDA)--

---- SELECT * FROM QUESTIONARIO;

SELECT FROM CRIAR_QUESTIONARIO('DIVISÃO 1', 2); -- COD_QUESTIONARIO: 1
SELECT FROM CRIAR_QUESTIONARIO('DIVISÃO 2', 2); -- COD_QUESTIONARIO: 2
SELECT FROM CRIAR_QUESTIONARIO('DIVISÃO 3', 2); -- COD_QUESTIONARIO: 3
SELECT FROM CRIAR_QUESTIONARIO('RAIZ QUADRADA 1', 7); -- COD_QUESTIONARIO: 4
SELECT FROM CRIAR_QUESTIONARIO('RAIZ QUADRADA 2', 7); -- COD_QUESTIONARIO: 5
SELECT FROM CRIAR_QUESTIONARIO('RAIZ CUBICA 1', 8); -- COD_QUESTIONARIO: 6
SELECT FROM CRIAR_QUESTIONARIO('RAIZ CUBICA 2', 8); -- COD_QUESTIONARIO: 7

---- SELECT * FROM QUESTIONARIO;

----------------------------------------------------------------------- DELETAR_QUESTIONARIO ------------------------------------------------------------------------
--(PARAMENTROS: COD_QUESTIONARIO_DELETADO)--

---- SELECT * FROM QUESTIONARIO;

SELECT FROM DELETAR_QUESTIONARIO(5);

---- SELECT * FROM QUESTIONARIO;

------------------------------------------------------------------ VINCULAR_QUESTAO_A_QUESTIONARIO ------------------------------------------------------------------
--(PARAMENTROS: COD_QUESTIONARIO_VINCULADO, COD_QUESTAO_VINCULADA)--

---- SELECT * FROM QUESTAO_QUESTIONARIO;

SELECT FROM VINCULAR_QUESTAO_A_QUESTIONARIO(1, 1);
SELECT FROM VINCULAR_QUESTAO_A_QUESTIONARIO(2, 2);
SELECT FROM VINCULAR_QUESTAO_A_QUESTIONARIO(3, 3);
SELECT FROM VINCULAR_QUESTAO_A_QUESTIONARIO(3, 4);
SELECT FROM VINCULAR_QUESTAO_A_QUESTIONARIO(6, 6);
SELECT FROM VINCULAR_QUESTAO_A_QUESTIONARIO(7, 7);
SELECT FROM VINCULAR_QUESTAO_A_QUESTIONARIO(4, 8); -- NÃO DÁ CERTO PORQUE AS DISCIPLINAS SÃO DIFERENTES
SELECT FROM VINCULAR_QUESTAO_A_QUESTIONARIO(7, 8);

---- SELECT * FROM QUESTAO_QUESTIONARIO;

-------------------------------------------------------------------------- PUBLICAR_CURSO ---------------------------------------------------------------------------
--(PARÂMETROS: CODIGO_CURSO)--

SELECT PUBLICAR_CURSO(3); -- NÃO É PARA DAR CERTO

-- SELECT * FROM CURSO; -- VEJA QUE ELE NÃO ESTÁ DISPONIVEL

--SÓ PARA DEIXAR O CURSO NOVAMENTE DISPONIVEL:
SELECT FROM CRIAR_VIDEO_AULAS (
	9,
	ARRAY ['VIDEO 3'],
	ARRAY ['DESCRICAO 3'],
	ARRAY [15]
);  -- COD_VIDEO_AULA: 28

-- SELECT * FROM CURSO; -- VEJA QUE ELE ESTÁ DISPONIVEL

SELECT FROM PUBLICAR_CURSO(3); -- AGORA VAI DAR CERTO

-- SELECT * FROM CURSO; -- VEJA QUE ELE ESTÁ DISPONIVEL E PUBLICADO

--------------------------------------------------------------------------- COMPRAR_CURSO ---------------------------------------------------------------------------
--(EXECUTE COMO SUPER USUÁRIO)--
--(PARAMENTROS: COD_ALUNO_ANALISADO, COD_CURSO_ANALISADO)--

---- SELECT * FROM ALUNO_CURSO;
---- SELECT * FROM ALUNO_MODULO;

SELECT FROM COMPRAR_CURSO(2, 3); -- NÃO TEM SALDO O SUFICIENTE
SELECT FROM COMPRAR_CURSO(1, 5); -- CURSO AINDA NÃO PUBLICADO
SELECT FROM COMPRAR_CURSO(1, 3);

---- SELECT * FROM ALUNO_CURSO;
---- SELECT * FROM ALUNO_MODULO;

------------------------------------------------------------------------ ASSISTIR_VIDEO_AULA ------------------------------------------------------------------------
--(EXECUTE COMO SUPER USUÁRIO)--
--(PARAMENTROS: CODIGO_ALUNO, CODIGO_VIDEO_AULA)--

---- SELECT * FROM ALUNO_VIDEO_ASSISTIDO;

SELECT FROM ASSISTIR_VIDEO_AULA(2, 10); -- NÃO É PARA DAR CERTO POIS ESSE ALUNO NÃO ESTÁ NO CURSO
SELECT FROM ASSISTIR_VIDEO_AULA(1, 12); -- NÃO É PARA DAR CERTO POIS ESSE ALUNO NÃO TEM ACESSO AO MÓDULO DESSA VIDEO_AULA
SELECT FROM ASSISTIR_VIDEO_AULA(1, 1);

---- SELECT * FROM ALUNO_VIDEO_ASSISTIDO;

---- AGORA VAMOS ATIVAR ALGUNS MODULOS A PARTIR DO PRE_REQUISITO BATENDO A META DE ASSISTIR 60% DAS VIDEO_AULAS DELE (NESSE CASO O
---- MODULO 1 TEM 9 VIDEOAULAS, BASTA ASSISTIR 6, LEMBRANDO QUE O ALUNO 1 JÁ ASSISTIU 1):

---- SELECT * FROM MODULO;
---- SELECT * FROM PRE_REQUISITO;

-- PRECISAMOS QUE UM OUTRO ALUNO COMPRE O CURSO SÓ PARA VER SE UM ALUNO INFLUENCIA DE ALGUM MODO NO OUTRO
SELECT FROM COMPRAR_CURSO(5, 3);

---- SELECT * FROM ALUNO;
---- SELECT * FROM ALUNO_VIDEO_ASSISTIDO;
---- SELECT * FROM ALUNO_MODULO;

SELECT FROM ASSISTIR_VIDEO_AULA(1, 2);
SELECT FROM ASSISTIR_VIDEO_AULA(1, 3);
SELECT FROM ASSISTIR_VIDEO_AULA(1, 4);
SELECT FROM ASSISTIR_VIDEO_AULA(1, 5);

---- SELECT * FROM ALUNO_MODULO; -- AINDA NÃO BATEMOS A META PARA O ALUNO 1

SELECT FROM ASSISTIR_VIDEO_AULA(5, 1);
SELECT FROM ASSISTIR_VIDEO_AULA(5, 2);
SELECT FROM ASSISTIR_VIDEO_AULA(5, 3);

---- SELECT * FROM ALUNO_MODULO; -- ASSISTIMOS AULAS MAS AINDA NÃO BATEMOS A META PARA O ALUNO 5 E ISSO NÃO INFLUENCIA NO 1

SELECT FROM ASSISTIR_VIDEO_AULA(1, 6);

---- SELECT * FROM ALUNO_MODULO; -- BATEMOS A META DO MODULO 1 ESPECIFICADAMENTE PARA O ALUNO 1, E AGORA O MODULO 2 FICA ACESSIVEL PARA ELE

-------------------------------------------------------------------------- RECEBER_SALARIO --------------------------------------------------------------------------
--(PARAMENTROS: COD_PROFESSOR_ANALISADO)--

---- SELECT * FROM PROFESSOR; -- NÃO HOUVERAM ALTERAÇÕES NO SALDO

-- VAMOS FAZER UM OUTRO CURSO DO MESMO PROFESSOR SER COMPRADO E OUTRO CURSO DE OUTRO PROFESSOR
UPDATE CURSO SET DISPONIBILIDADE=TRUE WHERE COD_CURSO IN (1, 5); UPDATE CURSO SET PUBLICADO=TRUE WHERE COD_CURSO IN (1, 5); -- SÓ PARA PODERMOS COMPRAR O CURSO ....
SELECT FROM COMPRAR_CURSO(5, 5); -- O CURSO 5 TAMBÉM É DO PROFESSOR 3, ELE DEVE RECEBER O SALARIO POR ESSE CURSO TAMBÉM
SELECT FROM COMPRAR_CURSO(5, 1); -- O CURSO 1 É DO PROFESSOR 1, ENTÃO O PROFESSOR 3 NÃO DEVE RECEBER O SALÁRIO

-- SÓ PARA O PROFESSOR PEGAR UM INTERVALO EM QUE ELE POSSA RECEBER O DINHEIRO ....
UPDATE ALUNO_CURSO SET DATA_COMPRA = '2019-12-01'; UPDATE PROFESSOR SET DATA_ULTIMO_PAGAMENTO = '2018-07-01';

---- SELECT * FROM PROFESSOR;
---- SELECT * FROM ALUNO_CURSO;
---- SELECT * FROM CURSO;

SELECT FROM RECEBER_SALARIO(3);

---- SELECT * FROM PROFESSOR; -- AGORA O PROFESSOR 3 GANHOU O SALÁRIO DOS SEUS CURSOS QUE FORAM COMPRADOS.

--!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!! --
-- FAÇA UM UPDATE ALUNO_CURSO SET DATA_COMPRA = '2020-01-25', MAS COLOCANDO UMA DATA PRÓXIMA À QUE VOCÊ ESTÁ EXECUTANDO, PARA O ALUNO NÃO EXPIRAR DATA DE CURSAR.
--!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!! --

------------------------------------------------------------------- SUBMETER_RESPOSTA_DE_QUESTAO --------------------------------------------------------------------
--(PARAMENTROS: COD_ALUNO_ANALISADO, COD_QUESTAO_SUBMETIDA, RESPOSTA_ALUNO_SUBMETIDA)--

---- SELECT * FROM QUESTAO_ALUNO;

SELECT FROM SUBMETER_RESPOSTA_DE_QUESTAO(1, 1, 'O RESULTADO É 3'); -- COD_QUESTAO_ALUNO: 1
SELECT FROM SUBMETER_RESPOSTA_DE_QUESTAO(1, 2, 'O RESULTADO É 10'); -- COD_QUESTAO_ALUNO: 2
SELECT FROM SUBMETER_RESPOSTA_DE_QUESTAO(1, 3, 'O RESULTADO É 5'); -- COD_QUESTAO_ALUNO: 3
SELECT FROM SUBMETER_RESPOSTA_DE_QUESTAO(5, 1, 'O RESULTADO É 5'); -- COD_QUESTAO_ALUNO: 4
SELECT FROM SUBMETER_RESPOSTA_DE_QUESTAO(1, 8, 'O RESULTADO É 3'); -- NÃO DÁ CERTO POIS O ALUNO NÃO TEM ACESSO ÀS QUESTÕES DESSE MÓDULO

---- SELECT * FROM QUESTAO_ALUNO;

-------------------------------------------------------------------- LISTAR_QUESTOES_DOS_ALUNOS ---------------------------------------------------------------------
--(PARAMENTROS: CODIGO_PROFESSOR)--

---- SELECT * FROM QUESTAO_ALUNO;

SELECT LISTAR_QUESTOES_DOS_ALUNOS(3);

---- SELECT * FROM QUESTAO_ALUNO;

------------------------------------------------------------------------- CORRIGIR_QUESTAO --------------------------------------------------------------------------
--(PARAMENTROS: COD_QUESTAO_ALUNO_CORRIGIDA, RESPOSTA_CORRETA_INSERIDA)--

---- SELECT * FROM QUESTAO_ALUNO;

SELECT FROM CORRIGIR_QUESTAO(1, 'CORRETA');
SELECT FROM CORRIGIR_QUESTAO(2, 'INCORRETA');
SELECT FROM CORRIGIR_QUESTAO(3, 'CORRETA');
SELECT FROM CORRIGIR_QUESTAO(4, 'ERROU'); -- NÃO VAI SER ACEITO.
SELECT FROM CORRIGIR_QUESTAO(4, 'INCORRETA');

---- SELECT * FROM QUESTAO_ALUNO;

--------------------------------------------------------------------------- AVALIAR_CURSO ---------------------------------------------------------------------------
--(PARAMENTROS: COD_ALUNO_CURSO_ANALISADO, NOTA_AVALIACAO_ANALISADA)--

---- SELECT * FROM ALUNO_CURSO;

SELECT FROM AVALIAR_CURSO(1, 10); -- NÃO DÁ CERTO
SELECT FROM AVALIAR_CURSO(1, 4);
SELECT FROM AVALIAR_CURSO(2, 3);

---- SELECT * FROM ALUNO_CURSO;
