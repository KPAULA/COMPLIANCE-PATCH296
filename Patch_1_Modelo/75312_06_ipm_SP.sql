-------------------------------------------------------------------------------------------------------------------------------
Prompt INI Redmine #75312 - Atualiza��o tabela param_ipm (SP)
-------------------------------------------------------------------------------------------------------------------------------

begin
   --
   BEGIN
     insert into CSF_OWN.param_ipm( id , cod_ipm , descr , estado_id , dt_ini , dt_fim  )
         values ( CSF_OWN.paramipm_seq.nextval , 'SPDIPAM11', 'Compras escrituradas de mercadorias de produtores agropecu�rios paulistas por munic�pio de origem.',25,to_date('01/01/2015','dd/mm/rrrr'), null );
   EXCEPTION
     WHEN OTHERS THEN
        NULL;
   END;
   --   
   BEGIN
     insert into CSF_OWN.param_ipm( id , cod_ipm , descr , estado_id , dt_ini , dt_fim  )
         values ( CSF_OWN.paramipm_seq.nextval , 'SPDIPAM12', 'Compras n�o escrituradas de mercadorias de agropecu�rios paulistas por munic�pio de origem e outros ajustes determinados pela SEFAZ-SP.',25,to_date('01/01/2015','dd/mm/rrrr'), null );
   EXCEPTION
     WHEN OTHERS THEN
        NULL;
   END;
   --      
   BEGIN
     insert into CSF_OWN.param_ipm( id , cod_ipm , descr , estado_id , dt_ini , dt_fim  )
         values ( CSF_OWN.paramipm_seq.nextval , 'SPDIPAM13', 'Recebimentos, por cooperativas, de mercadorias remetidas por produtores rurais deste Estado, desde que ocorra a efetiva transmiss�o da propriedade para a cooperativa. Excluem-se as situa��es em que haja previs�o de retorno da mercadoria ao cooperado, como quando a cooperativa � simples deposit�ria.',25,to_date('01/01/2015','dd/mm/rrrr'), null );
   EXCEPTION
     WHEN OTHERS THEN
        NULL;
   END;
   --      
   BEGIN
     insert into CSF_OWN.param_ipm( id , cod_ipm , descr , estado_id , dt_ini , dt_fim  )
         values ( CSF_OWN.paramipm_seq.nextval , 'SPDIPAM22', 'Vendas efetuadas por revendedores ambulantes aut�nomos em outros munic�pios paulistas; Refei��es preparadas fora do munic�pio do declarante, em opera��es autorizadas por Regime Especial; opera��es realizadas por empresas devidamente autorizadas a declarar por meio de uma �nica Inscri��o Estadual; Outros ajustes determinados pela Secretaria da Fazenda mediante instru��o expressa e espec�fica.',25,to_date('01/01/2015','dd/mm/rrrr'), null );
   EXCEPTION
     WHEN OTHERS THEN
        NULL;
   END;
   --  
   BEGIN
     insert into CSF_OWN.param_ipm( id , cod_ipm , descr , estado_id , dt_ini , dt_fim  )
         values ( CSF_OWN.paramipm_seq.nextval , 'SPDIPAM23', 'Rateio dos servi�os de transporte intermunicipal e interestadual iniciados em munic�pios paulistas.',25,to_date('01/01/2015','dd/mm/rrrr'), null );
   EXCEPTION
     WHEN OTHERS THEN
        NULL;
   END;
   --  
   BEGIN
     insert into CSF_OWN.param_ipm( id , cod_ipm , descr , estado_id , dt_ini , dt_fim  )
         values ( CSF_OWN.paramipm_seq.nextval , 'SPDIPAM24', 'Rateio dos servi�os de comunica��o aos munic�pios paulistas onde tenham sido prestados.',25,to_date('01/01/2015','dd/mm/rrrr'), null );
   EXCEPTION
     WHEN OTHERS THEN
        NULL;
   END;
   --  
   BEGIN
     insert into CSF_OWN.param_ipm( id , cod_ipm , descr , estado_id , dt_ini , dt_fim  )
         values ( CSF_OWN.paramipm_seq.nextval , 'SPDIPAM25', 'Rateio de energia el�trica � Estabelecimento Distribuidor de Energia.',25,to_date('01/01/2015','dd/mm/rrrr'), null );
   EXCEPTION
     WHEN OTHERS THEN
        NULL;
   END;
   -- 
   BEGIN
     insert into CSF_OWN.param_ipm( id , cod_ipm , descr , estado_id , dt_ini , dt_fim  )
         values ( CSF_OWN.paramipm_seq.nextval , 'SPDIPAM26', 'Informar o Valor Adicionado (deduzidos os custos de insumos) referente � produ��o pr�pria ou arrendada nos estabelecimentos nos quais o contribuinte n�o possua Inscri��o Estadual inscrita.',25,to_date('01/01/2015','dd/mm/rrrr'), null );
   EXCEPTION
     WHEN OTHERS THEN
        NULL;
   END;
   --  
   BEGIN
     insert into CSF_OWN.param_ipm( id , cod_ipm , descr , estado_id , dt_ini , dt_fim  )
         values ( CSF_OWN.paramipm_seq.nextval , 'SPDIPAM31', 'Sa�das n�o escrituradas e outros ajustes determinados pela SEFAZ-SP.',25,to_date('01/01/2015','dd/mm/rrrr'), null );
   EXCEPTION
     WHEN OTHERS THEN
        NULL;
   END;
   --   
   BEGIN
     insert into CSF_OWN.param_ipm( id , cod_ipm , descr , estado_id , dt_ini , dt_fim  )
         values ( CSF_OWN.paramipm_seq.nextval , 'SPDIPAM35', 'Entradas n�o escrituradas e outros ajustes determinados pela SEFAZ-SP.',25,to_date('01/01/2015','dd/mm/rrrr'), null );
   EXCEPTION
     WHEN OTHERS THEN
        NULL;
   END;
   --      
   BEGIN
     insert into CSF_OWN.param_ipm( id , cod_ipm , descr , estado_id , dt_ini , dt_fim  )
         values ( CSF_OWN.paramipm_seq.nextval , 'SPDIPAM36', 'Entradas n�o escrituradas de produtores n�o equiparados.',25,to_date('01/01/2015','dd/mm/rrrr'), null );
   EXCEPTION
     WHEN OTHERS THEN
        NULL;
   END;
   --      
   BEGIN
     insert into CSF_OWN.param_ipm( id , cod_ipm , descr , estado_id , dt_ini , dt_fim  )
         values ( CSF_OWN.paramipm_seq.nextval , 'SPDIPAM27', 'Informar: (i) o valor das opera��es de sa�da de mercadorias cujas transa��es comerciais tenham sido realizadas em outro estabelecimento localizado neste Estado, exclu�das as transa��es comerciais n�o presenciais; e (ii) os respectivos munic�pios onde as transa��es comerciais foram realizadas.',25,to_date('01/07/2017','dd/mm/rrrr'), to_date('31/12/2017','dd/mm/rrrr') );
   EXCEPTION
     WHEN OTHERS THEN
        NULL;
   END;
   --  
   BEGIN
     insert into CSF_OWN.param_ipm( id , cod_ipm , descr , estado_id , dt_ini , dt_fim  )
         values ( CSF_OWN.paramipm_seq.nextval , 'SPDIPAM27', 'Vendas presenciais com sa�das/vendas efetuadas em estabelecimento diverso de onde ocorreu a transa��o/negocia��o inicial',25,to_date('01/01/2018','dd/mm/rrrr'), null );
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
Prompt FIM Redmine #75312 - Atualiza��o tabela param_ipm (SP)
--------------------------------------------------------------------------------------------------------------------------------------
 