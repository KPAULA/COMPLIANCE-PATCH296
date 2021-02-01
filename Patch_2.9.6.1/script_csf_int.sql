-------------------------------------------------------------------------------------------
Prompt INI Patch 2.9.6.1 - Alteracoes no CSF_INT
-------------------------------------------------------------------------------------------
SET DEFINE OFF
/

--------------------------------------------------------------------------------------------------------------------------------------
Prompt INI Redmine #74874 - Cria��o de indice para as VW_CSF_CONHEC_TRANSP, VW_CSF_CONHEC_TRANSP_EMIT, VW_CSF_CONHEC_TRANSP_TOMADOR - LIBERADO Release_2.9.7.1, Patch_2.9.6.1 e Patch_2.9.5.4
--------------------------------------------------------------------------------------------------------------------------------------
declare
   --
   procedure pExec_Imed(ev_sql long) is
   begin
      --
      begin
         execute immediate ev_sql;
      exception
         when others then
            null;
      end;      
      --
   end pExec_Imed;
   --
begin
   --VW_CSF_CONHEC_TRANSP
   pExec_Imed('create index CSF_INT.VW_CSF_CONHEC_TRANSP_IDX1 on CSF_INT.VW_CSF_CONHEC_TRANSP (CPF_CNPJ_EMIT) tablespace CSF_INDEX');
   --
   pExec_Imed('create index CSF_INT.VW_CSF_CONHEC_TRANSP_IDX10 on CSF_INT.VW_CSF_CONHEC_TRANSP (CPF_CNPJ_EMIT, DM_IND_EMIT, DT_HR_EMISSAO, DT_SAI_ENT) tablespace CSF_INDEX');
   --
   pExec_Imed('create index CSF_INT.VW_CSF_CONHEC_TRANSP_IDX2 on CSF_INT.VW_CSF_CONHEC_TRANSP (CPF_CNPJ_EMIT, DT_HR_EMISSAO) tablespace CSF_INDEX');
   --
   pExec_Imed('create index CSF_INT.VW_CSF_CONHEC_TRANSP_IDX3 on CSF_INT.VW_CSF_CONHEC_TRANSP (CPF_CNPJ_EMIT, DT_HR_EMISSAO, DM_IND_EMIT, COD_MOD, DM_ST_PROC) tablespace CSF_INDEX');
   --
   pExec_Imed('create index CSF_INT.VW_CSF_CONHEC_TRANSP_IDX4 on CSF_INT.VW_CSF_CONHEC_TRANSP (CPF_CNPJ_EMIT, DM_IND_EMIT, COD_MOD, DM_ST_PROC) tablespace CSF_INDEX');
   --
   pExec_Imed('create index CSF_INT.VW_CSF_CONHEC_TRANSP_IDX5 on CSF_INT.VW_CSF_CONHEC_TRANSP (CPF_CNPJ_EMIT, DM_IND_EMIT, DT_HR_EMISSAO, DT_SAI_ENT, COD_MOD, DM_ST_PROC) tablespace CSF_INDEX');
   --
   pExec_Imed('create index CSF_INT.VW_CSF_CONHEC_TRANSP_IDX6 on CSF_INT.VW_CSF_CONHEC_TRANSP (CPF_CNPJ_EMIT, DM_IND_EMIT, DT_HR_EMISSAO, COD_MOD, DM_ST_PROC) tablespace CSF_INDEX');
   --
   pExec_Imed('create index CSF_INT.VW_CSF_CONHEC_TRANSP_IDX7 on CSF_INT.VW_CSF_CONHEC_TRANSP (CPF_CNPJ_EMIT, DM_IND_EMIT, DT_SAI_ENT, COD_MOD, DM_ST_PROC) tablespace CSF_INDEX');
   --
   pExec_Imed('create index CSF_INT.VW_CSF_CONHEC_TRANSP_IDX8 on CSF_INT.VW_CSF_CONHEC_TRANSP (CPF_CNPJ_EMIT, DM_IND_EMIT, DT_HR_EMISSAO) tablespace CSF_INDEX');
   --
   pExec_Imed('create index CSF_INT.VW_CSF_CONHEC_TRANSP_IDX9 on CSF_INT.VW_CSF_CONHEC_TRANSP (CPF_CNPJ_EMIT, DM_IND_EMIT, DT_SAI_ENT) tablespace CSF_INDEX');
   --VW_CSF_CONHEC_TRANSP_EMIT
   pExec_Imed('create index CSF_INT.VW_CSF_CONHEC_TRANSP_EMIT_IDX1 on CSF_INT.VW_CSF_CONHEC_TRANSP_EMIT (CPF_CNPJ_EMIT, DM_IND_EMIT, DM_IND_OPER, COD_PART, COD_MOD, SERIE, NRO_CT) tablespace CSF_INDEX');
   --
   pExec_Imed('create index CSF_INT.VW_CSF_CONHEC_TRANSP_EMIT_IDX2 on CSF_INT.VW_CSF_CONHEC_TRANSP_EMIT (CPF_CNPJ_EMIT, DM_IND_EMIT, DM_IND_OPER, COD_MOD, SERIE, NRO_CT) tablespace CSF_INDEX');
   --VW_CSF_CONHEC_TRANSP_TOMADOR
   pExec_Imed('create index CSF_INT.VW_CSF_CONHEC_TRANSP_TOMA_IDX1 on CSF_INT.VW_CSF_CONHEC_TRANSP_TOMADOR (CPF_CNPJ_EMIT, DM_IND_EMIT, DM_IND_OPER, COD_PART, COD_MOD, SERIE, NRO_CT) tablespace CSF_INDEX');
   --
   pExec_Imed('create index CSF_INT.VW_CSF_CONHEC_TRANSP_TOMA_IDX2 on CSF_INT.VW_CSF_CONHEC_TRANSP_TOMADOR (CPF_CNPJ_EMIT, DM_IND_EMIT, DM_IND_OPER, COD_MOD, SERIE, NRO_CT) tablespace CSF_INDEX');
   --
exception 
   when others then
      raise_application_error(-20001, 'Erro no script #74874 - Erro: ' || sqlerrm);
end;
/
--------------------------------------------------------------------------------------------------------------------------------------
Prompt FIM Redmine #74874 - Cria��o de indice para as VW_CSF_CONHEC_TRANSP, VW_CSF_CONHEC_TRANSP_EMIT, VW_CSF_CONHEC_TRANSP_TOMADOR - LIBERADO Release_2.9.7.1, Patch_2.9.6.1 e Patch_2.9.5.4
--------------------------------------------------------------------------------------------------------------------------------------

-------------------------------------------------------------------------------------------------------------------------------------------
Prompt INI - Redmine #71565  - Inclus�o de registros C180, C185, H030, 1250 e 1255 na gera��o do Sped Fiscal estado MG
-------------------------------------------------------------------------------------------------------------------------------------------
 -- 
 declare
  --
  vn_existe number := null;
  vn_fase number := 0;
  --
begin
  --
  begin
    select count(0)
      into vn_existe
      from all_objects a
     where upper(a.owner)       = 'CSF_INT'
       and upper(a.object_name) = 'VW_CSF_NF_INF_COMPL_OP_ENT_ST';
  exception
    when others then
      vn_existe := 0;
  end;
  --
  if nvl(vn_existe, 0) = 0 then
    --
    begin
      execute immediate 'create table CSF_INT.VW_CSF_NF_INF_COMPL_OP_ENT_ST ( CPF_CNPJ_EMIT           VARCHAR2(14)  not null,
                                                                              DM_IND_EMIT              NUMBER(1)      not null,
                                                                              DM_IND_OPER             NUMBER(1)      not null,
                                                                              COD_PART                VARCHAR2(60),
                                                                              COD_MOD                  VARCHAR2(2)    not null,
                                                                              SERIE                    VARCHAR2(3)    not null,
                                                                              NRO_NF                  NUMBER(9)      not null,
                                                                              NRO_ITEM                NUMBER        not null,
                                                                              DM_COD_RESP_RET          NUMBER(1)      not null,
                                                                              QTDE_CONV                NUMBER(19,6),
                                                                              UNID                    VARCHAR2(6),
                                                                              VL_UNIT_CONV            NUMBER(19,6),
                                                                              VL_UNIT_ICMS_OP_CONV    NUMBER(19,6),
                                                                              VL_UNIT_BC_ICMS_ST_CONV  NUMBER(19,6),
                                                                              VL_UNIT_ICMS_ST_CONV    NUMBER(19,6),
                                                                              VL_UNIT_FCP_ST_CONV      NUMBER(19,6),
                                                                              DM_COD_DA                VARCHAR2(1),
                                                                              NUM_DA                  VARCHAR2(255)
                                                                    ) tablespace csf_data';
    exception
      when dup_val_on_index then
        raise_application_error(-20001, 'Tabela VW_CSF_NF_INF_COMPL_OP_ENT_ST ja existe.');
      when others then
        raise_application_error(-20001, 'Erro no script #70824. Criacao da tabela VW_CSF_NF_INF_COMPL_OP_ENT_ST. Erro: ' || sqlerrm);
    end;
    --
    end if;
    --
    begin
      --
      execute immediate 'comment on table CSF_INT.VW_CSF_NF_INF_COMPL_OP_ENT_ST is ''Informa��es Complementares das Opera��es de Entrada de Mercadorias Sujeitas � Substitui��o Tribut�ria - Registro C180'' ';
      execute immediate 'comment on column CSF_INT.VW_CSF_NF_INF_COMPL_OP_ENT_ST.DM_COD_RESP_RET    is ''C�digo que indica o respons�vel pela reten��o do ICMS ST: 1-Remetente Direto / 2-Remetente Indireto / 3-Pr�prio declarante'' ';
      execute immediate 'comment on column CSF_INT.VW_CSF_NF_INF_COMPL_OP_ENT_ST.QTDE_CONV    is ''Quantidade do item convertida na unidade de controle de estoque'' ';
      execute immediate 'comment on column CSF_INT.VW_CSF_NF_INF_COMPL_OP_ENT_ST.UNID    is ''Sigla da unidade adotada para informar o campo QUANT_CONV'' ';
      execute immediate 'comment on column CSF_INT.VW_CSF_NF_INF_COMPL_OP_ENT_ST.VL_UNIT_CONV    is ''Valor unit�rio da mercadoria, considerando a unidade utilizada para informar o campo "QUANT_CONV"'' ';
      execute immediate 'comment on column CSF_INT.VW_CSF_NF_INF_COMPL_OP_ENT_ST.VL_UNIT_ICMS_OP_CONV    is ''Valor unit�rio do ICMS opera��o pr�pria que o informante teria direito ao cr�dito caso a mercadoria estivesse sob o regime comum de tributa��o, considerando unidade utilizada para informar o campo "QUANT_CONV"'' ';
      execute immediate 'comment on column CSF_INT.VW_CSF_NF_INF_COMPL_OP_ENT_ST.VL_UNIT_BC_ICMS_ST_CONV    is ''Valor unit�rio da base de c�lculo do imposto pago ou retido anteriormente por substitui��o, considerando a unidade utilizada para informar o campo "QUANT_CONV", aplicando-se redu��o, se houver'' ';
      execute immediate 'comment on column CSF_INT.VW_CSF_NF_INF_COMPL_OP_ENT_ST.VL_UNIT_ICMS_ST_CONV    is ''Valor unit�rio do imposto pago ou retido anteriormente por substitui��o, inclusive FCP se devido, considerando a unidade utilizada para informar o campo "QUANT_CONV"'' ';
      execute immediate 'comment on column CSF_INT.VW_CSF_NF_INF_COMPL_OP_ENT_ST.VL_UNIT_FCP_ST_CONV    is ''Valor unit�rio do FCP_ST agregado ao valor informado no campo "VL_UNIT_ICMS_ST_CONV"'' ';
      execute immediate 'comment on column CSF_INT.VW_CSF_NF_INF_COMPL_OP_ENT_ST.DM_COD_DA    is ''C�digo do modelo do documento de arrecada��o: 0 � Documento estadual de arrecada��o / 1 � GNRE'' ';
      execute immediate 'comment on column CSF_INT.VW_CSF_NF_INF_COMPL_OP_ENT_ST.NUM_DA    is ''N�mero do documento de arrecada��o estadual, se houver'' ';
       --
    exception
      when others then
        raise_application_error(-20101, 'Erro no script #70824. Problemas ao criar o coment�rio da tabela VW_CSF_NF_INF_COMPL_OP_ENT_ST. ' || sqlerrm);
    end;
    --
    begin
      execute immediate 'grant select, insert, update, delete on CSF_INT.VW_CSF_NF_INF_COMPL_OP_ENT_ST to csf_own';
      execute immediate 'grant select, insert, update, delete on CSF_INT.VW_CSF_NF_INF_COMPL_OP_ENT_ST to csf_work';
    exception
      when others then
        raise_application_error(-20101, 'Erro no script #70824. Problemas no grant para a tabela VW_CSF_NF_INF_COMPL_OP_ENT_ST. ' || sqlerrm);
    end;
    --
    commit;
  --
end;
/
--                                      
declare
  --
  vn_existe number := null;
  vn_fase number := 0;
  --
begin
  --
  begin
    select count(0)
      into vn_existe
      from all_objects a
     where upper(a.owner)       = 'CSF_INT'
       and upper(a.object_name) = 'VW_CSF_NF_INF_COMPL_OP_SAI_ST';
  exception
    when others then
      vn_existe := 0;
  end;
  --
  if nvl(vn_existe, 0) = 0 then
    --
    begin
      execute immediate 'create table CSF_INT.VW_CSF_NF_INF_COMPL_OP_SAI_ST ( CPF_CNPJ_EMIT                      VARCHAR2(14)  not null,
                                                                              DM_IND_EMIT                        NUMBER(1)      not null,
                                                                              DM_IND_OPER                        NUMBER(1)      not null,
                                                                              COD_PART                          VARCHAR2(60),
                                                                              COD_MOD                            VARCHAR2(2)    not null,
                                                                              SERIE                              VARCHAR2(3)    not null,
                                                                              NRO_NF                            NUMBER(9)      not null,
                                                                              NRO_ITEM                          NUMBER        not null,
                                                                              COD_MOT_REST_COMPL_ST              VARCHAR2(5)   not null,
                                                                              QTDE_CONV                          NUMBER(19,6),
                                                                              UNID                              VARCHAR2(6),
                                                                              VL_UNIT_CONV                      NUMBER(19,6),
                                                                              VL_UNIT_ICMS_NA_OPERACAO_CONV      NUMBER(19,6),
                                                                              VL_UNIT_ICMS_OP_CONV              NUMBER(19,6),
                                                                              VL_UNIT_ICMS_OP_EST_CONV      NUMBER(19,6),
                                                                              VL_UNIT_ICMS_ST_EST_CONV      NUMBER(19,6),
                                                                              VL_UNIT_FCP_ICMS_ST_EST_CONV  NUMBER(19,6),
                                                                              VL_UNIT_ICMS_ST_CONV_REST          NUMBER(19,6),
                                                                              VL_UNIT_FCP_ST_CONV_REST           NUMBER(19,6),
                                                                              VL_UNIT_ICMS_ST_CONV_COMPL        NUMBER(19,6),
                                                                              VL_UNIT_FCP_ST_CONV_COMPL          NUMBER(19,6)
                                                                    ) tablespace csf_data ';
    exception
      when dup_val_on_index then
        raise_application_error(-20001, 'Tabela VW_CSF_NF_INF_COMPL_OP_SAI_ST ja existe.');
      when others then
        raise_application_error(-20001, 'Erro no script #70824. Criacao da tabela VW_CSF_NF_INF_COMPL_OP_SAI_ST. Erro: ' || sqlerrm);
    end;
    --
    end if;
    --
    begin
      --
      execute immediate 'comment on table CSF_INT.VW_CSF_NF_INF_COMPL_OP_SAI_ST is ''Informa��es Complementares das Opera��es de Sa�da de Mercadorias Sujeitas � Substitui��o Tribut�ria - Registro C185'' ';
      execute immediate 'comment on column CSF_INT.VW_CSF_NF_INF_COMPL_OP_SAI_ST.COD_MOT_REST_COMPL_ST    is ''C�digo do motivo da restitui��o ou complementa��o conforme Tabela 5.7'' ';
      execute immediate 'comment on column CSF_INT.VW_CSF_NF_INF_COMPL_OP_SAI_ST.QTDE_CONV    is ''Quantidade do item convertida na unidade de controle de estoque'' ';
      execute immediate 'comment on column CSF_INT.VW_CSF_NF_INF_COMPL_OP_SAI_ST.UNID    is ''Sigla da unidade adotada para informar o campo QUANT_CONV'' ';
      execute immediate 'comment on column CSF_INT.VW_CSF_NF_INF_COMPL_OP_SAI_ST.VL_UNIT_CONV    is ''Valor unit�rio da mercadoria, considerando a unidade utilizada para informar o campo �QUANT_CONV�'' ';
      execute immediate 'comment on column CSF_INT.VW_CSF_NF_INF_COMPL_OP_SAI_ST.VL_UNIT_ICMS_NA_OPERACAO_CONV    is ''Valor unit�rio para o ICMS na opera��o, caso n�o houvesse a ST, considerando unidade utilizada para informar o campo �QUANT_CONV�, considerando redu��o da base de c�lculo do ICMS ST na tributa��o, se houver'' ';
      execute immediate 'comment on column CSF_INT.VW_CSF_NF_INF_COMPL_OP_SAI_ST.VL_UNIT_ICMS_OP_CONV    is ''Valor unit�rio do ICMS OP calculado conforme a legisla��o de cada UF, considerando a unidade utilizada para informar o campo �QUANT_CONV�, utilizado para c�lculo de ressarcimento/restitui��o de ST, no desfazimento da substitui��o tribut�ria'' ';
      execute immediate 'comment on column CSF_INT.VW_CSF_NF_INF_COMPL_OP_SAI_ST.VL_UNIT_ICMS_OP_EST_CONV    is ''Valor unit�rio da mercadoria, considerando a unidade utilizada para informar o campo "QUANT_CONV"'' ';
      execute immediate 'comment on column CSF_INT.VW_CSF_NF_INF_COMPL_OP_SAI_ST.VL_UNIT_ICMS_ST_EST_CONV    is ''Valor unit�rio para o ICMS na opera��o, caso n�o houvesse a ST, considerando unidade utilizada para informar o campo "QUANT_CONV", considerando redu��o da base de c�lculo do ICMS ST na tributa��o, se houver'' ';
      execute immediate 'comment on column CSF_INT.VW_CSF_NF_INF_COMPL_OP_SAI_ST.VL_UNIT_FCP_ICMS_ST_EST_CONV    is ''Valor m�dio unit�rio do FCP ST agregado ao ICMS das mercadorias em estoque, considerando a unidade utilizada para informar o campo "QUANT_CONV"'' ';
      execute immediate 'comment on column CSF_INT.VW_CSF_NF_INF_COMPL_OP_SAI_ST.VL_UNIT_ICMS_ST_CONV_REST    is ''Valor unit�rio do total do ICMS ST, incluindo FCP ST, a ser restitu�do/ressarcido, calculado conforme a legisla��o de cada UF, considerando a unidade utilizada para informar o campo "QUANT_CONV"'' ';
      execute immediate 'comment on column CSF_INT.VW_CSF_NF_INF_COMPL_OP_SAI_ST.VL_UNIT_FCP_ST_CONV_REST    is ''Valor unit�rio correspondente � parcela de ICMS FCP ST que comp�e o campo "VL_UNIT_ICMS_ST_CONV_REST", considerando a unidade utilizada para informar o campo "QUANT_CONV"'' ';
      execute immediate 'comment on column CSF_INT.VW_CSF_NF_INF_COMPL_OP_SAI_ST.VL_UNIT_ICMS_ST_CONV_COMPL    is ''Valor unit�rio do complemento do ICMS, incluindo FCP ST, considerando a unidade utilizada para informar o campo "QUANT_CONV"'' ';
      execute immediate 'comment on column CSF_INT.VW_CSF_NF_INF_COMPL_OP_SAI_ST.VL_UNIT_FCP_ST_CONV_COMPL    is ''Valor unit�rio correspondente � parcela de ICMS FCP ST que comp�e o campo "VL_UNIT_ICMS_ST_CONV_COMPL", considerando unidade utilizada para informar o campo "QUANT_CONV"'' ';
       --
    exception
      when others then
        raise_application_error(-20101, 'Erro no script #70824. Problemas ao criar o coment�rio da tabela VW_CSF_NF_INF_COMPL_OP_SAI_ST. ' || sqlerrm);
    end;
    --
    begin
      execute immediate 'grant select, insert, update, delete on CSF_INT.VW_CSF_NF_INF_COMPL_OP_SAI_ST to csf_own';
      execute immediate 'grant select, insert, update, delete on CSF_INT.VW_CSF_NF_INF_COMPL_OP_SAI_ST to csf_work';
    exception
      when others then
        raise_application_error(-20101, 'Erro no script #70824. Problemas no grant para a tabela VW_CSF_NF_INF_COMPL_OP_SAI_ST. ' || sqlerrm);
    end;
    --
    commit;
  --
end;
/
--
declare
  --
  vn_existe number := null;
  vn_fase number := 0;
  --
begin
  --
  begin
    select count(0)
      into vn_existe
      from all_objects a
     where upper(a.owner)       = 'CSF_INT'
       and upper(a.object_name) = 'VW_CSF_INVENT_INF_COMP_MERC_ST';
  exception
    when others then
      vn_existe := 0;
  end;
  --
  if nvl(vn_existe, 0) = 0 then
    --
    begin
      execute immediate 'create table CSF_INT.VW_CSF_INVENT_INF_COMP_MERC_ST( CPF_CNPJ       VARCHAR2(14)   not null,
                                                                              DT_INVENTARIO   DATE           not null,
                                                                              COD_ITEM       VARCHAR2(60)   not null,
                                                                              VL_ICMS_OP     NUMBER(19,6)   not null,
                                                                              VL_BC_ICMS_ST   NUMBER(19,6)   not null,
                                                                              VL_ICMS_ST     NUMBER(19,6)   not null,
                                                                              VL_FCP         NUMBER(19,6)   not null
                                                                    ) tablespace csf_data';
    exception
      when dup_val_on_index then
        raise_application_error(-20001, 'Tabela VW_CSF_INVENT_INF_COMP_MERC_ST ja existe.');
      when others then
        raise_application_error(-20001, 'Erro no script #70824. Criacao da tabela VW_CSF_INVENT_INF_COMP_MERC_ST. Erro: ' || sqlerrm);
    end;
    --
    end if;
    --
    begin
      --
      execute immediate 'comment on table CSF_INT.VW_CSF_INVENT_INF_COMP_MERC_ST is ''Informa��es Complementares do Invent�rio das Mercadorias sujeitas ao Regime de Substitui��o Tribut�ria - Registro H030'' ';
      execute immediate 'comment on column CSF_INT.VW_CSF_INVENT_INF_COMP_MERC_ST.VL_ICMS_OP    is ''Valor m�dio unit�rio do ICMS OP a que o informante teria direito ao cr�dito, pelas entradas, caso esta fosse submetida ao regime comum de tributa��o.'' ';
      execute immediate 'comment on column CSF_INT.VW_CSF_INVENT_INF_COMP_MERC_ST.VL_BC_ICMS_ST    is ''Informar o valor m�dio unit�rio da base de c�lculo ICMS ST pago ou retido, considerando redu��o de base de c�lculo'' ';
      execute immediate 'comment on column CSF_INT.VW_CSF_INVENT_INF_COMP_MERC_ST.VL_ICMS_ST    is ''Valor m�dio unit�rio do ICMS ST'' ';
      execute immediate 'comment on column CSF_INT.VW_CSF_INVENT_INF_COMP_MERC_ST.VL_FCP    is ''Valor m�dio unit�rio do FCP'' ';
       --
    exception
      when others then
        raise_application_error(-20101, 'Erro no script #70824. Problemas ao criar o coment�rio da tabela VW_CSF_INVENT_INF_COMP_MERC_ST. ' || sqlerrm);
    end;
    --
    begin
      execute immediate 'grant select, insert, update, delete on CSF_INT.VW_CSF_INVENT_INF_COMP_MERC_ST to csf_own';
      execute immediate 'grant select, insert, update, delete on CSF_INT.VW_CSF_INVENT_INF_COMP_MERC_ST to csf_work';
    exception
      when others then
        raise_application_error(-20101, 'Erro no script #70824. Problemas no grant para a tabela VW_CSF_INVENT_INF_COMP_MERC_ST. ' || sqlerrm);
    end;
    --
    commit;
  --
end;
/ 
-------------------------------------------------------------------------------------------------------------------------------------------
Prompt FIM - Redmine #71565  - Inclus�o de registros C180, C185, H030, 1250 e 1255 na gera��o do Sped Fiscal estado MG
-------------------------------------------------------------------------------------------------------------------------------------------

-------------------------------------------------------------------------------------------------------------------------------------------
Prompt INI - Redmine #71035 - Integra��o para nota_fiscal_fisco
-------------------------------------------------------------------------------------------------------------------------------------------
   
 declare
  --
  vn_existe number := null;
  --
begin
  --
  begin
    select count(1)
      into vn_existe
      from all_objects a
     where upper(a.owner)       = 'CSF_INT'
       and upper(a.object_name) = 'VW_CSF_NOTA_FISCAL_FISCO';
  exception
    when others then
      vn_existe := 0;
  end;
  --
  if nvl(vn_existe, 0) = 0 then
    --
    begin
      execute immediate 'create table CSF_INT.VW_CSF_NOTA_FISCAL_FISCO ( CPF_CNPJ_EMIT VARCHAR2(14) NOT NULL,
                                                                         DM_IND_EMIT   NUMBER(1) NOT NULL,
                                                                         DM_IND_OPER   NUMBER(1) NOT NULL,
                                                                         COD_PART      VARCHAR2(60),
                                                                         COD_MOD       VARCHAR2(2) NOT NULL,
                                                                         SERIE         VARCHAR2(3) NOT NULL,
                                                                         NRO_NF        NUMBER(9) NOT NULL,
                                                                         DM_COD_MOD_DA NUMBER(1) NOT NULL,
                                                                         ORGAO_EMIT    VARCHAR2(60) NOT NULL,
                                                                         CNPJ          VARCHAR2(14) NOT NULL,
                                                                         MATR_AGENTE   VARCHAR2(60) NOT NULL,
                                                                         NOME_AGENTE   VARCHAR2(60) NOT NULL,
                                                                         FONE          VARCHAR2(14),
                                                                         UF            VARCHAR2(2) NOT NULL,
                                                                         NRO_DAR       VARCHAR2(60),
                                                                         DT_EMISS      DATE,
                                                                         VL_DAR        NUMBER(15,2),
                                                                         REPART_EMIT   VARCHAR2(60) NOT NULL,
                                                                         DT_PAGTO      DATE,
                                                                         COD_AUT_BANC  VARCHAR2(256),
                                                                         DT_VENCTO     DATE 
                                                                        ) tablespace csf_data';
    exception
      when dup_val_on_index then
        raise_application_error(-20001, 'Tabela VW_CSF_NOTA_FISCAL_FISCO ja existe.');
      when others then
        raise_application_error(-20001, 'Erro no script #71035. Criacao da tabela VW_CSF_NOTA_FISCAL_FISCO. Erro: ' || sqlerrm);
    end;
    --
    end if;
    --
    begin
      --
      execute immediate 'comment on table CSF_INT.VW_CSF_NOTA_FISCAL_FISCO is ''Tabela com informac�es do documento de arrecada��o referenciado''';
      execute immediate 'comment on column CSF_INT.VW_CSF_NOTA_FISCAL_FISCO.DM_COD_MOD_DA  is ''Codigo do modelo do docto de arrecadac�o: 0-Documento estadual de arrecadac�o / 1-GNRE''';
      execute immediate 'comment on column CSF_INT.VW_CSF_NOTA_FISCAL_FISCO.ORGAO_EMIT is ''Org�o emitente''';
      execute immediate 'comment on column CSF_INT.VW_CSF_NOTA_FISCAL_FISCO.CNPJ is ''CNPJ do org�o emitente''';
      execute immediate 'comment on column CSF_INT.VW_CSF_NOTA_FISCAL_FISCO.MATR_AGENTE is ''Matricula do agente''';
      execute immediate 'comment on column CSF_INT.VW_CSF_NOTA_FISCAL_FISCO.NOME_AGENTE is ''Nome do agente''';
      execute immediate 'comment on column CSF_INT.VW_CSF_NOTA_FISCAL_FISCO.FONE is ''Telefone''';
      execute immediate 'comment on column CSF_INT.VW_CSF_NOTA_FISCAL_FISCO.UF is ''Sigla da UF''';
      execute immediate 'comment on column CSF_INT.VW_CSF_NOTA_FISCAL_FISCO.NRO_DAR is ''Numero do Documento de Arrecadac�o de Receita''';
      execute immediate 'comment on column CSF_INT.VW_CSF_NOTA_FISCAL_FISCO.DT_EMISS is ''Data de emiss�o do Documento de Arrecadac�o''';
      execute immediate 'comment on column CSF_INT.VW_CSF_NOTA_FISCAL_FISCO.VL_DAR is ''Valor Total constante no Documento de arrecadac�o de Receita''';
      execute immediate 'comment on column CSF_INT.VW_CSF_NOTA_FISCAL_FISCO.REPART_EMIT is ''Repartic�o Fiscal emitente''';
      execute immediate 'comment on column CSF_INT.VW_CSF_NOTA_FISCAL_FISCO.DT_PAGTO  is ''Data de pagamento do Documento de Arrecadac�o''';
      execute immediate 'comment on column CSF_INT.VW_CSF_NOTA_FISCAL_FISCO.COD_AUT_BANC is ''Codigo completo da autenticac�o bancaria''';
      execute immediate 'comment on column CSF_INT.VW_CSF_NOTA_FISCAL_FISCO.DT_VENCTO is ''Data de vencimento do documento de arrecadac�o''';
       --
    exception
      when others then
        raise_application_error(-20101, 'Erro no script #71035. Problemas ao criar o coment�rio da tabela VW_CSF_NOTA_FISCAL_FISCO. ' || sqlerrm);
    end;
    --
    begin
      execute immediate 'grant select, insert, update, delete on CSF_INT.VW_CSF_NOTA_FISCAL_FISCO to csf_own';
      execute immediate 'grant select, insert, update, delete on CSF_INT.VW_CSF_NOTA_FISCAL_FISCO to csf_work';
    exception
      when others then
        raise_application_error(-20101, 'Erro no script #71035. Problemas no grant para a tabela VW_CSF_NOTA_FISCAL_FISCO. ' || sqlerrm);
    end;
    --
    -- Create/Recreate indexes 
    vn_existe := 0;
    --	
    begin
      select count(1) 
        into vn_existe	  
        from all_indexes a
       where a.OWNER = 'CSF_INT'
         and a.table_name = 'VW_CSF_NOTA_FISCAL_FISCO'
         and a.INDEX_NAME = 'VWCSF_NOTAFISCALFISCO_IDX';	
    exception	
       when others then
         vn_existe := 0;
    end;
    --	
	if nvl(vn_existe, 0) = 0 then
       --	
       begin
          execute immediate 'create index CSF_INT.VWCSF_NOTAFISCALFISCO_IDX on CSF_INT.VW_CSF_NOTA_FISCAL_FISCO (CPF_CNPJ_EMIT, DM_IND_EMIT, DM_IND_OPER, COD_PART, COD_MOD, SERIE, NRO_NF) tablespace CSF_DATA';
       exception
          when others then
             RAISE_APPLICATION_ERROR ( -20101, 'Erro ao criar indices de VW_CSF_NOTA_FISCAL_FISCO - '||SQLERRM );
       end;	
       --
    end if;
    --	
    vn_existe := 0;
    --	
    begin
      select count(1)
        into vn_existe	  
        from all_indexes a
       where a.OWNER = 'CSF_INT'
         and a.table_name = 'VW_CSF_NOTA_FISCAL_FISCO'
         and a.INDEX_NAME = 'VWCSF_NOTAFISCALFISCO_IDX2';	
    exception	
       when others then
         vn_existe := 0;
    end;
    --	
    if nvl(vn_existe, 0) = 0 then
       --	
       begin
          execute immediate 'create index CSF_INT.VWCSF_NOTAFISCALFISCO_IDX2 on CSF_INT.VW_CSF_NOTA_FISCAL_FISCO (CPF_CNPJ_EMIT, DM_IND_EMIT, DM_IND_OPER, COD_MOD, SERIE, NRO_NF) tablespace CSF_DATA';
       exception
          when others then
             RAISE_APPLICATION_ERROR ( -20101, 'Erro ao criar indices de VW_CSF_NOTA_FISCAL_FISCO - '||SQLERRM );
       end;	
       --	
    end if;
    -- 	
    commit;
    --
end;
/

-------------------------------------------------------------------------------------------------------------------------------------------
Prompt FIM - Redmine #71035 - Integra��o para nota_fiscal_fisco
-------------------------------------------------------------------------------------------------------------------------------------------

-------------------------------------------------------------------------------------------------------------------------------
Prompt INI - Redmine 50520  - Criar modelo de integra��o de revers�o de notas
-------------------------------------------------------------------------------------------------------------------------------
declare
   vn_existe number := null;
begin
   select count(*)
     into vn_existe
     from sys.all_tables a
    where upper(a.OWNER)       = upper('CSF_INT')
      and upper(a.TABLE_NAME)  = upper('VW_CSF_REVERTER_DOC');
   --
   if nvl(vn_existe,0) > 0 then
      --
      null;
      --
   elsif nvl(vn_existe,0) = 0 then
      --
      execute immediate 'create table CSF_INT.VW_CSF_REVERTER_DOC
                         ( CPF_CNPJ_EMIT VARCHAR2(14)  not null,
                           DM_IND_EMIT   NUMBER(1)     not null,
                           DM_IND_OPER   NUMBER(1)     not null,
                           COD_PART      VARCHAR2(60),
                           COD_MOD       VARCHAR2(2)   not null,
                           SERIE         VARCHAR2(3)   not null,
                           SUBSERIE      NUMBER(3),
                           NRO_DOC       NUMBER(9)     not null
                         ) tablespace CSF_DATA';
      --
      execute immediate 'comment on table CSF_INT.VW_CSF_REVERTER_DOC is ''Tabela com modelos disponiveis de DANFE para impressao''';
      execute immediate 'grant select, insert, update, delete on CSF_INT.VW_CSF_REVERTER_DOC to CSF_WORK';
      --
   end if;
   --
exception
   when others then
      raise_application_error(-20001, 'Erro no script 50520. Criacao da tabela VW_CSF_REVERTER_DOC. Erro: ' || sqlerrm);
end;
/

declare
   vn_existe number := null;
begin
   select count(*)
     into vn_existe
     from sys.all_tables a
    where upper(a.OWNER)       = upper('CSF_INT')
      and upper(a.TABLE_NAME)  = upper('VW_CSF_REVERTER_DOC');
   --
   if nvl(vn_existe,0) = 0 then
      --
      null;
      --
   elsif nvl(vn_existe,0) > 0 then
      --
      execute immediate 'grant select, insert, update, delete on CSF_INT.VW_CSF_REVERTER_DOC to CSF_OWN';
      --
      begin
         execute immediate 'create index CSF_INT.VW_CSF_REVERTER_DOC_IDX1 on CSF_INT.VW_CSF_REVERTER_DOC (cpf_cnpj_emit, dm_ind_emit, dm_ind_oper, cod_part, cod_mod, serie, nro_doc)';
         execute immediate 'create index CSF_INT.VW_CSF_REVERTER_DOC_IDX2 on CSF_INT.VW_CSF_REVERTER_DOC (cpf_cnpj_emit, dm_ind_emit, dm_ind_oper, cod_part, cod_mod, serie, subserie, nro_doc)';
      exception
         when others then
            if sqlcode != -942 then
               null;
            end if;
      end;
      --
   end if;
   --
exception
   when others then
      raise_application_error(-20001, 'Erro no script 50520. Criacao da tabela VW_CSF_REVERTER_DOC. Erro: ' || sqlerrm);
end;
/

-------------------------------------------------------------------------------------------------------------------------------
Prompt FIM - Redmine 50520  - Criar modelo de integra��o de revers�o de notas
-------------------------------------------------------------------------------------------------------------------------------

-------------------------------------------------------------------------------------------
Prompt FIM Patch 2.9.6.1 - Alteracoes no CSF_INT
-------------------------------------------------------------------------------------------


