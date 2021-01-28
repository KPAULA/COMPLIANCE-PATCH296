-------------------------------------------------------------------------------------------------------------------------------
Prompt INI Redmine #75312 - Atualiza��o tabela param_ipm (RS)
-------------------------------------------------------------------------------------------------------------------------------

begin
   --
   BEGIN
     insert into CSF_OWN.param_ipm( id , cod_ipm , descr , estado_id , dt_ini , dt_fim  )
         values ( CSF_OWN.paramipm_seq.nextval , '01', 'Transporte: servi�o de transporte por munic�pio de origem deste Estado, na hip�tese de transportadores e de respons�veis por substitui��o tribut�ria',21,to_date('01/10/2016','dd/mm/rrrr'), null );
   EXCEPTION
     WHEN OTHERS THEN
        NULL;
   END;
   --   
   BEGIN
     insert into CSF_OWN.param_ipm( id , cod_ipm , descr , estado_id , dt_ini , dt_fim  )
         values ( CSF_OWN.paramipm_seq.nextval , '02', 'Energia El�trica - Distribui��o: distribui��o de energia el�trica em cada munic�pio',21,to_date('01/10/2016','dd/mm/rrrr'), null );
   EXCEPTION
     WHEN OTHERS THEN
        NULL;
   END;
   --      
   BEGIN
     insert into CSF_OWN.param_ipm( id , cod_ipm , descr , estado_id , dt_ini , dt_fim  )
         values ( CSF_OWN.paramipm_seq.nextval , '03', 'Comunica��o: presta��o de servi�os de comunica��o em cada munic�pio',21,to_date('01/10/2016','dd/mm/rrrr'), null );
   EXCEPTION
     WHEN OTHERS THEN
        NULL;
   END;
   --      
   BEGIN
     insert into CSF_OWN.param_ipm( id , cod_ipm , descr , estado_id , dt_ini , dt_fim  )
         values ( CSF_OWN.paramipm_seq.nextval , '05', 'Vendas Fora do Estabelecimento: vendas realizadas por contribuinte deste Estado fora do seu estabelecimento',21,to_date('01/10/2016','dd/mm/rrrr'), null );
   EXCEPTION
     WHEN OTHERS THEN
        NULL;
   END;
   --  
   BEGIN
     insert into CSF_OWN.param_ipm( id , cod_ipm , descr , estado_id , dt_ini , dt_fim  )
         values ( CSF_OWN.paramipm_seq.nextval , '06', 'Energia El�trica - Gera��o: gera��o de energia el�trica produzida em munic�pio distinto do domic�lio fiscal do estabelecimento informante',21,to_date('01/10/2016','dd/mm/rrrr'), null );
   EXCEPTION
     WHEN OTHERS THEN
        NULL;
   END;
   --  
   BEGIN
     insert into CSF_OWN.param_ipm( id , cod_ipm , descr , estado_id , dt_ini , dt_fim  )
         values ( CSF_OWN.paramipm_seq.nextval , '09', 'Regime Especial - ver necessidade de apresentar tamb�m registro E115 (c�digo RS160087) para entradas/custos; e registro E115 (c�digo RS160001) para a identifica��o do Ato Declarat�rio do regime especial',21,to_date('01/10/2016','dd/mm/rrrr'), null );
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
Prompt FIM Redmine #75312 - Atualiza��o tabela param_ipm (RS)
--------------------------------------------------------------------------------------------------------------------------------------
 