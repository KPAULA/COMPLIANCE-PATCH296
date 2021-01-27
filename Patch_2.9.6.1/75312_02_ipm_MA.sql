-------------------------------------------------------------------------------------------------------------------------------
Prompt INI Redmine #75312 - Atualiza��o tabela param_ipm (MA)
-------------------------------------------------------------------------------------------------------------------------------

begin
   --
   BEGIN
     insert into CSF_OWN.param_ipm( id , cod_ipm , descr , estado_id , dt_ini , dt_fim  )
         values ( CSF_OWN.paramipm_seq.nextval , 'MAVAF001', 'Atividades de Distribui��o de Energia El�trica',10,to_date('01/01/2020','dd/mm/rrrr'), null );
   EXCEPTION
     WHEN OTHERS THEN
        NULL;
   END;
   --   
   BEGIN
     insert into CSF_OWN.param_ipm( id , cod_ipm , descr , estado_id , dt_ini , dt_fim  )
         values ( CSF_OWN.paramipm_seq.nextval , 'MAVAF002', 'Atividades de Presta��o de Servi�os de Comunica��o/Telecomunica��o',10,to_date('01/01/2020','dd/mm/rrrr'), null );
   EXCEPTION
     WHEN OTHERS THEN
        NULL;
   END;
   --      
   BEGIN
     insert into CSF_OWN.param_ipm( id , cod_ipm , descr , estado_id , dt_ini , dt_fim  )
         values ( CSF_OWN.paramipm_seq.nextval , 'MAVAF003', 'Produ��o de Petr�leo e G�s Natural - Na Hip�tese da Produ��o se Estender por Mais de um Munic�pio',10,to_date('01/01/2020','dd/mm/rrrr'), null );
   EXCEPTION
     WHEN OTHERS THEN
        NULL;
   END;
   --      
   BEGIN
     insert into CSF_OWN.param_ipm( id , cod_ipm , descr , estado_id , dt_ini , dt_fim  )
         values ( CSF_OWN.paramipm_seq.nextval , 'MAVAF004', 'Atividades de Presta��o de Servi�o de Transporte Ferrovi�rio de Passageiros',10,to_date('01/01/2020','dd/mm/rrrr'), null );
   EXCEPTION
     WHEN OTHERS THEN
        NULL;
   END;
   --  
   BEGIN
     insert into CSF_OWN.param_ipm( id , cod_ipm , descr , estado_id , dt_ini , dt_fim  )
         values ( CSF_OWN.paramipm_seq.nextval , 'MAVAF005', 'Presta��o de Servi�o de Transporte Rodovi�rio Intermunicipal e Interestadual de Passageiros',10,to_date('01/01/2020','dd/mm/rrrr'), null );
   EXCEPTION
     WHEN OTHERS THEN
        NULL;
   END;
   --  
   BEGIN
     insert into CSF_OWN.param_ipm( id , cod_ipm , descr , estado_id , dt_ini , dt_fim  )
         values ( CSF_OWN.paramipm_seq.nextval , 'MAVAF006', 'Presta��o de Servi�o de Transporte Aquavi�rio de Passageiros',10,to_date('01/01/2020','dd/mm/rrrr'), null );
   EXCEPTION
     WHEN OTHERS THEN
        NULL;
   END;
   --  
   BEGIN
     insert into CSF_OWN.param_ipm( id , cod_ipm , descr , estado_id , dt_ini , dt_fim  )
         values ( CSF_OWN.paramipm_seq.nextval , 'MAVAF007', 'Aquisi��es de produtos agr�colas, pastoris, extrativos minerais, pescados ou outros produtos extrativos ou agropecu�rios sem NFA-e do produtor',10,to_date('01/01/2020','dd/mm/rrrr'), null );
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
Prompt FIM Redmine #75312 - Atualiza��o tabela param_ipm (MA)
--------------------------------------------------------------------------------------------------------------------------------------
 