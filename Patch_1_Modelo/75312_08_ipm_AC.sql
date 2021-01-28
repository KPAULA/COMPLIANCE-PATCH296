-------------------------------------------------------------------------------------------------------------------------------
Prompt INI Redmine #75312 - Atualiza��o tabela param_ipm (AC)
-------------------------------------------------------------------------------------------------------------------------------
begin
   --
   BEGIN
     insert into CSF_OWN.param_ipm( id , cod_ipm , descr , estado_id , dt_ini , dt_fim  )
         values ( CSF_OWN.paramipm_seq.nextval ,'ACIPME01','Agricultura - Valor Cont�bil das Entradas de insumos para produ��o pr�pria de produtos agr�colas, produzidos em propriedade rural de responsabilidade do contribuinte, ainda que no sistema integrado, por munic�pio acreano, excluindo-se as opera��es dedut�veis',1,to_date('01/01/2019','dd/mm/rrrr'), null );
   EXCEPTION
     WHEN OTHERS THEN
        NULL;
   END;
   --
   BEGIN
     insert into CSF_OWN.param_ipm( id , cod_ipm , descr , estado_id , dt_ini , dt_fim  )
         values ( CSF_OWN.paramipm_seq.nextval ,'ACIPMS01','Agricultura - Valor Cont�bil das Sa�das para comercializa��o ou industrializa��o de produ��o pr�pria de produtos agr�colas, produzidos em propriedade rural de responsabilidade do contribuinte, ainda que no sistema integrado, por munic�pio acreano, excluindo-se as opera��es dedut�veis',1,to_date('01/01/2020','dd/mm/rrrr'), null );
   EXCEPTION
     WHEN OTHERS THEN
        NULL;
   END;
   --
   BEGIN
     insert into CSF_OWN.param_ipm( id , cod_ipm , descr , estado_id , dt_ini , dt_fim  )
         values ( CSF_OWN.paramipm_seq.nextval ,'ACIPME02','Pecu�ria - Valor Cont�bil das Entradas de mercadorias e/ou aquisi��es de servi�os para produ��o pecu�ria, por munic�pio acreano, excluindo-se as opera��es dedut�veis',1,to_date('01/01/2021','dd/mm/rrrr'), null );
   EXCEPTION
     WHEN OTHERS THEN
        NULL;
   END;
   --
   BEGIN
     insert into CSF_OWN.param_ipm( id , cod_ipm , descr , estado_id , dt_ini , dt_fim  )
         values ( CSF_OWN.paramipm_seq.nextval ,'ACIPMS02','Pecu�ria - Valor Cont�bil das Sa�das de mercadorias e/ou presta��es de servi�os de produ��o pecu�ria, por munic�pio acreano, excluindo-se as opera��es dedut�veis',1,to_date('01/01/2022','dd/mm/rrrr'), null );
   EXCEPTION
     WHEN OTHERS THEN
        NULL;
   END;
   --
   BEGIN
     insert into CSF_OWN.param_ipm( id , cod_ipm , descr , estado_id , dt_ini , dt_fim  )
         values ( CSF_OWN.paramipm_seq.nextval ,'ACIPME03','Pesca - Valor Cont�bil das Entradas de mercadorias e/ou aquisi��es de servi�os para produ��o de pescado, por munic�pio acreano, excluindo-se as opera��es dedut�veis',1,to_date('01/01/2023','dd/mm/rrrr'), null );
   EXCEPTION
     WHEN OTHERS THEN
        NULL;
   END;
   --
   BEGIN
     insert into CSF_OWN.param_ipm( id , cod_ipm , descr , estado_id , dt_ini , dt_fim  )
         values ( CSF_OWN.paramipm_seq.nextval ,'ACIPMS03','Pesca - Valor Cont�bil das Sa�das de mercadorias e/ou presta��es de servi�os da produ��o de pescado, por munic�pio acreano, excluindo-se as opera��es dedut�veis',1,to_date('01/01/2024','dd/mm/rrrr'), null );
   EXCEPTION
     WHEN OTHERS THEN
        NULL;
   END;
   --
   BEGIN
     insert into CSF_OWN.param_ipm( id , cod_ipm , descr , estado_id , dt_ini , dt_fim  )
         values ( CSF_OWN.paramipm_seq.nextval ,'ACIPME04','Transporte - Valor Cont�bil das Entradas provenientes das aquisi��es de servi�os de Transporte por munic�pio acreano, excluindo-se as opera��es dedut�veis',1,to_date('01/01/2025','dd/mm/rrrr'), null );
   EXCEPTION
     WHEN OTHERS THEN
        NULL;
   END;
   --
   BEGIN
     insert into CSF_OWN.param_ipm( id , cod_ipm , descr , estado_id , dt_ini , dt_fim  )
         values ( CSF_OWN.paramipm_seq.nextval ,'ACIPMS04','Transporte - Valor Cont�bil das Sa�das referente a presta��es de servi�os de Transporte por munic�pio acreano, excluindo-se as opera��es dedut�veis',1,to_date('01/01/2026','dd/mm/rrrr'), null );
   EXCEPTION
     WHEN OTHERS THEN
        NULL;
   END;
   --
   BEGIN
     insert into CSF_OWN.param_ipm( id , cod_ipm , descr , estado_id , dt_ini , dt_fim  )
         values ( CSF_OWN.paramipm_seq.nextval ,'ACIPME05','Produ��o de Energia El�trica (Usinas) - Valor Cont�bil das Entradas de mercadorias e/ou aquisi��es de servi�os utilizados na gera��o de energia el�trica, por munic�pio acreano, excluindo-se as opera��es dedut�veis',1,to_date('01/01/2027','dd/mm/rrrr'), null );
   EXCEPTION
     WHEN OTHERS THEN
        NULL;
   END;
   --
   BEGIN
     insert into CSF_OWN.param_ipm( id , cod_ipm , descr , estado_id , dt_ini , dt_fim  )
         values ( CSF_OWN.paramipm_seq.nextval ,'ACIPMS05','Produ��o de Energia El�trica (Usinas) - Valor Cont�bil das Sa�das de mercadorias e/ou presta��es de servi�os da gera��o de energia el�trica, por munic�pio acreano, excluindo-se as opera��es dedut�veis',1,to_date('01/01/2028','dd/mm/rrrr'), null );
   EXCEPTION
     WHEN OTHERS THEN
        NULL;
   END;
   --
   BEGIN
     insert into CSF_OWN.param_ipm( id , cod_ipm , descr , estado_id , dt_ini , dt_fim  )
         values ( CSF_OWN.paramipm_seq.nextval ,'ACIPME06','Energia El�trica - Valor Cont�bil das Entradas de energia el�trica e insumos utilizados na transmiss�o, distribui��o e comercializa��o de energia el�trica, por munic�pio acreano, excluindo-se as opera��es dedut�veis',1,to_date('01/01/2029','dd/mm/rrrr'), null );
   EXCEPTION
     WHEN OTHERS THEN
        NULL;
   END;
   --
   BEGIN
     insert into CSF_OWN.param_ipm( id , cod_ipm , descr , estado_id , dt_ini , dt_fim  )
         values ( CSF_OWN.paramipm_seq.nextval ,'ACIPMS06','Energia El�trica - Valor Cont�bil das Sa�das de energia el�trica transmitida, distribu�da e comercializada, por munic�pio acreano, excluindo-se as opera��es dedut�veis',1,to_date('01/01/2030','dd/mm/rrrr'), null );
   EXCEPTION
     WHEN OTHERS THEN
        NULL;
   END;
   --
   BEGIN
     insert into CSF_OWN.param_ipm( id , cod_ipm , descr , estado_id , dt_ini , dt_fim  )
         values ( CSF_OWN.paramipm_seq.nextval ,'ACIPME07','Comunica��o e Telecomunica��o - Valor Cont�bil das Entradas e aquisi��es de servi�os de comunica��o e telecomunica��o, por munic�pio acreano, excluindo-se as opera��es dedut�veis',1,to_date('01/01/2031','dd/mm/rrrr'), null );
   EXCEPTION
     WHEN OTHERS THEN
        NULL;
   END;
   --
   BEGIN
     insert into CSF_OWN.param_ipm( id , cod_ipm , descr , estado_id , dt_ini , dt_fim  )
         values ( CSF_OWN.paramipm_seq.nextval ,'ACIPMS07','Comunica��o e Telecomunica��o - Valor Cont�bil das Sa�das e presta��es de servi�os de comunica��o e telecomunica��o, por munic�pio acreano, excluindo-se as opera��es dedut�veis',1,to_date('01/01/2032','dd/mm/rrrr'), null );
   EXCEPTION
     WHEN OTHERS THEN
        NULL;
   END;
   --
   BEGIN
     insert into CSF_OWN.param_ipm( id , cod_ipm , descr , estado_id , dt_ini , dt_fim  )
         values ( CSF_OWN.paramipm_seq.nextval ,'ACIPME08','Combust�vel - Valor Cont�bil das Entradas de mercadorias para produ��o e comercializa��o de combust�veis, por munic�pio acreano, excluindo-se as opera��es dedut�veis',1,to_date('01/01/2033','dd/mm/rrrr'), null );
   EXCEPTION
     WHEN OTHERS THEN
        NULL;
   END;
   --
   BEGIN
     insert into CSF_OWN.param_ipm( id , cod_ipm , descr , estado_id , dt_ini , dt_fim  )
         values ( CSF_OWN.paramipm_seq.nextval ,'ACIPMS08','Combust�vel - Valor Cont�bil das Sa�das relativas da produ��o e comercializa��o de combust�veis, por munic�pio acreano, excluindo-se as opera��es dedut�veis',1,to_date('01/01/2034','dd/mm/rrrr'), null );
   EXCEPTION
     WHEN OTHERS THEN
        NULL;
   END;
   --
   BEGIN
     insert into CSF_OWN.param_ipm( id , cod_ipm , descr , estado_id , dt_ini , dt_fim  )
         values ( CSF_OWN.paramipm_seq.nextval ,'ACIPME09','Com�rcio - Valor Cont�bil das Entradas de mercadorias para comercializa��o, por munic�pio acreano, excluindo-se as opera��es dedut�veis',1,to_date('01/01/2035','dd/mm/rrrr'), null );
   EXCEPTION
     WHEN OTHERS THEN
        NULL;
   END;
   --
   BEGIN
     insert into CSF_OWN.param_ipm( id , cod_ipm , descr , estado_id , dt_ini , dt_fim  )
         values ( CSF_OWN.paramipm_seq.nextval ,'ACIPMS09','Com�rcio - Valor Cont�bil das Sa�das de mercadorias, por munic�pio acreano, excluindo-se as opera��es dedut�veis',1,to_date('01/01/2036','dd/mm/rrrr'), null );
   EXCEPTION
     WHEN OTHERS THEN
        NULL;
   END;
   --
   BEGIN
     insert into CSF_OWN.param_ipm( id , cod_ipm , descr , estado_id , dt_ini , dt_fim  )
         values ( CSF_OWN.paramipm_seq.nextval ,'ACIPME10','Ind�stria - Valor Cont�bil das Entradas mercadorias e insumos utilizadas na produ��o industrial, por munic�pio acreano, excluindo-se as opera��es dedut�veis',1,to_date('01/01/2037','dd/mm/rrrr'), null );
   EXCEPTION
     WHEN OTHERS THEN
        NULL;
   END;
   --
   BEGIN
     insert into CSF_OWN.param_ipm( id , cod_ipm , descr , estado_id , dt_ini , dt_fim  )
         values ( CSF_OWN.paramipm_seq.nextval ,'ACIPMS10','Ind�stria - Valor Cont�bil das Sa�das de mercadorias industrializadas, por munic�pio acreano, excluindo-se as opera��es dedut�veis',1,to_date('01/01/2038','dd/mm/rrrr'), null );
   EXCEPTION
     WHEN OTHERS THEN
        NULL;
   END;
   --  
   COMMIT;
   --
end;
/
 
--------------------------------------------------------------------------------------------------------------------------------------
Prompt FIM Redmine #75312 - Atualiza��o tabela param_ipm (AC)
--------------------------------------------------------------------------------------------------------------------------------------
 