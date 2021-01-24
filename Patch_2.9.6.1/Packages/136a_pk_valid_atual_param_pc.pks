CREATE OR REPLACE PACKAGE CSF_OWN.PK_VALID_ATUAL_PARAM_PC IS

----------------------------------------------------------------------------------------------------------------------------------------------------------
--
-- Em 07/01/2021   - Jo�o Carlos
-- Redmine #74522  - Par�metros gerais Sped Contribui��es, quando a escritura��o � centralizada o plano de contas
--                 - dever� ser o da matriz e n�o da filial. 
-- Altera��es      - Alterado cursor c_empresa para retornar um campo com o id da empresa Matriz,
--                 - Altera��o da chamada da pk_csf_efd_pc.fkb_recup_pcta_ccto_pc, enveiando para retorno do plano de contas
--                 - o ID da empresa Matriz.
-- Rotina          - PKB_VAL_ATU_PC
--
-- Em 10/08/2020 - Allan Magrini
-- Redmine #68646 - Melhoria na Rotina de gera��o de contas EFD
-- Alterados as chamadas fkb_recup_pcta_ccto_pc novo campo COD_ST_PISCOFINS da tabela PARAM_EFD_CONTR_GERAL
-- Rotina: PKB_VAL_ATU_CC,PKB_VAL_ATU_PC
--
-- Em 21/07/2020 - thiago Denadai / Armando
-- Redmine #69584 - Valida��o e atualiza��o de informa��es blocos A,C,D,F e I � Insert de contas cont�beis para modelo cupom 59 - SAT
-- Rotina: PKB_VAL_ATU_PC
--
-- Em 03/06/2019 - Renan Alves
-- Redmine #54799 - Atualizar a packge PK_VALID_ATUAL_PARAM_PC
-- Foi inclu�do o modelo de documento fiscal 'ND - Nota de D�bito' nos cursores C_A170_CT e C_A170_PL.
-- Rotina: pkb_val_atu_cc e pkb_val_atu_pc
-- 
-- Em 03/10/2018 - Angela In�s.
-- Redmine #47522 - Alterar o processo de Atualiza��o de Plano de Conta - Sped EFD-Contribui��es.
-- No processo que atualiza os planos de contas, considerar as notas fiscais de modelo "65" da mesma forma que s�o consideradas as notas fiscais de modelo "55".
-- Rotina: pkb_val_atu_pc.
--
-- Em 06/07/2018 - Karina de Paula
-- Redmine #44759 - Melhoria Apura��o PIS/COFINS - Bloco F100
-- Rotina Alterada: PKB_VAL_ATU_CC / PKB_VAL_ATU_PC => Retirada a verifica��o dm_gera_receita
--
-- Em 16/05/2018 - Angela In�s.
-- Redmine #42924 - Corre��es nos processos de Valida��o e Atualiza��o de Plano de Contas e Centros de Custos - Sped EFD-Contribui��es.
-- Atualizar os conhecimentos de transporte com o c�digo da conta cont�bil.
-- Ser� atualizado o c�digo da conta encontrado para o Imposto do PIS, e caso n�o tenha, ser� atualizado com o c�digo da conta encontrado para o imposto da COFINS.
-- Tabela: conhec_transp.cod_cta. Tabelas: ct_comp_doc_pis.planoconta_id e ct_comp_doc_cofins.planoconta_id.
-- Rotina: pkb_val_atu_pc.
--
-- Em 25/04/2018 - Karina de Paula
-- Redmine #41878 - Novo processo para o registro Bloco F100 - Demais Documentos e Opera��es Geradoras de Contribui��es e Cr�ditos.
-- Inclu�da a verifica��o do campo dm_gera_receita = 1, nos cursores dos objetos abaixo:
-- -- Rotina Alterada: PKB_VAL_ATU_CC / PKB_VAL_ATU_PC
--
-- Em 25/04/2018 - Angela In�s.
-- Redmine #42169 - Corre��es: Registro C100 - Atualiza��o do Plano de Contas; Convers�o de CTE - CFOP.
-- Registro C100 - Notas Fiscais de modelo 55. Na montagem do arquivo utilizamos o C�digo da Conta Cont�bil atrav�s do Item da Nota Fiscal
-- (item_nota_fiscal.cod_cta). Corre��o: No processo de atualiza��o de plano de conta, n�o verificar se as notas possuem valores isentos de cr�ditos para
-- atualiza��o do C�digo da Conta Cont�bil no Item da Nota Fiscal. Antes: cod_st diferente de ('70','71','72','73','74','75'). Depois: n�o considerar o cod_st.
-- Rotina: pkb_val_atu_pc - cursor c_c170_pl.
--
-- Em 23/03/2018 - Angela In�s.
-- Redmine #40901 - Corre��o nas fun��es que recuperam Plano de Contas de Centros de Custos.
-- Eliminar as fun��es: fkb_recup_pcta_pis, fkb_recup_pcta_cofins, fkb_recup_ccust_pis e fkb_recup_ccust_cofins.
--
-- Em 11/01/2018 - Angela In�s.
-- Redmine #38390 - Corre��o na valida��o para recupera��o das NFS-e, Venda de Consumidor e Redu��o Z.
-- Recuperar as informa��es das NFS-e, Venda de Consumidor e Redu��o Z, para atualiza��o do Plano de Contas e Centro de Custo.
-- Rotina: pkb_val_atu_pc.
--
-- Em 10/01/2018 - Angela In�s.
-- Redmine #38364 - Corre��o na recupera��o dos par�metros - Planos de Contas e Centros de Custos - PIS e COFINS.
-- 1) Atender a recupera��o dos planos de contas e centros de custos atrav�s dos par�metros enviados dos documentos fiscais e registros dos Blocos F e I.
-- 2) N�o encontrando par�metros atrav�s do item 1, o processo ir� recuperar os planos de contas e centros de custos com apenas um dos campos enviado no par�metro, e os outros como sendo nulos. Exemplo: en_dm_ind_emit = tabela, e os outros campos da tabela como sendo nulos (is null).
-- 3) Criar processo para validar o per�odo de validade do par�metro: data inicial e data final, tabela param_efd_contr_geral.
-- N�o poder� existir mais de um per�odo aberto sem a data de finaliza��o, e n�o poder� ocorrer per�odos com intervalos intercalados em outros per�odos.
-- Rotinas: pkb_val_per, pkb_val_atu_pc e pkb_val_atu_cc.
--
-- Em 09/01/2018 - Angela In�s.
-- Redmine #38308 - Corre��es nos processos de valida��o.
-- Os registros que possuem data devem estar dentro do per�odo inicial e final utilizado para valida��o.
-- Rotinas: pkb_val_atu_pc e pkb_val_atu_cc.
--
-- Em 12/12/2017 - Angela In�s.
-- Especifica��o da package - Processo de valida��o das informa��es dos Blocos A, C, D, F e I.
-- Rotinas para valida��o dos par�metros para PIS e COFINS, dos registros dos blocos A, C, D, F e I.
-- Redmine #37054. 
--
----------------------------------------------------------------------------------------------------------------------------------------------------------
--| Vari�veis dos tipos de registros
   gt_row_valid_atual_param_pc   valid_atual_param_pc%rowtype;

--| Declara��o de constantes
   erro_de_validacao  constant number := 1;
   erro_inform_geral  constant number := 35; -- 35-Informa��o Geral
   erro_de_sistema    constant number := 2;

--| Vari�veis para logs/mensagens
   gv_obj_referencia  log_generico.obj_referencia%type := null;
   gn_referencia_id   log_generico.referencia_id%type := null;
   gv_mensagem_log    log_generico.mensagem%type := null;
   gv_resumo_log      log_generico.resumo%type := null;

---------------------------------------------------------------------------------------------------------------------------------------------------
-- Processo para validar nos documentos relacionados aos blocos  A, C, D, F e I, a aus�ncia e atualiza��o dos planos de contas e centros de custos
-- Rotina a ser executada atrav�s da tela/portal/menu: Sped/PIS-COFINS/Valida��o e Atualiza��o dos Registros
-- Par�metro de entrada:
-- en_validatualparampc_id: tabela valid_atual_param_pc, coluna id.
--
PROCEDURE PKB_VALIDAR_ATUALIZAR( EN_VALIDATUALPARAMPC_ID IN VALID_ATUAL_PARAM_PC.ID%TYPE );

----------------------------------------------------------------------------------------------------------------------------------------------------------

END PK_VALID_ATUAL_PARAM_PC;
/
