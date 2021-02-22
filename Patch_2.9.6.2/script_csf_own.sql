------------------------------------------------------------------------------------------
Prompt INI Patch 2.9.6.2 - Alteracoes no CSF_OWN - 
------------------------------------------------------------------------------------------

insert into csf_own.versao_sistema ( ID
                                   , VERSAO
                                   , DT_VERSAO
                                   )
                            values ( csf_own.versaosistema_seq.nextval -- ID
                                   , '2.9.6.2'                         -- VERSAO
                                   , sysdate                           -- DT_VERSAO
                                   )
/

commit
/
-------------------------------------------------------------------------------------------------------------------------------
Prompt INI - Redmine #75477 -  Cria��o de Job Scheduler JOB_CORRIGIR_NF_CT
-------------------------------------------------------------------------------------------------------------------------------

DECLARE 
  vn_cont NUMBER;
BEGIN
  --
  -- Verifica se o Job JOB_CORRIGIR_NF_CT j� foi criado, caso existir sai da rotina
  BEGIN
    SELECT COUNT(1)
      INTO vn_cont
      FROM ALL_SCHEDULER_JOBS
     WHERE JOB_NAME = 'JOB_CORRIGIR_NF_CT'
       AND ENABLED  = 'TRUE';
    EXCEPTION
      WHEN OTHERS THEN
        vn_cont := 0;
    END;
    --
    IF vn_cont = 0 THEN
        DBMS_SCHEDULER.CREATE_JOB
            (
              JOB_NAME => 'JOB_CORRIGIR_NF_CT',
              JOB_TYPE => 'STORED_PROCEDURE',
              JOB_ACTION => 'CSF_OWN.PB_CORRIGIR_PESSOA_NF_CT',
              START_DATE => SYSDATE,
              REPEAT_INTERVAL => 'SYSDATE + (((1/24)/60))',
              ENABLED => TRUE,
              COMMENTS => 'POPULA PESSOA_ID NA NF/CT QUANDO ESTIVER NULO.'
            );
     END IF;
EXCEPTION
	WHEN OTHERS THEN
		RAISE_APPLICATION_ERROR(-20101, 'Erro ao criar o Job - JOB_CORRIGIR_NF_CT  : '||sqlerrm);
END;
/
-------------------------------------------------------------------------------------------------------------------------------
Prompt FIM - Redmine #75477 -  Cria��o de Job Scheduler JOB_CORRIGIR_NF_CT
-------------------------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------------------
Prompt INI - Redmine #75898 Criação de padrão NFem a adição de Joinville-SC ao padrão
-------------------------------------------------------------------------------------------------------------------------------------------
--
--CIDADE  : Joinville - SC
--IBGE    : 4209102
--PADRAO  : NFem
--HABIL   : SIM
--WS_CANC : SIM

declare 
   --   
   -- dm_tp_amb (Tipo de Ambiente 1-Producao; 2-Homologacao)
   cursor c_dados is
      select   ( select id from csf_own.cidade where ibge_cidade = '4209102' ) id, dm_situacao,  versao,  dm_tp_amb,  dm_tp_soap,  dm_tp_serv, descr, url_wsdl, dm_upload, dm_ind_emit 
        from ( --Produção
			   select 1 dm_situacao, '1' versao, 1 dm_tp_amb, 2 dm_tp_soap,  1 dm_tp_serv, 'Geração de NFS-e'                               descr, 'https://nfemws.joinville.sc.gov.br/NotaFiscal/Servicos.asmx?wsdl' url_wsdl, 0 dm_upload,  0 dm_ind_emit from dual union
               select 1 dm_situacao, '1' versao, 1 dm_tp_amb, 2 dm_tp_soap,  2 dm_tp_serv, 'Recepção e Processamento de lote de RPS'        descr, 'https://nfemws.joinville.sc.gov.br/NotaFiscal/Servicos.asmx?wsdl' url_wsdl, 0 dm_upload,  0 dm_ind_emit from dual union
               select 1 dm_situacao, '1' versao, 1 dm_tp_amb, 2 dm_tp_soap,  3 dm_tp_serv, 'Consulta de Situação de lote de RPS'            descr, 'https://nfemws.joinville.sc.gov.br/NotaFiscal/Servicos.asmx?wsdl' url_wsdl, 0 dm_upload,  0 dm_ind_emit from dual union
               select 1 dm_situacao, '1' versao, 1 dm_tp_amb, 2 dm_tp_soap,  4 dm_tp_serv, 'Consulta de NFS-e por RPS'                      descr, 'https://nfemws.joinville.sc.gov.br/NotaFiscal/Servicos.asmx?wsdl' url_wsdl, 0 dm_upload,  0 dm_ind_emit from dual union
               select 1 dm_situacao, '1' versao, 1 dm_tp_amb, 2 dm_tp_soap,  5 dm_tp_serv, 'Consulta de NFS-e'                              descr, 'https://nfemws.joinville.sc.gov.br/NotaFiscal/Servicos.asmx?wsdl' url_wsdl, 0 dm_upload,  0 dm_ind_emit from dual union
               select 1 dm_situacao, '1' versao, 1 dm_tp_amb, 2 dm_tp_soap,  6 dm_tp_serv, 'Cancelamento de NFS-e'                          descr, 'https://nfemws.joinville.sc.gov.br/NotaFiscal/Servicos.asmx?wsdl' url_wsdl, 0 dm_upload,  0 dm_ind_emit from dual union
               select 1 dm_situacao, '1' versao, 1 dm_tp_amb, 2 dm_tp_soap,  7 dm_tp_serv, 'Substituição de NFS-e'                          descr, 'https://nfemws.joinville.sc.gov.br/NotaFiscal/Servicos.asmx?wsdl' url_wsdl, 0 dm_upload,  0 dm_ind_emit from dual union
               select 1 dm_situacao, '1' versao, 1 dm_tp_amb, 2 dm_tp_soap,  8 dm_tp_serv, 'Consulta de Empresas Autorizadas a emitir NFS-e'descr, 'https://nfemws.joinville.sc.gov.br/NotaFiscal/Servicos.asmx?wsdl' url_wsdl, 0 dm_upload,  0 dm_ind_emit from dual union
               select 1 dm_situacao, '1' versao, 1 dm_tp_amb, 2 dm_tp_soap,  9 dm_tp_serv, 'Login'                                          descr, 'https://nfemws.joinville.sc.gov.br/NotaFiscal/Servicos.asmx?wsdl' url_wsdl, 0 dm_upload,  0 dm_ind_emit from dual union
               select 1 dm_situacao, '1' versao, 1 dm_tp_amb, 2 dm_tp_soap, 10 dm_tp_serv, 'Consulta de Lote de RPS'                        descr, 'https://nfemws.joinville.sc.gov.br/NotaFiscal/Servicos.asmx?wsdl' url_wsdl, 0 dm_upload,  0 dm_ind_emit from dual union
               --Homologação
               select 1 dm_situacao, '1' versao, 2 dm_tp_amb, 2 dm_tp_soap,  1 dm_tp_serv, 'Geração de NFS-e'                               descr, 'https://nfemwshomologacao.joinville.sc.gov.br/NotaFiscal/Servicos.asmx?wsdl' url_wsdl, 0 dm_upload,  0 dm_ind_emit from dual union
               select 1 dm_situacao, '1' versao, 2 dm_tp_amb, 2 dm_tp_soap,  2 dm_tp_serv, 'Recepção e Processamento de lote de RPS'        descr, 'https://nfemwshomologacao.joinville.sc.gov.br/NotaFiscal/Servicos.asmx?wsdl' url_wsdl, 0 dm_upload,  0 dm_ind_emit from dual union
               select 1 dm_situacao, '1' versao, 2 dm_tp_amb, 2 dm_tp_soap,  3 dm_tp_serv, 'Consulta de Situação de lote de RPS'            descr, 'https://nfemwshomologacao.joinville.sc.gov.br/NotaFiscal/Servicos.asmx?wsdl' url_wsdl, 0 dm_upload,  0 dm_ind_emit from dual union
               select 1 dm_situacao, '1' versao, 2 dm_tp_amb, 2 dm_tp_soap,  4 dm_tp_serv, 'Consulta de NFS-e por RPS'                      descr, 'https://nfemwshomologacao.joinville.sc.gov.br/NotaFiscal/Servicos.asmx?wsdl' url_wsdl, 0 dm_upload,  0 dm_ind_emit from dual union
               select 1 dm_situacao, '1' versao, 2 dm_tp_amb, 2 dm_tp_soap,  5 dm_tp_serv, 'Consulta de NFS-e'                              descr, 'https://nfemwshomologacao.joinville.sc.gov.br/NotaFiscal/Servicos.asmx?wsdl' url_wsdl, 0 dm_upload,  0 dm_ind_emit from dual union
               select 1 dm_situacao, '1' versao, 2 dm_tp_amb, 2 dm_tp_soap,  6 dm_tp_serv, 'Cancelamento de NFS-e'                          descr, 'https://nfemwshomologacao.joinville.sc.gov.br/NotaFiscal/Servicos.asmx?wsdl' url_wsdl, 0 dm_upload,  0 dm_ind_emit from dual union
               select 1 dm_situacao, '1' versao, 2 dm_tp_amb, 2 dm_tp_soap,  7 dm_tp_serv, 'Substituição de NFS-e'                          descr, 'https://nfemwshomologacao.joinville.sc.gov.br/NotaFiscal/Servicos.asmx?wsdl' url_wsdl, 0 dm_upload,  0 dm_ind_emit from dual union
               select 1 dm_situacao, '1' versao, 2 dm_tp_amb, 2 dm_tp_soap,  8 dm_tp_serv, 'Consulta de Empresas Autorizadas a emitir NFS-e'descr, 'https://nfemwshomologacao.joinville.sc.gov.br/NotaFiscal/Servicos.asmx?wsdl' url_wsdl, 0 dm_upload,  0 dm_ind_emit from dual union
               select 1 dm_situacao, '1' versao, 2 dm_tp_amb, 2 dm_tp_soap,  9 dm_tp_serv, 'Login'                                          descr, 'https://nfemwshomologacao.joinville.sc.gov.br/NotaFiscal/Servicos.asmx?wsdl' url_wsdl, 0 dm_upload,  0 dm_ind_emit from dual union
               select 1 dm_situacao, '1' versao, 2 dm_tp_amb, 2 dm_tp_soap, 10 dm_tp_serv, 'Consulta de Lote de RPS'                        descr, 'https://nfemwshomologacao.joinville.sc.gov.br/NotaFiscal/Servicos.asmx?wsdl' url_wsdl, 0 dm_upload,  0 dm_ind_emit from dual
              );
--   
begin   
   --
      for rec_dados in c_dados loop
         exit when c_dados%notfound or (c_dados%notfound) is null;
         --
         begin  
            insert into csf_own.cidade_webserv_nfse (  id
                                                    ,  cidade_id
                                                    ,  dm_situacao
                                                    ,  versao
                                                    ,  dm_tp_amb
                                                    ,  dm_tp_soap
                                                    ,  dm_tp_serv
                                                    ,  descr
                                                    ,  url_wsdl
                                                    ,  dm_upload
                                                    ,  dm_ind_emit  )    
                                             values (  csf_own.cidadewebservnfse_seq.nextval
                                                    ,  rec_dados.id
                                                    ,  rec_dados.dm_situacao
                                                    ,  rec_dados.versao
                                                    ,  rec_dados.dm_tp_amb
                                                    ,  rec_dados.dm_tp_soap
                                                    ,  rec_dados.dm_tp_serv
                                                    ,  rec_dados.descr
                                                    ,  rec_dados.url_wsdl
                                                    ,  rec_dados.dm_upload
                                                    ,  rec_dados.dm_ind_emit  ); 
            --
            commit;        
            --
         exception  
            when dup_val_on_index then 
               begin 
                  update csf_own.cidade_webserv_nfse 
                     set versao      = rec_dados.versao
                       , dm_tp_soap  = rec_dados.dm_tp_soap
                       , descr       = rec_dados.descr
                       , url_wsdl    = rec_dados.url_wsdl
                       , dm_upload   = rec_dados.dm_upload
                   where cidade_id   = rec_dados.id 
                     and dm_tp_amb   = rec_dados.dm_tp_amb 
                     and dm_tp_serv  = rec_dados.dm_tp_serv 
                     and dm_ind_emit = rec_dados.dm_ind_emit; 
                  --
                  commit; 
                  --
               exception when others then 
                  raise_application_error(-20101, 'Erro no script Redmine #75898 Atualização URL ambiente de homologação e Produção Joinville - SC' || sqlerrm);
               end; 
               --
         end;
         -- 
      --
      end loop;
   --
   commit;
   --
exception
   when others then
      raise_application_error(-20102, 'Erro no script Redmine #75898 Atualização URL ambiente de homologação e Produção Joinville - SC' || sqlerrm);
end;
/

declare
vn_count integer;
--
begin
  ---
  vn_count:=0;
  ---
  begin
    select count(1) into vn_count
    from  all_constraints 
    where owner = 'CSF_OWN'
      and constraint_name = 'CIDADENFSE_DMPADRAO_CK';
  exception
    when others then
      vn_count:=0;
  end;
  ---
  if vn_count = 1 then
     begin  
		execute immediate 'alter table CSF_OWN.CIDADE_NFSE drop constraint CIDADENFSE_DMPADRAO_CK';
		execute immediate 'alter table CSF_OWN.CIDADE_NFSE add constraint CIDADENFSE_DMPADRAO_CK check (dm_padrao in (0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45))';
	 exception 
		when others then
			null;
	 end;
  elsif  vn_count = 0 then    
     begin
		execute immediate 'alter table CSF_OWN.CIDADE_NFSE add constraint CIDADENFSE_DMPADRAO_CK check (dm_padrao in (0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45))';
	 exception 
		when others then
			null;
	 end;
  end if;
  --
  commit;  
  --
  begin
	  insert into CSF_OWN.DOMINIO (  dominio
								  ,  vl
								  ,  descr
								  ,  id  )    
						   values (  'CIDADE_NFSE.DM_PADRAO'
								  ,  '45'
								  ,  'NFem'
								  ,  CSF_OWN.DOMINIO_SEQ.NEXTVAL  ); 
	  --
	  commit;        
	  --
  exception  
      when dup_val_on_index then 
          begin 
              update CSF_OWN.DOMINIO 
                 set vl      = '45'
               where dominio = 'CIDADE_NFSE.DM_PADRAO'
                 and descr   = 'NFem'; 
	  	      --
              commit; 
              --
           exception when others then 
                raise_application_error(-20101, 'Erro no script Redmine #75898 Adicionar Padrão para emissão de NFS-e (NFem)' || sqlerrm);
             --
          end;
  end; 
end;			
/
 
declare
--
vn_dm_tp_amb1  number  := 0;
vn_dm_tp_amb2  number  := 0;
vv_ibge_cidade csf_own.cidade.ibge_cidade%type;
vv_padrao      csf_own.dominio.descr%type;    
vv_habil       csf_own.dominio.descr%type;
vv_ws_canc     csf_own.dominio.descr%type;

--
Begin
	-- Popula variáveis
	vv_ibge_cidade := '4209102';
	vv_padrao      := 'NFem';     
	vv_habil       := 'SIM';
	vv_ws_canc     := 'SIM';

    begin
      --
      SELECT count(*)
        into vn_dm_tp_amb1
        from csf_own.empresa
       where dm_tp_amb = 1
       group by dm_tp_amb;
      exception when others then
        vn_dm_tp_amb1 := 0; 
      --
    end;
   --
    Begin
      --
      SELECT count(*)
        into vn_dm_tp_amb2
        from csf_own.empresa
       where dm_tp_amb = 2
       group by dm_tp_amb;
      --
	  exception when others then 
        vn_dm_tp_amb2 := 0;
     --
    end;
--
	if vn_dm_tp_amb2 > vn_dm_tp_amb1 then
	  --
	  begin
	    --  
	    update csf_own.cidade_webserv_nfse
		   set url_wsdl = 'DESATIVADO AMBIENTE DE PRODUCAO'
	     where cidade_id in (select id
							   from csf_own.cidade
							  where ibge_cidade in (vv_ibge_cidade))
		   and dm_tp_amb = 1;
	  exception 
		 when others then
		   null;
	  end;
	  --  
	  commit;
	  --
	end if;
--
	begin
		--
		update csf_own.cidade_nfse set dm_padrao    = (select distinct vl from csf_own.dominio where upper(dominio) = upper('cidade_nfse.dm_padrao') and upper(descr) = upper(vv_padrao))
								       , dm_habil   = (select distinct vl from csf_own.dominio where upper(dominio) = upper('cidade_nfse.dm_habil') and upper(descr) = upper(vv_habil))
								       , dm_ws_canc = (select distinct vl from csf_own.dominio where upper(dominio) = upper('cidade_nfse.dm_ws_canc') and upper(descr) = upper(vv_ws_canc))
         where cidade_id = (select distinct id from csf_own.cidade where ibge_cidade in (vv_ibge_cidade));
		exception when others then
			raise_application_error(-20103, 'Erro no script Redmine #75898 Atualização do Padrão Joinville - SC' || sqlerrm);
    end;
	--
	commit;
	--
--
end;
--
/  

-------------------------------------------------------------------------------------------------------------------------------------------
Prompt FIM - Redmine #75898 Criação de padrão NFem a adição de Joinville-SC ao padrão
-------------------------------------------------------------------------------------------------------------------------------------------

-------------------------------------------------------------------------------------------------------------------------------
Prompt INI Redmine #75193 - Adicionar campo EMPRESA_FORMA_TRIB.PERC_RED_IR
-------------------------------------------------------------------------------------------------------------------------------
 
declare
  vn_qtde    number;
begin
  begin
     select count(1)
       into vn_qtde 
       from all_tab_columns a
      where a.OWNER = 'CSF_OWN'  
        and a.TABLE_NAME = 'EMPRESA_FORMA_TRIB'
        and a.COLUMN_NAME = 'PERC_RED_IR'; 
   exception
      when others then
         vn_qtde := 0;
   end;	
   --   
   if vn_qtde = 0 then
      -- Add/modify columns    
      BEGIN
         EXECUTE IMMEDIATE 'alter table CSF_OWN.EMPRESA_FORMA_TRIB add perc_red_ir number(5,2)';
      EXCEPTION
         WHEN OTHERS THEN
            RAISE_APPLICATION_ERROR ( -20101, 'Erro ao incluir coluna "perc_red_ir" em EMPRESA_FORMA_TRIB - '||SQLERRM );
      END;
      -- 
      -- Add comments to the table   
      BEGIN
         EXECUTE IMMEDIATE 'comment on column CSF_OWN.EMPRESA_FORMA_TRIB.perc_red_ir is ''Percentual de Redu��o de IR para atividades incentivadas''';
      EXCEPTION
         WHEN OTHERS THEN
            RAISE_APPLICATION_ERROR ( -20101, 'Erro ao alterar comentario de EMPRESA_FORMA_TRIB - '||SQLERRM );
      END;	  
      -- 
   end if;
   --  
   commit;
   --   
end;
/

--------------------------------------------------------------------------------------------------------------------------------------
Prompt FIM Redmine #75193 - Adicionar campo EMPRESA_FORMA_TRIB.PERC_RED_IR
-------------------------------------------------------------------------------------------------------------------------------

-------------------------------------------------------------------------------------------------------------------------------
Prompt INI Redmine #74016 - Criar DT_EXE_SERV no conhecimento de transporte
-------------------------------------------------------------------------------------------------------------------------------
 
declare
  vn_qtde    number;
begin
  begin
     select count(1)
       into vn_qtde 
       from all_tab_columns a
      where a.OWNER = 'CSF_OWN'  
        and a.TABLE_NAME = 'CONHEC_TRANSP'
        and a.COLUMN_NAME = 'DT_EXE_SERV'; 
   exception
      when others then
         vn_qtde := 0;
   end;	
   --   
   if vn_qtde = 0 then
      -- Add/modify columns    
      BEGIN
         EXECUTE IMMEDIATE 'alter table CSF_OWN.CONHEC_TRANSP add dt_exe_serv date';
      EXCEPTION
         WHEN OTHERS THEN
            RAISE_APPLICATION_ERROR ( -20101, 'Erro ao incluir coluna "DT_EXE_SERV" em CONHEC_TRANSP - '||SQLERRM );
      END;
      -- 
      -- Add comments to the table   
      BEGIN
         EXECUTE IMMEDIATE 'comment on column CSF_OWN.CONHEC_TRANSP.dt_exe_serv is ''Data de compet�ncia ou em que servi�o foi executado''';
      EXCEPTION
         WHEN OTHERS THEN
            RAISE_APPLICATION_ERROR ( -20101, 'Erro ao alterar comentario de CONHEC_TRANSP - '||SQLERRM );
      END;	  
      -- 
   end if;
   --  
   vn_qtde := 0;   
   --
   begin
      select count(1)
        into vn_qtde 
        from all_tab_columns a
       where a.OWNER = 'CSF_OWN'  
         and a.TABLE_NAME = 'TMP_CONHEC_TRANSP'
         and a.COLUMN_NAME = 'DT_EXE_SERV'; 
   exception
      when others then
         vn_qtde := 0;
   end;	
   --  
   if vn_qtde = 0 then
      -- Add/modify columns    
      BEGIN
         EXECUTE IMMEDIATE 'alter table CSF_OWN.TMP_CONHEC_TRANSP add dt_exe_serv date';
      EXCEPTION
         WHEN OTHERS THEN
            RAISE_APPLICATION_ERROR ( -20101, 'Erro ao incluir coluna "DT_EXE_SERV" em TMP_CONHEC_TRANSP - '||SQLERRM );
      END;
      -- 
   end if;
   -- 
   vn_qtde := 0;
   --
   begin
      select count(1)
        into vn_qtde	  
        from csf_own.obj_util_integr    ou
           , csf_own.ff_obj_util_integr ff
       where ou.obj_name         = 'VW_CSF_CONHEC_TRANSP_FF'
         and ff.objutilintegr_id = ou.id
         and ff.atributo         = 'DT_EXE_SERV';
   exception
      when others then
         vn_qtde := 0;
   end;
   --   
   if vn_qtde = 0 then 
      --
      begin
         insert into csf_own.ff_obj_util_integr( id
                                               , objutilintegr_id
                                               , atributo
                                               , descr
                                               , dm_tipo_campo
                                               , tamanho
                                               , qtde_decimal
                                               )    
                                         values( csf_own.objutilintegr_seq.nextval
                                               , (select oi.id from csf_own.obj_util_integr oi where oi.obj_name = 'VW_CSF_CONHEC_TRANSP_FF')
                                               , 'DT_EXE_SERV'
                                               , 'Data de compet�ncia ou em que servi�o foi executado'
                                               , 0
                                               , 10
                                               , 0
                                               );     	  
      exception
         when dup_val_on_index then
            update csf_own.ff_obj_util_integr ff
               set ff.descr         = 'Data de compet�ncia ou em que servi�o foi executado'
                 , ff.dm_tipo_campo = 0
                 , ff.tamanho       = 10
                 , ff.qtde_decimal  = 0
             where ff.objutilintegr_id = (select oi.id from csf_own.obj_util_integr oi where oi.obj_name = 'VW_CSF_CONHEC_TRANSP_FF')
               and ff.atributo         = 'DT_EXE_SERV';                 			 
      end;
      --	  
   end if;
   -- 
   commit;
   --   
end;
/

--------------------------------------------------------------------------------------------------------------------------------------
Prompt FIM Redmine #74016 - Criar DT_EXE_SERV no conhecimento de transporte
-------------------------------------------------------------------------------------------------------------------------------

-------------------------------------------------------------------------------------------------------------------------------
Prompt INI Redmine #73063 - Altera��es para emiss�o de conhecimento de transporte.
-------------------------------------------------------------------------------------------------------------------------------
 
declare
  vn_qtde    number;
begin
  --
  begin
     select count(1)
       into vn_qtde
       from all_tables t
      where t.OWNER = 'CSF_OWN'  
        and t.TABLE_NAME = 'CONHEC_TRANSP_CCE';
   exception
      when others then
         vn_qtde := 0;
   end;	
   --   
   if vn_qtde = 0 then
      -- 
      -- Create table
      --
      BEGIN
         EXECUTE IMMEDIATE 'create table CSF_OWN.CONHEC_TRANSP_CCE (id NUMBER not null, conhectransp_id NUMBER not null, dm_st_integra NUMBER(1) default 0 not null, dm_st_proc NUMBER(2) default 0 not null, id_tag_chave VARCHAR2(54), dt_hr_evento DATE not null, tipoeventosefaz_id NUMBER, correcao VARCHAR2(1000) not null, versao_leiaute VARCHAR2(20), versao_evento VARCHAR2(20), versao_cce VARCHAR2(20), versao_aplic VARCHAR2(40), cod_msg_cab  VARCHAR2(4), motivo_resp_cab VARCHAR2(4000), msgwebserv_id_cab NUMBER, cod_msg VARCHAR2(4), motivo_resp VARCHAR2(4000), msgwebserv_id NUMBER, dt_hr_reg_evento DATE, nro_protocolo NUMBER(15), usuario_id NUMBER, xml_envio BLOB, xml_retorno BLOB, xml_proc BLOB, dm_download_xml_sic NUMBER(1) default 0 not null ) tablespace CSF_DATA';		 
      EXCEPTION
         WHEN OTHERS THEN
            RAISE_APPLICATION_ERROR ( -20101, 'Erro ao criar tabela de CONHEC_TRANSP_CCE - '||SQLERRM );
      END;	  
      -- 
      commit;
      --	  
      -- Add comments to the table   
      BEGIN
         EXECUTE IMMEDIATE 'comment on table CSF_OWN.CONHEC_TRANSP_CCE is ''Tabela de CC-e vinculada ao conhecimento de transporte''';
      EXCEPTION
         WHEN OTHERS THEN
            RAISE_APPLICATION_ERROR ( -20101, 'Erro ao criar comentario de CONHEC_TRANSP_CCE - '||SQLERRM );
      END;	  
      -- 
      -- Add comments to the columns
      BEGIN
         EXECUTE IMMEDIATE 'comment on column CSF_OWN.CONHEC_TRANSP_CCE.conhectransp_id is ''ID relacionado a tabela CONHEC_TRANSP''';
      EXCEPTION
         WHEN OTHERS THEN
            RAISE_APPLICATION_ERROR ( -20101, 'Erro ao criar comentario de CONHEC_TRANSP_CCE - '||SQLERRM );
      END;	  
      --
      BEGIN
         EXECUTE IMMEDIATE 'comment on column CSF_OWN.CONHEC_TRANSP_CCE.dm_st_integra is ''Situa��o de Integra��o: 0 - Indefinido, 2 - Integrado via arquivo texto (IN), 7 - Integra��o por view de banco de dados, 8 - Inserida a resposta do CTe para o ERP, 9 - Atualizada a resposta do CTe para o ERP''';
      EXCEPTION
         WHEN OTHERS THEN
            RAISE_APPLICATION_ERROR ( -20101, 'Erro ao criar comentario de CONHEC_TRANSP_CCE - '||SQLERRM );
      END;	  
      --	  
      BEGIN
         EXECUTE IMMEDIATE 'comment on column CSF_OWN.CONHEC_TRANSP_CCE.dm_st_proc is ''Situa��o: 0-N�o Validado; 1-Validado; 2-Aguardando Envio; 3-Processado; 4-Erro de valida��o; 5-Rejeitada''';
      EXCEPTION
         WHEN OTHERS THEN
            RAISE_APPLICATION_ERROR ( -20101, 'Erro ao criar comentario de CONHEC_TRANSP_CCE - '||SQLERRM );
      END;	  
      --
      BEGIN
         EXECUTE IMMEDIATE 'comment on column CSF_OWN.CONHEC_TRANSP_CCE.id_tag_chave is ''Identificador da TAG a ser assinada, a regra de forma��o do Id �: ID + tpEvento + chave do CT-e + nSeqEvento''';
      EXCEPTION
         WHEN OTHERS THEN
            RAISE_APPLICATION_ERROR ( -20101, 'Erro ao criar comentario de CONHEC_TRANSP_CCE - '||SQLERRM );
      END;	  
      --
      BEGIN
         EXECUTE IMMEDIATE 'comment on column CSF_OWN.CONHEC_TRANSP_CCE.dt_hr_evento is ''Data e hora do evento no formato''';
      EXCEPTION
         WHEN OTHERS THEN
            RAISE_APPLICATION_ERROR ( -20101, 'Erro ao criar comentario de CONHEC_TRANSP_CCE - '||SQLERRM );
      END;	  
      --
      BEGIN
         EXECUTE IMMEDIATE 'comment on column CSF_OWN.CONHEC_TRANSP_CCE.tipoeventosefaz_id is ''ID relacionado a tabela TIPO_EVENTO_SEFAZ''';
      EXCEPTION
         WHEN OTHERS THEN
            RAISE_APPLICATION_ERROR ( -20101, 'Erro ao criar comentario de CONHEC_TRANSP_CCE - '||SQLERRM );
      END;	  
      --
      BEGIN
         EXECUTE IMMEDIATE 'comment on column CSF_OWN.CONHEC_TRANSP_CCE.correcao is ''Corre��o a ser considerada, texto livre. A corre��o mais recente substitui as anteriores''';
      EXCEPTION
         WHEN OTHERS THEN
            RAISE_APPLICATION_ERROR ( -20101, 'Erro ao criar comentario de CONHEC_TRANSP_CCE - '||SQLERRM );
      END;	  
      --
      BEGIN
         EXECUTE IMMEDIATE 'comment on column CSF_OWN.CONHEC_TRANSP_CCE.versao_leiaute is ''Vers�o do leiaute do evento''';
      EXCEPTION
         WHEN OTHERS THEN
            RAISE_APPLICATION_ERROR ( -20101, 'Erro ao criar comentario de CONHEC_TRANSP_CCE - '||SQLERRM );
      END;	  
      --
      BEGIN
         EXECUTE IMMEDIATE 'comment on column CSF_OWN.CONHEC_TRANSP_CCE.versao_evento is ''Vers�o do evento''';
      EXCEPTION
         WHEN OTHERS THEN
            RAISE_APPLICATION_ERROR ( -20101, 'Erro ao criar comentario de CONHEC_TRANSP_CCE - '||SQLERRM );
      END;	  
      --
      BEGIN
         EXECUTE IMMEDIATE 'comment on column CSF_OWN.CONHEC_TRANSP_CCE.versao_cce is ''Vers�o da carta de corre��o''';
      EXCEPTION
         WHEN OTHERS THEN
            RAISE_APPLICATION_ERROR ( -20101, 'Erro ao criar comentario de CONHEC_TRANSP_CCE - '||SQLERRM );
      END;	  
      --
      BEGIN
         EXECUTE IMMEDIATE 'comment on column CSF_OWN.CONHEC_TRANSP_CCE.versao_aplic is ''Vers�o da aplica��o que processou o evento''';
      EXCEPTION
         WHEN OTHERS THEN
            RAISE_APPLICATION_ERROR ( -20101, 'Erro ao criar comentario de CONHEC_TRANSP_CCE - '||SQLERRM );
      END;	  
      --
      BEGIN
         EXECUTE IMMEDIATE 'comment on column CSF_OWN.CONHEC_TRANSP_CCE.cod_msg_cab is ''C�digo do status da resposta Cabe�alho''';
      EXCEPTION
         WHEN OTHERS THEN
            RAISE_APPLICATION_ERROR ( -20101, 'Erro ao criar comentario de CONHEC_TRANSP_CCE - '||SQLERRM );
      END;	  
      --
      BEGIN
         EXECUTE IMMEDIATE 'comment on column CSF_OWN.CONHEC_TRANSP_CCE.motivo_resp_cab is ''Descri��o do status da resposta Cabe�alho''';
      EXCEPTION
         WHEN OTHERS THEN
            RAISE_APPLICATION_ERROR ( -20101, 'Erro ao criar comentario de CONHEC_TRANSP_CCE - '||SQLERRM );
      END;	  
      --
      BEGIN
         EXECUTE IMMEDIATE 'comment on column CSF_OWN.CONHEC_TRANSP_CCE.msgwebserv_id_cab is ''ID relacionado a tabela MSG_WEB_SERV para cabe�alho do retorno''';
      EXCEPTION
         WHEN OTHERS THEN
            RAISE_APPLICATION_ERROR ( -20101, 'Erro ao criar comentario de CONHEC_TRANSP_CCE - '||SQLERRM );
      END;	  
      --
      BEGIN
         EXECUTE IMMEDIATE 'comment on column CSF_OWN.CONHEC_TRANSP_CCE.cod_msg is ''C�digo do status da resposta''';
      EXCEPTION
         WHEN OTHERS THEN
            RAISE_APPLICATION_ERROR ( -20101, 'Erro ao criar comentario de CONHEC_TRANSP_CCE - '||SQLERRM );
      END;	  
      --
      BEGIN
         EXECUTE IMMEDIATE 'comment on column CSF_OWN.CONHEC_TRANSP_CCE.motivo_resp is ''Descri��o do status da resposta''';
      EXCEPTION
         WHEN OTHERS THEN
            RAISE_APPLICATION_ERROR ( -20101, 'Erro ao criar comentario de CONHEC_TRANSP_CCE - '||SQLERRM );
      END;	  
      --
      BEGIN
         EXECUTE IMMEDIATE 'comment on column CSF_OWN.CONHEC_TRANSP_CCE.msgwebserv_id is ''ID relacionado a tabela MSG_WEB_SERV''';
      EXCEPTION
         WHEN OTHERS THEN
            RAISE_APPLICATION_ERROR ( -20101, 'Erro ao criar comentario de CONHEC_TRANSP_CCE - '||SQLERRM );
      END;	  
      --
      BEGIN
         EXECUTE IMMEDIATE 'comment on column CSF_OWN.CONHEC_TRANSP_CCE.dt_hr_reg_evento is ''Data e hora de registro do evento no formato''';
      EXCEPTION
         WHEN OTHERS THEN
            RAISE_APPLICATION_ERROR ( -20101, 'Erro ao criar comentario de CONHEC_TRANSP_CCE - '||SQLERRM );
      END;	  
      --
      BEGIN
         EXECUTE IMMEDIATE 'comment on column CSF_OWN.CONHEC_TRANSP_CCE.nro_protocolo is ''N�mero do Protocolo do Evento da CC-e''';
      EXCEPTION
         WHEN OTHERS THEN
            RAISE_APPLICATION_ERROR ( -20101, 'Erro ao criar comentario de CONHEC_TRANSP_CCE - '||SQLERRM );
      END;	  
      --
      BEGIN
         EXECUTE IMMEDIATE 'comment on column CSF_OWN.CONHEC_TRANSP_CCE.usuario_id is ''ID relacionado a tabela NEO_USUARIO''';
      EXCEPTION
         WHEN OTHERS THEN
            RAISE_APPLICATION_ERROR ( -20101, 'Erro ao criar comentario de CONHEC_TRANSP_CCE - '||SQLERRM );
      END;	  
      --
      BEGIN
         EXECUTE IMMEDIATE 'comment on column CSF_OWN.CONHEC_TRANSP_CCE.xml_envio is ''XML de envio da CCe''';
      EXCEPTION
         WHEN OTHERS THEN
            RAISE_APPLICATION_ERROR ( -20101, 'Erro ao criar comentario de CONHEC_TRANSP_CCE - '||SQLERRM );
      END;	  
      --
      BEGIN
         EXECUTE IMMEDIATE 'comment on column CSF_OWN.CONHEC_TRANSP_CCE.xml_retorno is ''XML de retorno da CCe''';
      EXCEPTION
         WHEN OTHERS THEN
            RAISE_APPLICATION_ERROR ( -20101, 'Erro ao criar comentario de CONHEC_TRANSP_CCE - '||SQLERRM );
      END;	  
      --
      BEGIN
         EXECUTE IMMEDIATE 'comment on column CSF_OWN.CONHEC_TRANSP_CCE.xml_proc is ''XML de processado da CCe''';
      EXCEPTION
         WHEN OTHERS THEN
            RAISE_APPLICATION_ERROR ( -20101, 'Erro ao criar comentario de CONHEC_TRANSP_CCE - '||SQLERRM );
      END;	  
      --
      BEGIN
         EXECUTE IMMEDIATE 'comment on column CSF_OWN.CONHEC_TRANSP_CCE.dm_download_xml_sic is ''Donwload XML pelo SIC: 0-N�o; 1-Sim''';
      EXCEPTION
         WHEN OTHERS THEN
            RAISE_APPLICATION_ERROR ( -20101, 'Erro ao criar comentario de CONHEC_TRANSP_CCE - '||SQLERRM );
      END;	  
      --
      -- Create/Recreate primary, unique and foreign key constraints
      BEGIN
         EXECUTE IMMEDIATE 'alter table CSF_OWN.CONHEC_TRANSP_CCE add constraint CONHECTRANSPCCE_PK primary key (ID) using index tablespace CSF_INDEX';
      EXCEPTION
         WHEN OTHERS THEN
            RAISE_APPLICATION_ERROR ( -20101, 'Erro ao criar primary de CONHEC_TRANSP_CCE - '||SQLERRM );
      END;
      --
      BEGIN
         EXECUTE IMMEDIATE 'alter table CSF_OWN.CONHEC_TRANSP_CCE add constraint CTCCE_MSGWEBSERV_CAB_FK foreign key (MSGWEBSERV_ID_CAB) references CSF_OWN.MSG_WEBSERV (ID)';
      EXCEPTION
         WHEN OTHERS THEN
            RAISE_APPLICATION_ERROR ( -20101, 'Erro ao criar foreign key de CONHEC_TRANSP_CCE - '||SQLERRM );
      END;
      --	  
      BEGIN
         EXECUTE IMMEDIATE 'alter table CSF_OWN.CONHEC_TRANSP_CCE add constraint CTCCE_MSGWEBSERV_FK foreign key (MSGWEBSERV_ID) references CSF_OWN.MSG_WEBSERV (ID)';
      EXCEPTION
         WHEN OTHERS THEN
            RAISE_APPLICATION_ERROR ( -20101, 'Erro ao criar foreign key de CONHEC_TRANSP_CCE - '||SQLERRM );
      END;
      --	  
      BEGIN
         EXECUTE IMMEDIATE 'alter table CSF_OWN.CONHEC_TRANSP_CCE add constraint CTCCE_CONHECTRANSP_FK foreign key (CONHECTRANSP_ID) references CSF_OWN.CONHEC_TRANSP (ID)';
      EXCEPTION
         WHEN OTHERS THEN
            RAISE_APPLICATION_ERROR ( -20101, 'Erro ao criar foreign key de CONHEC_TRANSP_CCE - '||SQLERRM );
      END;
      --
      BEGIN
         EXECUTE IMMEDIATE 'alter table CSF_OWN.CONHEC_TRANSP_CCE add constraint CTCCE_TIPOEVENTOSEFAZ_FK foreign key (TIPOEVENTOSEFAZ_ID) references CSF_OWN.TIPO_EVENTO_SEFAZ (ID)';
      EXCEPTION
         WHEN OTHERS THEN
            RAISE_APPLICATION_ERROR ( -20101, 'Erro ao criar foreign key de CONHEC_TRANSP_CCE - '||SQLERRM );
      END;
      --
      BEGIN
         EXECUTE IMMEDIATE 'alter table CSF_OWN.CONHEC_TRANSP_CCE add constraint CONHECTRANSPCCE_USUARIO_FK foreign key (USUARIO_ID) references CSF_OWN.NEO_USUARIO (ID)';
      EXCEPTION
         WHEN OTHERS THEN
            RAISE_APPLICATION_ERROR ( -20101, 'Erro ao criar foreign key de CONHEC_TRANSP_CCE - '||SQLERRM );
      END;
      --
      -- Create/Recreate indexes 	  
      BEGIN
         EXECUTE IMMEDIATE 'create index CTCCE_MSGWEBSERV_CAB_FK_I on CSF_OWN.CONHEC_TRANSP_CCE (MSGWEBSERV_ID_CAB) tablespace CSF_INDEX';
      EXCEPTION
         WHEN OTHERS THEN
            RAISE_APPLICATION_ERROR ( -20101, 'Erro ao criar index de CONHEC_TRANSP_CCE - '||SQLERRM );
      END;
      --	  
      BEGIN
         EXECUTE IMMEDIATE 'create index CTCCE_MSGWEBSERV_FK_I on CSF_OWN.CONHEC_TRANSP_CCE (MSGWEBSERV_ID) tablespace CSF_INDEX';
      EXCEPTION
         WHEN OTHERS THEN
            RAISE_APPLICATION_ERROR ( -20101, 'Erro ao criar index de CONHEC_TRANSP_CCE - '||SQLERRM );
      END;
      --		  
      BEGIN
         EXECUTE IMMEDIATE 'create index CTCCE_CONHECTRANSP_FK_I on CSF_OWN.CONHEC_TRANSP_CCE (CONHECTRANSP_ID) tablespace CSF_INDEX';
      EXCEPTION
         WHEN OTHERS THEN
            RAISE_APPLICATION_ERROR ( -20101, 'Erro ao criar index de CONHEC_TRANSP_CCE - '||SQLERRM );
      END;
      --
      BEGIN
         EXECUTE IMMEDIATE 'create index CTCCE_TIPOEVENTOSEFAZ_FK_I on CSF_OWN.CONHEC_TRANSP_CCE (TIPOEVENTOSEFAZ_ID) tablespace CSF_INDEX';
      EXCEPTION
         WHEN OTHERS THEN
            RAISE_APPLICATION_ERROR ( -20101, 'Erro ao criar index de CONHEC_TRANSP_CCE - '||SQLERRM );
      END;
      --
      BEGIN
         EXECUTE IMMEDIATE 'create index CONHECTRANSPCCE_USUARIO_FK_I on CSF_OWN.CONHEC_TRANSP_CCE (USUARIO_ID) tablespace CSF_INDEX';
      EXCEPTION
         WHEN OTHERS THEN
            RAISE_APPLICATION_ERROR ( -20101, 'Erro ao criar index de CONHEC_TRANSP_CCE - '||SQLERRM );
      END;
      --
      -- Create/Recreate check constraints 	  
      BEGIN
         EXECUTE IMMEDIATE 'alter table CSF_OWN.CONHEC_TRANSP_CCE add constraint CTCCE_STPROC_CK check (DM_ST_PROC in (0, 1, 2, 3, 4, 5))';
      EXCEPTION
         WHEN OTHERS THEN
            RAISE_APPLICATION_ERROR ( -20101, 'Erro ao criar check constraints de CONHEC_TRANSP_CCE - '||SQLERRM );
      END;
      --
      BEGIN
         EXECUTE IMMEDIATE 'alter table CSF_OWN.CONHEC_TRANSP_CCE add constraint CTCCE_DMSTINTEGRA_CK check (dm_st_integra IN (0,2,7,8,9))';
      EXCEPTION
         WHEN OTHERS THEN
            RAISE_APPLICATION_ERROR ( -20101, 'Erro ao criar check constraints de CONHEC_TRANSP_CCE - '||SQLERRM );
      END;
      --
      -- Grant/Revoke object privileges	
      BEGIN
         EXECUTE IMMEDIATE 'grant select, insert, update, delete on CSF_OWN.CONHEC_TRANSP_CCE to CSF_WORK';
      EXCEPTION
         WHEN OTHERS THEN
            RAISE_APPLICATION_ERROR ( -20101, 'Erro ao criar check constraints de CONHEC_TRANSP_CCE - '||SQLERRM );
      END;
      --
   end if;
   --  
   vn_qtde := 0;   
   --
   begin   
      select count(1)
        into vn_qtde 
        from all_sequences s
       where s.SEQUENCE_OWNER = 'CSF_OWN'
         and s.SEQUENCE_NAME  = 'CONHECTRANSPCCE_SEQ';   
   exception
      when others then
         vn_qtde := 0;		 
   end;
   --  
   if vn_qtde = 0 then 
      --
      BEGIN
         -- Create sequence
         EXECUTE IMMEDIATE 'create sequence CSF_OWN.CONHECTRANSPCCE_SEQ minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache';
      EXCEPTION
         WHEN OTHERS THEN
            RAISE_APPLICATION_ERROR ( -20101, 'Erro ao criar sequence de CONHECTRANSPCCE_SEQ - '||SQLERRM );
      END;
      --	  
   end if;
   --  
   commit;
   --   
end;
/

begin
   --
   begin
      insert into csf_own.dominio ( dominio
                                  , vl
                                  , descr
                                  , id
                                  )
                           values ( 'CONHEC_TRANSP_CCE.DM_ST_INTEGRA'
                                  , '0'
                                  , 'Indefinido'
                                  , csf_own.dominio_seq.nextval);
   exception
      when others then
         update csf_own.dominio
            set descr = 'Indefinido'           
          where dominio = 'CONHEC_TRANSP_CCE.DM_ST_INTEGRA'
            and vl = '0';
   end;		
   --
   begin
      insert into csf_own.dominio ( dominio
                                  , vl
                                  , descr
                                  , id
                                  )
                           values ( 'CONHEC_TRANSP_CCE.DM_ST_INTEGRA'
                                  , '2'
                                  , 'Integrado via arquivo texto (IN)'
                                  , csf_own.dominio_seq.nextval);
   exception
      when others then
         update csf_own.dominio
            set descr = 'Integrado via arquivo texto (IN)'           
          where dominio = 'CONHEC_TRANSP_CCE.DM_ST_INTEGRA'
            and vl = '2';
   end;		
   --
   begin   
      insert into csf_own.dominio ( dominio
                                  , vl
                                  , descr
                                  , id
                                  )
                           values ( 'CONHEC_TRANSP_CCE.DM_ST_INTEGRA'
                                  , '7'
                                  , 'Integra��o por view de banco de dados'
                                  , csf_own.dominio_seq.nextval);
   exception
      when others then
         update csf_own.dominio
            set descr = 'Integra��o por view de banco de dados'           
          where dominio = 'CONHEC_TRANSP_CCE.DM_ST_INTEGRA'
            and vl = '7';
   end;		
   --   
   begin   
      insert into csf_own.dominio ( dominio
                                  , vl
                                  , descr
                                  , id
                                  )
                           values ( 'CONHEC_TRANSP_CCE.DM_ST_INTEGRA'
                                  , '8'
                                  , 'Inserida a resposta do CTe para o ERP'
                                  , csf_own.dominio_seq.nextval);
   exception
      when others then
         update csf_own.dominio
            set descr = 'Inserida a resposta do CTe para o ERP'           
          where dominio = 'CONHEC_TRANSP_CCE.DM_ST_INTEGRA'
            and vl = '8';
   end;		
   --   
   begin   
      insert into csf_own.dominio ( dominio
                                  , vl
                                  , descr
                                  , id
                                  )
                           values ( 'CONHEC_TRANSP_CCE.DM_ST_INTEGRA'
                                  , '9'
                                  , 'Atualizada a resposta do CTe para o ERP'
                                  , csf_own.dominio_seq.nextval);
   exception
      when others then
         update csf_own.dominio
            set descr = 'Atualizada a resposta do CTe para o ERP'           
          where dominio = 'CONHEC_TRANSP_CCE.DM_ST_INTEGRA'
            and vl = '9';
   end;		
   --  
   begin   
      insert into csf_own.dominio ( dominio
                                  , vl
                                  , descr
                                  , id
                                  )
                           values ( 'CONHEC_TRANSP_CCE.DM_ST_PROC'
                                  , '0'
                                  , 'N�o Validado'
                                  , csf_own.dominio_seq.nextval);
   exception
      when others then
         update csf_own.dominio
            set descr = 'N�o Validado'           
          where dominio = 'CONHEC_TRANSP_CCE.DM_ST_PROC'
            and vl = '0';
   end;	
   --   
   begin   
      insert into csf_own.dominio ( dominio
                                  , vl
                                  , descr
                                  , id
                                  )
                           values ( 'CONHEC_TRANSP_CCE.DM_ST_PROC'
                                  , '1'
                                  , 'Validado'
                                  , csf_own.dominio_seq.nextval);
   exception
      when others then
         update csf_own.dominio
            set descr = 'Validado'           
          where dominio = 'CONHEC_TRANSP_CCE.DM_ST_PROC'
            and vl = '1';
   end;
   --   
   begin   
      insert into csf_own.dominio ( dominio
                                  , vl
                                  , descr
                                  , id
                                  )
                           values ( 'CONHEC_TRANSP_CCE.DM_ST_PROC'
                                  , '2'
                                  , 'Aguardando Envio'
                                  , csf_own.dominio_seq.nextval);
   exception
      when others then
         update csf_own.dominio
            set descr = 'Aguardando Envio'           
          where dominio = 'CONHEC_TRANSP_CCE.DM_ST_PROC'
            and vl = '2';
   end;
   --   
   begin   
      insert into csf_own.dominio ( dominio
                                  , vl
                                  , descr
                                  , id
                                  )
                           values ( 'CONHEC_TRANSP_CCE.DM_ST_PROC'
                                  , '3'
                                  , 'Processado'
                                  , csf_own.dominio_seq.nextval);
   exception
      when others then
         update csf_own.dominio
            set descr = 'Processado'           
          where dominio = 'CONHEC_TRANSP_CCE.DM_ST_PROC'
            and vl = '3';
   end;   
   --   
   begin   
      insert into csf_own.dominio ( dominio
                                  , vl
                                  , descr
                                  , id
                                  )
                           values ( 'CONHEC_TRANSP_CCE.DM_ST_PROC'
                                  , '4'
                                  , 'Erro de valida��o'
                                  , csf_own.dominio_seq.nextval);
   exception
      when others then
         update csf_own.dominio
            set descr = 'Erro de valida��o'           
          where dominio = 'CONHEC_TRANSP_CCE.DM_ST_PROC'
            and vl = '4';
   end;    
   --   
   begin   
      insert into csf_own.dominio ( dominio
                                  , vl
                                  , descr
                                  , id
                                  )
                           values ( 'CONHEC_TRANSP_CCE.DM_ST_PROC'
                                  , '5'
                                  , 'Rejeitada'
                                  , csf_own.dominio_seq.nextval);
   exception
      when others then
         update csf_own.dominio
            set descr = 'Rejeitada'           
          where dominio = 'CONHEC_TRANSP_CCE.DM_ST_PROC'
            and vl = '5';
   end;   
   --
   commit;
   --     
end;
/

declare
vn_count integer;
--
begin
  ---
  vn_count:=0;
  ---
  begin
    select count(1) into vn_count
    from  all_constraints 
    where owner = 'CSF_OWN'
      and constraint_name = 'CIDADENFSE_DMPADRAO_CK';
  exception
    when others then
      vn_count:=0;
  end;
  ---
  if vn_count = 1 then
     begin  
		execute immediate 'alter table CSF_OWN.CIDADE_NFSE drop constraint CIDADENFSE_DMPADRAO_CK';
		execute immediate 'alter table CSF_OWN.CIDADE_NFSE add constraint CIDADENFSE_DMPADRAO_CK check (dm_padrao in (0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45))';
	 exception 
		when others then
			null;
	 end;
  elsif  vn_count = 0 then    
     begin
		execute immediate 'alter table CSF_OWN.CIDADE_NFSE add constraint CIDADENFSE_DMPADRAO_CK check (dm_padrao in (0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45))';
	 exception 
		when others then
			null;
	 end;
  end if;
  --
  commit;  
  --
  begin
	  insert into CSF_OWN.DOMINIO (  dominio
								  ,  vl
								  ,  descr
								  ,  id  )    
						   values (  'CIDADE_NFSE.DM_PADRAO'
								  ,  '45'
								  ,  'NFem'
								  ,  CSF_OWN.DOMINIO_SEQ.NEXTVAL  ); 
	  --
	  commit;        
	  --
  exception  
      when dup_val_on_index then 
          begin 
              update CSF_OWN.DOMINIO 
                 set vl      = '45'
               where dominio = 'CIDADE_NFSE.DM_PADRAO'
                 and descr   = 'NFem'; 
	  	      --
              commit; 
              --
           exception when others then 
                raise_application_error(-20101, 'Erro no script Redmine #75898 Adicionar Padr�o para emiss�o de NFS-e (NFem)' || sqlerrm);
             --
          end;
  end; 
end;			
/
 
declare
--
vn_dm_tp_amb1  number  := 0;
vn_dm_tp_amb2  number  := 0;
vv_ibge_cidade csf_own.cidade.ibge_cidade%type;
vv_padrao      csf_own.dominio.descr%type;    
vv_habil       csf_own.dominio.descr%type;
vv_ws_canc     csf_own.dominio.descr%type;

--
Begin
	-- Popula vari�veis
	vv_ibge_cidade := '4209102';
	vv_padrao      := 'NFem';     
	vv_habil       := 'SIM';
	vv_ws_canc     := 'SIM';

    begin
      --
      SELECT count(*)
        into vn_dm_tp_amb1
        from csf_own.empresa
       where dm_tp_amb = 1
       group by dm_tp_amb;
      exception when others then
        vn_dm_tp_amb1 := 0; 
      --
    end;
   --
    Begin
      --
      SELECT count(*)
        into vn_dm_tp_amb2
        from csf_own.empresa
       where dm_tp_amb = 2
       group by dm_tp_amb;
      --
	  exception when others then 
        vn_dm_tp_amb2 := 0;
     --
    end;
--
	if vn_dm_tp_amb2 > vn_dm_tp_amb1 then
	  --
	  begin
	    --  
	    update csf_own.cidade_webserv_nfse
		   set url_wsdl = 'DESATIVADO AMBIENTE DE PRODUCAO'
	     where cidade_id in (select id
							   from csf_own.cidade
							  where ibge_cidade in (vv_ibge_cidade))
		   and dm_tp_amb = 1;
	  exception 
		 when others then
		   null;
	  end;
	  --  
	  commit;
	  --
	end if;
--
	begin
		--
		update csf_own.cidade_nfse set dm_padrao    = (select distinct vl from csf_own.dominio where upper(dominio) = upper('cidade_nfse.dm_padrao') and upper(descr) = upper(vv_padrao))
								       , dm_habil   = (select distinct vl from csf_own.dominio where upper(dominio) = upper('cidade_nfse.dm_habil') and upper(descr) = upper(vv_habil))
								       , dm_ws_canc = (select distinct vl from csf_own.dominio where upper(dominio) = upper('cidade_nfse.dm_ws_canc') and upper(descr) = upper(vv_ws_canc))
         where cidade_id = (select distinct id from csf_own.cidade where ibge_cidade in (vv_ibge_cidade));
		exception when others then
			raise_application_error(-20103, 'Erro no script Redmine #75898 Atualiza��o do Padr�o Joinville - SC' || sqlerrm);
    end;
	--
	commit;
	--
--
end;
--
/  

-------------------------------------------------------------------------------------------------------------------------------------------
Prompt FIM - Redmine #75898 Cria��o de padr�o NFem a adi��o de Joinville-SC ao padr�o
-------------------------------------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------------------
Prompt INI - Redmine #75749 Sincroniza��o dos scripts Padr�o Tinus Goiana - PE
-------------------------------------------------------------------------------------------------------------------------------------------
--
--CIDADE  : Goiana - PE
--IBGE    : 2606200
--PADRAO  : Tinus
--HABIL   : SIM
--WS_CANC : SIM

declare 
   --   
   -- dm_tp_amb (Tipo de Ambiente 1-Producao; 2-Homologacao)
   cursor c_dados is
      select   ( select id from csf_own.cidade where ibge_cidade = '2606200' ) id, dm_situacao,  versao,  dm_tp_amb,  dm_tp_soap,  dm_tp_serv, descr, url_wsdl, dm_upload, dm_ind_emit 
        from ( --Produ��o
			   select 1 dm_situacao, '1' versao, 1 dm_tp_amb, 2 dm_tp_soap,  1 dm_tp_serv, 'Gera��o de NFS-e'                               descr, 'http://www.tinus.com.br/csp/goiana/WSNFSE.RecepcionarLoteRps.CLS?WSDL=1' url_wsdl, 0 dm_upload,  0 dm_ind_emit from dual union
               select 1 dm_situacao, '1' versao, 1 dm_tp_amb, 2 dm_tp_soap,  2 dm_tp_serv, 'Recep��o e Processamento de lote de RPS'        descr, 'http://www.tinus.com.br/csp/goiana/WSNFSE.RecepcionarLoteRps.CLS?WSDL=1' url_wsdl, 0 dm_upload,  0 dm_ind_emit from dual union
               select 1 dm_situacao, '1' versao, 1 dm_tp_amb, 2 dm_tp_soap,  3 dm_tp_serv, 'Consulta de Situa��o de lote de RPS'            descr, 'http://www.tinus.com.br/csp/goiana/WSNFSE.ConsultarSituacaoLoteRps.CLS?WSDL=1' url_wsdl, 0 dm_upload,  0 dm_ind_emit from dual union
               select 1 dm_situacao, '1' versao, 1 dm_tp_amb, 2 dm_tp_soap,  4 dm_tp_serv, 'Consulta de NFS-e por RPS'                      descr, 'http://www.tinus.com.br/csp/goiana/WSNFSE.ConsultarNfsePorRps.CLS?WSDL=1' url_wsdl, 0 dm_upload,  0 dm_ind_emit from dual union
               select 1 dm_situacao, '1' versao, 1 dm_tp_amb, 2 dm_tp_soap,  5 dm_tp_serv, 'Consulta de NFS-e'                              descr, 'http://www.tinus.com.br/csp/goiana/WSNFSE.ConsultarNfse.CLS?WSDL=1' url_wsdl, 0 dm_upload,  0 dm_ind_emit from dual union
               select 1 dm_situacao, '1' versao, 1 dm_tp_amb, 2 dm_tp_soap,  6 dm_tp_serv, 'Cancelamento de NFS-e'                          descr, 'http://www.tinus.com.br/csp/goiana/WSNFSE.CancelarNfse.CLS?WSDL=1' url_wsdl, 0 dm_upload,  0 dm_ind_emit from dual union
               select 1 dm_situacao, '1' versao, 1 dm_tp_amb, 2 dm_tp_soap,  7 dm_tp_serv, 'Substitui��o de NFS-e'                          descr, 'http://www.tinus.com.br/csp/goiana/WSNFSE.RecepcionarLoteRps.CLS?WSDL=1' url_wsdl, 0 dm_upload,  0 dm_ind_emit from dual union
               select 1 dm_situacao, '1' versao, 1 dm_tp_amb, 2 dm_tp_soap,  8 dm_tp_serv, 'Consulta de Empresas Autorizadas a emitir NFS-e'descr, 'http://www.tinus.com.br/csp/goiana/WSNFSE.RecepcionarLoteRps.CLS?WSDL=1' url_wsdl, 0 dm_upload,  0 dm_ind_emit from dual union
               select 1 dm_situacao, '1' versao, 1 dm_tp_amb, 2 dm_tp_soap,  9 dm_tp_serv, 'Login'                                          descr, 'http://www.tinus.com.br/csp/goiana/WSNFSE.RecepcionarLoteRps.CLS?WSDL=1' url_wsdl, 0 dm_upload,  0 dm_ind_emit from dual union
               select 1 dm_situacao, '1' versao, 1 dm_tp_amb, 2 dm_tp_soap, 10 dm_tp_serv, 'Consulta de Lote de RPS'                        descr, 'http://www.tinus.com.br/csp/goiana/WSNFSE.ConsultarLoteRps.CLS?WSDL=1' url_wsdl, 0 dm_upload,  0 dm_ind_emit from dual union
               --Homologa��o
               select 1 dm_situacao, '1' versao, 2 dm_tp_amb, 2 dm_tp_soap,  1 dm_tp_serv, 'Gera��o de NFS-e'                               descr, 'http://www2.tinus.com.br/csp/testegoi/WSNFSE.RecepcionarLoteRps.CLS?WSDL=1' url_wsdl, 0 dm_upload,  0 dm_ind_emit from dual union
               select 1 dm_situacao, '1' versao, 2 dm_tp_amb, 2 dm_tp_soap,  2 dm_tp_serv, 'Recep��o e Processamento de lote de RPS'        descr, 'http://www2.tinus.com.br/csp/testegoi/WSNFSE.RecepcionarLoteRps.CLS?WSDL=1' url_wsdl, 0 dm_upload,  0 dm_ind_emit from dual union
               select 1 dm_situacao, '1' versao, 2 dm_tp_amb, 2 dm_tp_soap,  3 dm_tp_serv, 'Consulta de Situa��o de lote de RPS'            descr, 'http://www2.tinus.com.br/csp/testegoi/WSNFSE.ConsultarSituacaoLoteRps.CLS?WSDL=1' url_wsdl, 0 dm_upload,  0 dm_ind_emit from dual union
               select 1 dm_situacao, '1' versao, 2 dm_tp_amb, 2 dm_tp_soap,  4 dm_tp_serv, 'Consulta de NFS-e por RPS'                      descr, 'http://www2.tinus.com.br/csp/testegoi/WSNFSE.ConsultarNfsePorRps.CLS?WSDL=1' url_wsdl, 0 dm_upload,  0 dm_ind_emit from dual union
               select 1 dm_situacao, '1' versao, 2 dm_tp_amb, 2 dm_tp_soap,  5 dm_tp_serv, 'Consulta de NFS-e'                              descr, 'http://www2.tinus.com.br/csp/testegoi/WSNFSE.ConsultarNfse.CLS?WSDL=1' url_wsdl, 0 dm_upload,  0 dm_ind_emit from dual union
               select 1 dm_situacao, '1' versao, 2 dm_tp_amb, 2 dm_tp_soap,  6 dm_tp_serv, 'Cancelamento de NFS-e'                          descr, 'http://www2.tinus.com.br/csp/testegoi/WSNFSE.CancelarNfse.CLS?WSDL=1' url_wsdl, 0 dm_upload,  0 dm_ind_emit from dual union
               select 1 dm_situacao, '1' versao, 2 dm_tp_amb, 2 dm_tp_soap,  7 dm_tp_serv, 'Substitui��o de NFS-e'                          descr, 'http://www2.tinus.com.br/csp/testegoi/WSNFSE.RecepcionarLoteRps.CLS?WSDL=1' url_wsdl, 0 dm_upload,  0 dm_ind_emit from dual union
               select 1 dm_situacao, '1' versao, 2 dm_tp_amb, 2 dm_tp_soap,  8 dm_tp_serv, 'Consulta de Empresas Autorizadas a emitir NFS-e'descr, 'http://www2.tinus.com.br/csp/testegoi/WSNFSE.RecepcionarLoteRps.CLS?WSDL=1' url_wsdl, 0 dm_upload,  0 dm_ind_emit from dual union
               select 1 dm_situacao, '1' versao, 2 dm_tp_amb, 2 dm_tp_soap,  9 dm_tp_serv, 'Login'                                          descr, 'http://www2.tinus.com.br/csp/testegoi/WSNFSE.RecepcionarLoteRps.CLS?WSDL=1' url_wsdl, 0 dm_upload,  0 dm_ind_emit from dual union
               select 1 dm_situacao, '1' versao, 2 dm_tp_amb, 2 dm_tp_soap, 10 dm_tp_serv, 'Consulta de Lote de RPS'                        descr, 'http://www2.tinus.com.br/csp/testegoi/WSNFSE.ConsultarLoteRps.CLS?WSDL=1' url_wsdl, 0 dm_upload,  0 dm_ind_emit from dual
              );
--   
begin   
   --
      for rec_dados in c_dados loop
         exit when c_dados%notfound or (c_dados%notfound) is null;
         --
         begin  
            insert into csf_own.cidade_webserv_nfse (  id
                                                    ,  cidade_id
                                                    ,  dm_situacao
                                                    ,  versao
                                                    ,  dm_tp_amb
                                                    ,  dm_tp_soap
                                                    ,  dm_tp_serv
                                                    ,  descr
                                                    ,  url_wsdl
                                                    ,  dm_upload
                                                    ,  dm_ind_emit  )    
                                             values (  csf_own.cidadewebservnfse_seq.nextval
                                                    ,  rec_dados.id
                                                    ,  rec_dados.dm_situacao
                                                    ,  rec_dados.versao
                                                    ,  rec_dados.dm_tp_amb
                                                    ,  rec_dados.dm_tp_soap
                                                    ,  rec_dados.dm_tp_serv
                                                    ,  rec_dados.descr
                                                    ,  rec_dados.url_wsdl
                                                    ,  rec_dados.dm_upload
                                                    ,  rec_dados.dm_ind_emit  ); 
            --
            commit;        
            --
         exception  
            when dup_val_on_index then 
               begin 
                  update csf_own.cidade_webserv_nfse 
                     set versao      = rec_dados.versao
                       , dm_tp_soap  = rec_dados.dm_tp_soap
                       , descr       = rec_dados.descr
                       , url_wsdl    = rec_dados.url_wsdl
                       , dm_upload   = rec_dados.dm_upload
                   where cidade_id   = rec_dados.id 
                     and dm_tp_amb   = rec_dados.dm_tp_amb 
                     and dm_tp_serv  = rec_dados.dm_tp_serv 
                     and dm_ind_emit = rec_dados.dm_ind_emit; 
                  --
                  commit; 
                  --
               exception when others then 
                  raise_application_error(-20101, 'Erro no script Redmine #75749 Atualiza��o URL ambiente de homologa��o e Produ��o Goiana - PE' || sqlerrm);
               end; 
               --
         end;
         -- 
      --
      end loop;
   --
   commit;
   --
exception
   when others then
      raise_application_error(-20102, 'Erro no script Redmine #75749 Atualiza��o URL ambiente de homologa��o e Produ��o Goiana - PE' || sqlerrm);
end;
/

declare
--
vn_dm_tp_amb1  number  := 0;
vn_dm_tp_amb2  number  := 0;
vv_ibge_cidade csf_own.cidade.ibge_cidade%type;
vv_padrao      csf_own.dominio.descr%type;    
vv_habil       csf_own.dominio.descr%type;
vv_ws_canc     csf_own.dominio.descr%type;

--
Begin
	-- Popula vari�veis
	vv_ibge_cidade := '2606200';
	vv_padrao      := 'Tinus';     
	vv_habil       := 'SIM';
	vv_ws_canc     := 'SIM';

    begin
      --
      SELECT count(*)
        into vn_dm_tp_amb1
        from csf_own.empresa
       where dm_tp_amb = 1
       group by dm_tp_amb;
      exception when others then
        vn_dm_tp_amb1 := 0; 
      --
    end;
   --
    Begin
      --
      SELECT count(*)
        into vn_dm_tp_amb2
        from csf_own.empresa
       where dm_tp_amb = 2
       group by dm_tp_amb;
      --
	  exception when others then 
        vn_dm_tp_amb2 := 0;
     --
    end;
--
	if vn_dm_tp_amb2 > vn_dm_tp_amb1 then
	  --
	  begin
	    --  
	    update csf_own.cidade_webserv_nfse
		   set url_wsdl = 'DESATIVADO AMBIENTE DE PRODUCAO'
	     where cidade_id in (select id
							   from csf_own.cidade
							  where ibge_cidade in (vv_ibge_cidade))
		   and dm_tp_amb = 1;
	  exception 
		 when others then
		   null;
	  end;
	  --  
	  commit;
	  --
	end if;
--
	begin
		--
		update csf_own.cidade_nfse set dm_padrao    = (select distinct vl from csf_own.dominio where upper(dominio) = upper('cidade_nfse.dm_padrao') and upper(descr) = upper(vv_padrao))
								       , dm_habil   = (select distinct vl from csf_own.dominio where upper(dominio) = upper('cidade_nfse.dm_habil') and upper(descr) = upper(vv_habil))
								       , dm_ws_canc = (select distinct vl from csf_own.dominio where upper(dominio) = upper('cidade_nfse.dm_ws_canc') and upper(descr) = upper(vv_ws_canc))
         where cidade_id = (select distinct id from csf_own.cidade where ibge_cidade in (vv_ibge_cidade));
		exception when others then
			raise_application_error(-20103, 'Erro no script Redmine #75749 Atualiza��o do Padr�o Goiana - PE' || sqlerrm);
    end;
	--
	commit;
	--
--
end;
--
/  

-------------------------------------------------------------------------------------------------------------------------------------------
Prompt FIM - Redmine #75749 Sincroniza��o dos scripts Padr�o Tinus Goiana - PE
-------------------------------------------------------------------------------------------------------------------------------------------
------------- ---------------------------------------------------------------------------
  vn_qtde    number;
begin
  --
  begin
     select count(1)
       into vn_qtde
       from all_tab_columns c
      where c.OWNER       = 'CSF_OWN'
        and c.TABLE_NAME  = 'INUTILIZA_CONHEC_TRANSP'
        and c.COLUMN_NAME = 'ID_INUT' 
        and c.NULLABLE    = 'N';
   exception
      when others then
         vn_qtde := 0;
   end;	
   --   
   if vn_qtde = 1 then
      -- 
	  -- Add/modify columns 
      BEGIN
         EXECUTE IMMEDIATE 'alter table CSF_OWN.INUTILIZA_CONHEC_TRANSP modify id_inut null';		 
      EXCEPTION
         WHEN OTHERS THEN
            RAISE_APPLICATION_ERROR ( -20101, 'Erro alterar coluna ID_INUT de INUTILIZA_CONHEC_TRANSP - '||SQLERRM );
      END;	  
      -- 
      commit;
      --	  
   end if;
   --  
end;
/

begin
   --
   begin  
     insert into csf_own.tipo_obj_integr( id
                                        , objintegr_id
                                        , cd
                                        , descr )
                                 values ( tipoobjintegr_seq.nextval
                                        , (select o.id from csf_own.obj_integr o where o.cd = '4')
                                        , '4'
                                        , 'Inutiliza��o de Emiss�o Pr�pria de Conhec. de Transporte'
                                        );       
   exception
     when others then
       update csf_own.tipo_obj_integr
          set descr = 'Inutiliza��o de Emiss�o Pr�pria de Conhec. de Transporte'
        where objintegr_id in (select o.id from csf_own.obj_integr o where o.cd = '4')
          and cd           = '4';       
   end; 
   --  
   begin  
     insert into csf_own.tipo_obj_integr( id
                                        , objintegr_id
                                        , cd
                                        , descr )
                                 values ( tipoobjintegr_seq.nextval
                                        , (select o.id from csf_own.obj_integr o where o.cd = '4')
                                        , '5'
                                        , 'Carta de Corre��o Emiss�o Pr�pria de Conhec. de Transporte'
                                        );       
   exception
     when others then
       update csf_own.tipo_obj_integr
          set descr = 'Carta de Corre��o Emiss�o Pr�pria de Conhec. de Transporte'
        where objintegr_id in (select o.id from csf_own.obj_integr o where o.cd = '4')
          and cd           = '5';       
   end; 
   -- 
   commit;
   --   
end;
/

--------------------------------------------------------------------------------------------------------------------------------------
Prompt FIM Redmine Redmine #73063 - Altera��es para emiss�o de conhecimento de transporte.
--------------------------------------------------------------------------------------------------------------------------------------

-------------------------------------------------------------------------------------------------------------------------------
Prompt INI Redmine #74444 - Pontos de corre��o no processo de Apura��o do IRPJ e CSLL
-------------------------------------------------------------------------------------------------------------------------------
declare
   vn_modulo_id number := 0;
   vn_grupo_id number := 0;
   vn_param_id number := 0;
   vn_usuario_id number := null;
begin

-- MODULO DO SISTEMA --
   begin
      select ms.id
        into vn_modulo_id
        from CSF_OWN.MODULO_SISTEMA ms
       where ms.cod_modulo = 'CONTABIL';
   exception
      when no_data_found then
         vn_modulo_id := 0;
      when others then
         goto SAIR_SCRIPT;
   end;
   --
   if vn_modulo_id = 0 then
      --
      insert into CSF_OWN.MODULO_SISTEMA
      values(CSF_OWN.MODULOSISTEMA_SEQ.NEXTVAL, 'CONTABIL', 'Obriga��es Cont�beis ECD e ECF', 'M�dulo com parametros referentes as obriga��es contabeis ECD E ECF (Sped Cont�bil e Sped ECF)')
      returning id into vn_modulo_id;
      --
   end if;
   --
   -- GRUPO DO SISTEMA --
   begin
      select gs.id
        into vn_grupo_id
        from CSF_OWN.GRUPO_SISTEMA gs
       where gs.modulo_id = vn_modulo_id
         and gs.cod_grupo = 'ECF';
   exception
      when no_data_found then
         vn_grupo_id := 0;
      when others then
         goto SAIR_SCRIPT;
   end;
   --
   if vn_grupo_id = 0 then
      --
      insert into CSF_OWN.GRUPO_SISTEMA
      values(CSF_OWN.GRUPOSISTEMA_SEQ.NextVal, vn_modulo_id, 'ECF', 'PARAMETROS UTILIZADOS NA ECF', 'GRUPO COM INFORMA��ES DE PARAMETROS UTILIZADOS NA ECF')
      returning id into vn_grupo_id;
      --
   end if;
   --
   -- PARAMETRO DO SISTEMA --
   for x in (select * from CSF_OWN.EMPRESA m where m.dm_situacao = 1)
   loop
      begin
         select pgs.id
           into vn_param_id
           from CSF_OWN.PARAM_GERAL_SISTEMA pgs  -- UK: MULTORG_ID, EMPRESA_ID, MODULO_ID, GRUPO_ID, PARAM_NAME
          where pgs.Empresa_Id = x.Id
            and pgs.modulo_id  = vn_modulo_id
            and pgs.grupo_id   = vn_grupo_id
            and pgs.param_name = 'APUR_IR_CSLL_PARC_MENSAL';
      exception
         when no_data_found then
            vn_param_id := 0;
         when others then
            goto SAIR_SCRIPT;
      end;
      --
      --
      if vn_param_id = 0 then
         --
         -- Busca o usu�rio respond�vel pelo Mult_org
         begin
            select id
              into vn_usuario_id
              from CSF_OWN.NEO_USUARIO nu
             where upper(nu.login) = 'ADMIN';
         exception
            when no_data_found then
               begin
                  select min(id)
                    into vn_usuario_id
                    from CSF_OWN.NEO_USUARIO nu
                   where nu.Multorg_Id = x.MULTORG_ID;
               exception
                  when others then
                     goto SAIR_SCRIPT;
               end;
         end;
         --
         insert into CSF_OWN.PARAM_GERAL_SISTEMA( id
                                                , multorg_id
                                                , empresa_id
                                                , modulo_id
                                                , grupo_id
                                                , param_name
                                                , dsc_param
                                                , vlr_param
                                                , usuario_id_alt
                                                , dt_alteracao )
         values( CSF_OWN.PARAMGERALSISTEMA_SEQ.NextVal
               , X.MULTORG_ID
               , X.ID
               , vn_modulo_id
               , vn_grupo_id
               , 'APUR_IR_CSLL_PARC_MENSAL'
               , 'Realiza apura��o parcial do IR e CSLL somente do m�s e n�o acumulado.  Valores poss�veis: N = Padr�o / S = Recupera os dados de forma parcial'
               , 'N'
               , vn_usuario_id
               , sysdate);
         --
      end if;
      --
   end loop;
   --
   commit;
   --
   <<SAIR_SCRIPT>>
   rollback;
end;
/
--------------------------------------------------------------------------------------------------------------------------------------
Prompt FIM Redmine #74444 - Pontos de corre��o no processo de Apura��o do IRPJ e CSLL
-------------------------------------------------------------------------------------------------------------------------------

-------------------------------------------------------------------------------------------------------------------------------
Prompt INI Redmine #74016 - Criar DT_EXE_SERV no conhecimento de transporte
-------------------------------------------------------------------------------------------------------------------------------
 
declare
  vn_qtde    number;
begin
  begin
     select count(1)
       into vn_qtde 
       from all_tab_columns a
      where a.OWNER = 'CSF_OWN'  
        and a.TABLE_NAME = 'CONHEC_TRANSP'
        and a.COLUMN_NAME = 'DT_EXE_SERV'; 
   exception
      when others then
         vn_qtde := 0;
   end;	
   --   
   if vn_qtde = 0 then
      -- Add/modify columns    
      BEGIN
         EXECUTE IMMEDIATE 'alter table CSF_OWN.CONHEC_TRANSP add dt_exe_serv date';
      EXCEPTION
         WHEN OTHERS THEN
            RAISE_APPLICATION_ERROR ( -20101, 'Erro ao incluir coluna "DT_EXE_SERV" em CONHEC_TRANSP - '||SQLERRM );
      END;
      -- 
      -- Add comments to the table   
      BEGIN
         EXECUTE IMMEDIATE 'comment on column CSF_OWN.CONHEC_TRANSP.dt_exe_serv is ''Data de compet�ncia ou em que servi�o foi executado''';
      EXCEPTION
         WHEN OTHERS THEN
            RAISE_APPLICATION_ERROR ( -20101, 'Erro ao alterar comentario de CONHEC_TRANSP - '||SQLERRM );
      END;	  
      -- 
   end if;
   --  
   vn_qtde := 0;   
   --
   begin
      select count(1)
        into vn_qtde 
        from all_tab_columns a
       where a.OWNER = 'CSF_OWN'  
         and a.TABLE_NAME = 'TMP_CONHEC_TRANSP'
         and a.COLUMN_NAME = 'DT_EXE_SERV'; 
   exception
      when others then
         vn_qtde := 0;
   end;	
   --  
   if vn_qtde = 0 then
      -- Add/modify columns    
      BEGIN
         EXECUTE IMMEDIATE 'alter table CSF_OWN.TMP_CONHEC_TRANSP add dt_exe_serv date';
      EXCEPTION
         WHEN OTHERS THEN
            RAISE_APPLICATION_ERROR ( -20101, 'Erro ao incluir coluna "DT_EXE_SERV" em TMP_CONHEC_TRANSP - '||SQLERRM );
      END;
      -- 
   end if;
   -- 
   vn_qtde := 0;
   --
   begin
      select count(1)
        into vn_qtde	  
        from csf_own.obj_util_integr    ou
           , csf_own.ff_obj_util_integr ff
       where ou.obj_name         = 'VW_CSF_CONHEC_TRANSP_FF'
         and ff.objutilintegr_id = ou.id
         and ff.atributo         = 'DT_EXE_SERV';
   exception
      when others then
         vn_qtde := 0;
   end;
   --   
   if vn_qtde = 0 then 
      --
      begin
         insert into csf_own.ff_obj_util_integr( id
                                               , objutilintegr_id
                                               , atributo
                                               , descr
                                               , dm_tipo_campo
                                               , tamanho
                                               , qtde_decimal
                                               )    
                                         values( csf_own.objutilintegr_seq.nextval
                                               , (select oi.id from csf_own.obj_util_integr oi where oi.obj_name = 'VW_CSF_CONHEC_TRANSP_FF')
                                               , 'DT_EXE_SERV'
                                               , 'Data de compet�ncia ou em que servi�o foi executado'
                                               , 0
                                               , 10
                                               , 0
                                               );     	  
      exception
         when dup_val_on_index then
            update csf_own.ff_obj_util_integr ff
               set ff.descr         = 'Data de compet�ncia ou em que servi�o foi executado'
                 , ff.dm_tipo_campo = 0
                 , ff.tamanho       = 10
                 , ff.qtde_decimal  = 0
             where ff.objutilintegr_id = (select oi.id from csf_own.obj_util_integr oi where oi.obj_name = 'VW_CSF_CONHEC_TRANSP_FF')
               and ff.atributo         = 'DT_EXE_SERV';                 			 
      end;
      --	  
   end if;
   -- 
   commit;
   --   
end;
/

--------------------------------------------------------------------------------------------------------------------------------------
Prompt FIM Redmine #74016 - Criar DT_EXE_SERV no conhecimento de transporte
-------------------------------------------------------------------------------------------------------------------------------

-------------------------------------------------------------------------------------------------------------------------------
Prompt INI Redmine #73922 - Estrutura de tabelas
-------------------------------------------------------------------------------------------------------------------------------

@@73922_01_Nova_tab_FORMULA_COD_DIN_LUCEXP.sql
/

@@73922_02_Nova_tab_COD_DIN_LUCR_EXPR.sql
/

@@73922_03_Nova_tab_ITFORMULA_COD_DIN_LUCEXP.sql
/

@@73922_04_Nova_tab_PAR_DP_CODDIN_CTA_LUCEXP.sql
/

@@73922_05_Nova_tab_CRIT_PESQ_SLD_LUCR_EXPL.sql
/

@@73922_06_Nova_tab_CRIT_PESQ_LCTO_LUCR_EXPL.sql
/

@@73922_07_Nova_tab_PER_LUCR_EXPL.sql
/

@@73922_08_Nova_tab_APUR_LUCRO_EXPL.sql
/

@@73922_09_Nova_tab_MEM_CALC_LUCRO_EXPL.sql
/

@@73922_10_Nova_tab_PARAM_REC_LUCR_EXPL.sql
/

@@73922_11_Nova_tab_REC_UNID_LUCR_EXP.sql
/

@@73922_12_Nova_tab_CALC_LUCRO_EXPL.sql
/

@@73922_13_Nova_tab_CALC_BENEF_LUCRO_EXPL.sql
/

@@73922_14_Nova_tab_REL_CALC_LUCR_EXPLR.sql
/

@@73922_15_Nova_tab_REL_DISTR_ATV_LUCR_EXPLR.sql
/

@@73922_16_Cria_dominios.sql
/

--------------------------------------------------------------------------------------------------------------------------------------
Prompt INI Redmine #73922 - Estrutura de tabelas
--------------------------------------------------------------------------------------------------------------------------------------

-------------------------------------------------------------------------------------------------------------------------------------
Prompt INI Redmine #76385 - Inclus�o da sequence ctdifaliq_seq na seq_tab
--------------------------------------------------------------------------------------------------------------------------------------
declare
  --
  vv_sql    long;
  vn_existe number := 0;
  --
begin
   BEGIN
    SELECT COUNT(1)
        INTO vn_existe
      FROM CSF_OWN.SEQ_TAB
     WHERE UPPER(SEQUENCE_NAME) = UPPER('ctdifaliq_seq');
  EXCEPTION
    WHEN NO_DATA_FOUND THEN
      vn_existe := 0;
    WHEN OTHERS THEN
      vn_existe := -1;
  END;
  --
  IF NVL(vn_existe, 0) = 0 THEN
    BEGIN
         INSERT INTO CSF_OWN.SEQ_TAB (ID, SEQUENCE_NAME, TABLE_NAME)
          VALUES (CSF_OWN.SEQTAB_SEQ.NEXTVAL, 'ctdifaliq_seq', 'CT_DIF_ALIQ');
          COMMIT;   
    EXCEPTION 
     WHEN OTHERS THEN
      NULL;
    END;
  END IF;
   --
end;
/
--------------------------------------------------------------------------------------------------------------------------------------
Prompt FIM Redmine #76385 - Inclus�o da sequence ctdifaliq_seq na seq_tab
-------------------------------------------------------------------------------------------------------------------------------

----------------------------------------------------------------------------------------
Prompt FIM Patch 2.9.6.2 - Alteracoes no CSF_OWN
------------------------------------------------------------------------------------------
