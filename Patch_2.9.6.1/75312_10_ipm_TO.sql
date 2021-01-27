-------------------------------------------------------------------------------------------------------------------------------
Prompt INI Redmine #75312 - Atualiza��o tabela param_ipm (TO)
-------------------------------------------------------------------------------------------------------------------------------
begin
   --   
   BEGIN
     insert into CSF_OWN.param_ipm( id , cod_ipm , descr , estado_id , dt_ini , dt_fim  )
         values ( CSF_OWN.paramipm_seq.nextval ,'TOIPME01','Agricultura - Valor Cont�bil das Entradas de insumos para produ��o pr�pria de produtos agr�colas, produzidos em propriedade rural de responsabilidade do contribuinte, ainda que no sistema integrado, por munic�pio tocantinense, excluindo-se as opera��es dedut�veis',27,to_date('01/04/2018','dd/mm/rrrr'), null );
   EXCEPTION
     WHEN OTHERS THEN
        NULL;
   END;
   --   
   BEGIN
     insert into CSF_OWN.param_ipm( id , cod_ipm , descr , estado_id , dt_ini , dt_fim  )
         values ( CSF_OWN.paramipm_seq.nextval ,'TOIPMS01','Agricultura - Valor Cont�bil das Sa�das para comercializa��o ou industrializa��o de produ��o pr�pria de produtos agr�colas, produzidos em propriedade rural de responsabilidade do contribuinte, ainda que no sistema integrado, por munic�pio tocantinense, excluindo-se as opera��es dedut�veis',27,to_date('01/04/2018','dd/mm/rrrr'), null );
   EXCEPTION
     WHEN OTHERS THEN
        NULL;
   END;
   --   
   BEGIN
     insert into CSF_OWN.param_ipm( id , cod_ipm , descr , estado_id , dt_ini , dt_fim  )
         values ( CSF_OWN.paramipm_seq.nextval ,'TOIPME02','Pecu�ria - Valor Cont�bil das Entradas de mercadorias e/ou aquisi��es de servi�os para produ��o pecu�ria, por munic�pio tocantinense, excluindo-se as opera��es dedut�veis',27,to_date('01/04/2018','dd/mm/rrrr'), null );
   EXCEPTION
     WHEN OTHERS THEN
        NULL;
   END;
   --   
   BEGIN
     insert into CSF_OWN.param_ipm( id , cod_ipm , descr , estado_id , dt_ini , dt_fim  )
         values ( CSF_OWN.paramipm_seq.nextval ,'TOIPMS02','Pecu�ria - Valor Cont�bil das Sa�das de mercadorias e/ou presta��es de servi�os de produ��o pecu�ria, por munic�pio tocantinense, excluindo-se as opera��es dedut�veis',27,to_date('01/04/2018','dd/mm/rrrr'), null );
   EXCEPTION
     WHEN OTHERS THEN
        NULL;
   END;
   --   
   BEGIN
     insert into CSF_OWN.param_ipm( id , cod_ipm , descr , estado_id , dt_ini , dt_fim  )
         values ( CSF_OWN.paramipm_seq.nextval ,'TOIPME03','Pesca - Valor Cont�bil das Entradas de mercadorias e/ou aquisi��es de servi�os para produ��o de pescado, por munic�pio tocantinense, excluindo-se as opera��es dedut�veis',27,to_date('01/04/2018','dd/mm/rrrr'), null );
   EXCEPTION
     WHEN OTHERS THEN
        NULL;
   END;
   --   
   BEGIN
     insert into CSF_OWN.param_ipm( id , cod_ipm , descr , estado_id , dt_ini , dt_fim  )
         values ( CSF_OWN.paramipm_seq.nextval ,'TOIPMS03','Pesca - Valor Cont�bil das Sa�das de mercadorias e/ou presta��es de servi�os da produ��o de pescado, por munic�pio tocantinense, excluindo-se as opera��es dedut�veis',27,to_date('01/04/2018','dd/mm/rrrr'), null );
   EXCEPTION
     WHEN OTHERS THEN
        NULL;
   END;
   --   
   BEGIN
     insert into CSF_OWN.param_ipm( id , cod_ipm , descr , estado_id , dt_ini , dt_fim  )
         values ( CSF_OWN.paramipm_seq.nextval ,'TOIPME04','Transporte - Valor Cont�bil das Entradas provenientes das aquisi��es de servi�os de Transporte por munic�pio tocantinense, excluindo-se as opera��es dedut�veis',27,to_date('01/04/2018','dd/mm/rrrr'), null );
   EXCEPTION
     WHEN OTHERS THEN
        NULL;
   END;
   --   
   BEGIN
     insert into CSF_OWN.param_ipm( id , cod_ipm , descr , estado_id , dt_ini , dt_fim  )
         values ( CSF_OWN.paramipm_seq.nextval ,'TOIPMS04','Transporte - Valor Cont�bil das Sa�das referente a presta��es de servi�os de Transporte por munic�pio tocantinense, excluindo-se as opera��es dedut�veis',27,to_date('01/04/2018','dd/mm/rrrr'), null );
   EXCEPTION
     WHEN OTHERS THEN
        NULL;
   END;
   --   
   BEGIN
     insert into CSF_OWN.param_ipm( id , cod_ipm , descr , estado_id , dt_ini , dt_fim  )
         values ( CSF_OWN.paramipm_seq.nextval ,'TOIPME05','Produ��o de Energia El�trica (Usinas) - Valor Cont�bil das Entradas de mercadorias e/ou aquisi��es de servi�os utilizados na gera��o de energia el�trica, por munic�pio tocantinense, excluindo-se as opera��es dedut�veis',27,to_date('01/04/2018','dd/mm/rrrr'), null );
   EXCEPTION
     WHEN OTHERS THEN
        NULL;
   END;
   --   
   BEGIN
     insert into CSF_OWN.param_ipm( id , cod_ipm , descr , estado_id , dt_ini , dt_fim  )
         values ( CSF_OWN.paramipm_seq.nextval ,'TOIPMS05','Produ��o de Energia El�trica (Usinas) - Valor Cont�bil das Sa�das de mercadorias e/ou presta��es de servi�os da gera��o de energia el�trica, por munic�pio tocantinense, excluindo-se as opera��es dedut�veis',27,to_date('01/04/2018','dd/mm/rrrr'), null );
   EXCEPTION
     WHEN OTHERS THEN
        NULL;
   END;
   --   
   BEGIN
     insert into CSF_OWN.param_ipm( id , cod_ipm , descr , estado_id , dt_ini , dt_fim  )
         values ( CSF_OWN.paramipm_seq.nextval ,'TOIPME06','Energia El�trica - Valor Cont�bil das Entradas de energia el�trica e insumos utilizados na transmiss�o, distribui��o e comercializa��o de energia el�trica, por munic�pio tocantinense, excluindo-se as opera��es dedut�veis',27,to_date('01/04/2018','dd/mm/rrrr'), null );
   EXCEPTION
     WHEN OTHERS THEN
        NULL;
   END;
   --   
   BEGIN
     insert into CSF_OWN.param_ipm( id , cod_ipm , descr , estado_id , dt_ini , dt_fim  )
         values ( CSF_OWN.paramipm_seq.nextval ,'TOIPMS06','Energia El�trica - Valor Cont�bil das Sa�das de energia el�trica transmitida, distribu�da e comercializada, por munic�pio tocantinense, excluindo-se as opera��es dedut�veis',27,to_date('01/04/2018','dd/mm/rrrr'), null );
   EXCEPTION
     WHEN OTHERS THEN
        NULL;
   END;
   --   
   BEGIN
     insert into CSF_OWN.param_ipm( id , cod_ipm , descr , estado_id , dt_ini , dt_fim  )
         values ( CSF_OWN.paramipm_seq.nextval ,'TOIPME07','�gua Canalizada - Valor Cont�bil das Entradas e insumos utilizados na Capta��o, tratamento e distribui��o de �gua canalizada, por munic�pio tocantinense, excluindo-se as opera��es dedut�veis',27,to_date('01/04/2018','dd/mm/rrrr'), null );
   EXCEPTION
     WHEN OTHERS THEN
        NULL;
   END;
   --   
   BEGIN
     insert into CSF_OWN.param_ipm( id , cod_ipm , descr , estado_id , dt_ini , dt_fim  )
         values ( CSF_OWN.paramipm_seq.nextval ,'TOIPMS07','�gua Canalizada - Valor Cont�bil das Sa�das referente � distribui��o de �gua canalizada, por munic�pio tocantinense, excluindo-se as opera��es dedut�veis',27,to_date('01/04/2018','dd/mm/rrrr'), null );
   EXCEPTION
     WHEN OTHERS THEN
        NULL;
   END;
   --   
   BEGIN
     insert into CSF_OWN.param_ipm( id , cod_ipm , descr , estado_id , dt_ini , dt_fim  )
         values ( CSF_OWN.paramipm_seq.nextval ,'TOIPME08','Comunica��o e Telecomunica��o - Valor Cont�bil das Entradas e aquisi��es de servi�os de comunica��o e telecomunica��o, por munic�pio tocantinense, excluindo-se as opera��es dedut�veis',27,to_date('01/04/2018','dd/mm/rrrr'), null );
   EXCEPTION
     WHEN OTHERS THEN
        NULL;
   END;
   --   
   BEGIN
     insert into CSF_OWN.param_ipm( id , cod_ipm , descr , estado_id , dt_ini , dt_fim  )
         values ( CSF_OWN.paramipm_seq.nextval ,'TOIPMS08','Comunica��o e Telecomunica��o - Valor Cont�bil das Sa�das e presta��es de servi�os de comunica��o e telecomunica��o, por munic�pio tocantinense, excluindo-se as opera��es dedut�veis',27,to_date('01/04/2018','dd/mm/rrrr'), null );
   EXCEPTION
     WHEN OTHERS THEN
        NULL;
   END;
   --   
   BEGIN
     insert into CSF_OWN.param_ipm( id , cod_ipm , descr , estado_id , dt_ini , dt_fim  )
         values ( CSF_OWN.paramipm_seq.nextval ,'TOIPME09','Combust�vel - Valor Cont�bil das Entradas de mercadorias para produ��o e comercializa��o de combust�veis, por munic�pio tocantinense, excluindo-se as opera��es dedut�veis',27,to_date('01/04/2018','dd/mm/rrrr'), null );
   EXCEPTION
     WHEN OTHERS THEN
        NULL;
   END;
   --   
   BEGIN
     insert into CSF_OWN.param_ipm( id , cod_ipm , descr , estado_id , dt_ini , dt_fim  )
         values ( CSF_OWN.paramipm_seq.nextval ,'TOIPMS09','Combust�vel - Valor Cont�bil das Sa�das relativas da produ��o e comercializa��o de combust�veis, por munic�pio tocantinense, excluindo-se as opera��es dedut�veis',27,to_date('01/04/2018','dd/mm/rrrr'), null );
   EXCEPTION
     WHEN OTHERS THEN
        NULL;
   END;
   --   
   BEGIN
     insert into CSF_OWN.param_ipm( id , cod_ipm , descr , estado_id , dt_ini , dt_fim  )
         values ( CSF_OWN.paramipm_seq.nextval ,'TOIPME10','Com�rcio - Valor Cont�bil das Entradas de mercadorias para comercializa��o, por munic�pio tocantinense, excluindo-se as opera��es dedut�veis',27,to_date('01/04/2018','dd/mm/rrrr'), null );
   EXCEPTION
     WHEN OTHERS THEN
        NULL;
   END;
   --   
   BEGIN
     insert into CSF_OWN.param_ipm( id , cod_ipm , descr , estado_id , dt_ini , dt_fim  )
         values ( CSF_OWN.paramipm_seq.nextval ,'TOIPMS10','Com�rcio - Valor Cont�bil das Sa�das de mercadorias, por munic�pio tocantinense, excluindo-se as opera��es dedut�veis',27,to_date('01/04/2018','dd/mm/rrrr'), null );
   EXCEPTION
     WHEN OTHERS THEN
        NULL;
   END;
   --   
   BEGIN
     insert into CSF_OWN.param_ipm( id , cod_ipm , descr , estado_id , dt_ini , dt_fim  )
         values ( CSF_OWN.paramipm_seq.nextval ,'TOIPME11','Ind�stria - Valor Cont�bil das Entradas mercadorias e insumos utilizadas na produ��o industrial, por munic�pio tocantinense, excluindo-se as opera��es dedut�veis',27,to_date('01/04/2018','dd/mm/rrrr'), null );
   EXCEPTION
     WHEN OTHERS THEN
        NULL;
   END;
   --
   BEGIN
     insert into CSF_OWN.param_ipm( id , cod_ipm , descr , estado_id , dt_ini , dt_fim  )
         values ( CSF_OWN.paramipm_seq.nextval ,'TOIPMS11','Ind�stria - Valor Cont�bil das Sa�das de mercadorias industrializadas, por munic�pio tocantinense, excluindo-se as opera��es dedut�veis',27,to_date('01/04/2018','dd/mm/rrrr'), null );
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
Prompt FIM Redmine #75312 - Atualiza��o tabela param_ipm (TO)
--------------------------------------------------------------------------------------------------------------------------------------
 