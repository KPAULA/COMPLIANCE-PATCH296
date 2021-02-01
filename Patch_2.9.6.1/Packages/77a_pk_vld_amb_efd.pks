create or replace package csf_own.pk_vld_amb_efd is

-------------------------------------------------------------------------------------------------------
--
-- Especifica��o do pacote de procedimentos de Valida��o do Ambiente do sped fiscal    
--
-- Em 25/01/2021   - Allan Magrini - 2.9.4-6 / 2.9.5-3 / 2.9.6
-- Redmine #75390  - N�o est� montando 0200 para o item usado no 1400
-- Rotina Alterada -  pkb_vld_reg_1400, ajuste no if da fase para validar cod ipm por uf verificando se a uf esta cadastrada no parametro PARAM_EFD_ICMS_IPI.DM_COD_ITEM_IPM_UF
-- 
-- Em 02/09/2020   - Wendel Albino
-- Redmine #69103  - Alterar gera��o do Sped Fiscal para contribuintes de ISS no DF
-- Rotina Alterada - pkb_vld_efd -> criacao de validacao se empresa logada � <> DF e dm_ind_ativ = '2', gera erro de validacao
--
-- Em 09/10/2019 - Allan Magrini.
-- Redmine #59460 - Gravar item faltante no log.
-- Foi adicionado no log do 1400 o c�digo e nome do item e empresa que falta no relacionamento IPM
-- Rotina: pkb_vld_reg_1400
--
-- Em 12/04/2019 - Renan Alves.
-- Redmine #53441 - ERRO NA GERA��O DO ARQUIVO R1400. 
-- Foi criada uma nova procedure, que realiza a valida��o das informa��es do registro 1400
-- e informa��es referente ao c�digo IPM do item/produto da empresa de abertura.
-- Rotina: pkb_vld_reg_1400
--
-- Em 05/02/2019 - Angela In�s.
-- Redmine #51225 - Considerar o C�digo (CD) da vers�o para recuperar o Identificador da Vers�o de leiaute, e Verificar as mensagens/logs.
-- Recuperar o C�digo (CD) da vers�o, para recuperar o Identificador da Vers�o de leiaute, no momento da valida��o do registro de abertura.
-- O registro de leiaute possui o C�digo (VERSAO_LAYOUT_EFD.CD) e a Vers�o (VERSAO_LAYOUT_EFD.VERSAO), como sendo chave �nica, e no processo estamos considerando
-- somente a Vers�o (VERSAO_LAYOUT_EFD.VERSAO).
-- Rotina: pkb_vld_abertura_efd.
-- Verificar as mensagens/log que est�o sendo geradas na tabela log_generico e ficam com a coluna RESUMO como nulo.
-- Rotina: pkb_vld_efd.
--
-------------------------------------------------------------------------------------------------------------------------------------------
--
-- Em 21/08/2013 - Angela In�s.
-- Redmine #451 - Valida��o de informa��es Fiscais.
-- Inclus�o do processo de valida��o das notas fiscais, dos conhecimentos de transporte e dos cupons fiscais.
-- Rotina: pkb_vld_efd.
--
-- Em 11/12/2013 - Angela In�s.
-- Eliminadas as fun��es que validam os documentos fiscais.
-- Rotina: pkb_vld_efd.
--
-- Em 18/03/2014 - Angela In�s.
-- Redmine #2049 - Gera��o do Sped Fiscal ICMS/IPI - Inclus�o do Bloco K.
-- Ao desfazer a situa��o 5-Em gera��o, o status dever� voltar para 2-Validado.
-- Rotina: pkb_desfazer.
--
-- Em 13/10/2014 - Angela In�s.
-- Redmine #4777 - Erro em desfazer e demonstra��o de log sped fiscal contimatic.
-- Corre��o nos processos de validar e desfazer sped fiscal contimatic:
-- 1) Valida��o: alterar para que as tabelas e vari�veis sejam relacionadas ao processo Contimatic (abertura_efd_cont).
-- 2) Desfazer: alterar para que as tabelas e vari�veis sejam relacionadas ao processo Contimatic (abertura_efd_cont).
-- Rotinas: pkb_vld_efd_cont e pkb_desfazer_cont.
--
-- Em 10/11/2014 - Angela In�s.
-- Redmine #5111 - Erro ao gerar o arquivo e depois para desfazer. 
-- Voltar a situa��o do arquivo para 2-Validado quano o mesmo estver com 5-Em gera��o.
-- Rotina: pkb_desfazer_cont.
--
-- Em 12/02/2017 - Leandro Savenhago
-- Redmine #39392 - Sped Fiscal - Valida��o e Gera��o do arquivo do Sped est� demorando por volta de 45 minutos
-- Rotina: pkb_vld_efd.
--
-------------------------------------------------------------------------------------------------------
--
-- Vari�veis utilizadas
   gt_row_abertura_efd_cont abertura_efd_cont%rowtype;
   gv_resumo                log_generico.resumo%type := null;

-------------------------------------------------------------------------------------------------------

-- Procedimento inicia a vali��o do ambiente do Sped Fiscal
procedure pkb_vld_efd ( en_aberturaefd_id in abertura_efd.id%type );

-------------------------------------------------------------------------------------------------------

-- Procedimento desfaz a situa��o de processo do Sped Fiscal

procedure pkb_desfazer ( en_aberturaefd_id in abertura_efd.id%type );

-------------------------------------------------------------------------------------------------------

-- Procedimento inicia a vali��o do ambiente do Sped Fiscal  (contimatic)
procedure pkb_vld_efd_cont ( en_aberturaefdcont_id in abertura_efd_cont.id%type );

-------------------------------------------------------------------------------------------------------

-- Procedimento desfaz a situa��o de processo do Sped Fiscal (contimatic)

procedure pkb_desfazer_cont ( en_aberturaefdcont_id in abertura_efd_cont.id%type );

-------------------------------------------------------------------------------------------------------

end pk_vld_amb_efd;
/
