-------------------------------------------------------------------------------------------------------------------------------
Prompt INI Redmine #75312 - Atualiza��o tabela param_ipm (RJ)
-------------------------------------------------------------------------------------------------------------------------------
begin
   --  
   BEGIN
     insert into CSF_OWN.param_ipm( id , cod_ipm , descr , estado_id , dt_ini , dt_fim  )
         values ( CSF_OWN.paramipm_seq.nextval ,'RJVAF20001','Valor adicionado por opera��es e presta��es n�o escrituradas, denunciadas espontaneamente ou apuradas em a��o fiscal',19,to_date('01/01/2019','dd/mm/rrrr'), null );
   EXCEPTION
     WHEN OTHERS THEN
        NULL;
   END;
   --
   BEGIN
     insert into CSF_OWN.param_ipm( id , cod_ipm , descr , estado_id , dt_ini , dt_fim  )
         values ( CSF_OWN.paramipm_seq.nextval ,'RJVAF20002','Valor adicionado por aquisi��es de produtos agr�colas, pastoris, extrativos minerais, pescados ou outros produtos extrativos ou agropecu�rios sem nota fiscal de produtor',19,to_date('01/01/2019','dd/mm/rrrr'), null );
   EXCEPTION
     WHEN OTHERS THEN
        NULL;
   END;
   --
   BEGIN
     insert into CSF_OWN.param_ipm( id , cod_ipm , descr , estado_id , dt_ini , dt_fim  )
         values ( CSF_OWN.paramipm_seq.nextval ,'RJVAF20003','Valor adicionado pela presta��o de servi�o de transporte intermunicipal e interestadual',19,to_date('01/01/2019','dd/mm/rrrr'), null );
   EXCEPTION
     WHEN OTHERS THEN
        NULL;
   END;
   --
   BEGIN
     insert into CSF_OWN.param_ipm( id , cod_ipm , descr , estado_id , dt_ini , dt_fim  )
         values ( CSF_OWN.paramipm_seq.nextval ,'RJVAF20004','Valor adicionado pelo fornecimento de energia el�trica por geradora hidrel�trica',19,to_date('01/01/2019','dd/mm/rrrr'), null );
   EXCEPTION
     WHEN OTHERS THEN
        NULL;
   END;
   --
   BEGIN
     insert into CSF_OWN.param_ipm( id , cod_ipm , descr , estado_id , dt_ini , dt_fim  )
         values ( CSF_OWN.paramipm_seq.nextval ,'RJVAF00005','Presta��o de servi�o de comunica��o ou telecomunica��o oneroso para consumidor final - Valor das entradas',19,to_date('01/01/2019','dd/mm/rrrr'), null );
   EXCEPTION
     WHEN OTHERS THEN
        NULL;
   END;
   --
   BEGIN
     insert into CSF_OWN.param_ipm( id , cod_ipm , descr , estado_id , dt_ini , dt_fim  )
         values ( CSF_OWN.paramipm_seq.nextval ,'RJVAF10005','Presta��o de servi�o de comunica��o ou telecomunica��o oneroso para consumidor final - Valor das sa�das',19,to_date('01/01/2019','dd/mm/rrrr'), null );
   EXCEPTION
     WHEN OTHERS THEN
        NULL;
   END;
   --
   BEGIN
     insert into CSF_OWN.param_ipm( id , cod_ipm , descr , estado_id , dt_ini , dt_fim  )
         values ( CSF_OWN.paramipm_seq.nextval ,'RJVAF00006','Inscri��o estadual centralizada - Valor das entradas',19,to_date('01/01/2019','dd/mm/rrrr'), null );
   EXCEPTION
     WHEN OTHERS THEN
        NULL;
   END;
   --
   BEGIN
     insert into CSF_OWN.param_ipm( id , cod_ipm , descr , estado_id , dt_ini , dt_fim  )
         values ( CSF_OWN.paramipm_seq.nextval ,'RJVAF10006','Inscri��o estadual centralizada - Valor das sa�das',19,to_date('01/01/2019','dd/mm/rrrr'), null );
   EXCEPTION
     WHEN OTHERS THEN
        NULL;
   END;
   --
   BEGIN
     insert into CSF_OWN.param_ipm( id , cod_ipm , descr , estado_id , dt_ini , dt_fim  )
         values ( CSF_OWN.paramipm_seq.nextval ,'RJVAF00007','Fornecimento de energia el�trica por distribuidora - Valor das entradas',19,to_date('01/01/2019','dd/mm/rrrr'), null );
   EXCEPTION
     WHEN OTHERS THEN
        NULL;
   END;
   --
   BEGIN
     insert into CSF_OWN.param_ipm( id , cod_ipm , descr , estado_id , dt_ini , dt_fim  )
         values ( CSF_OWN.paramipm_seq.nextval ,'RJVAF10007','Fornecimento de energia el�trica por distribuidora - Valor das sa�das',19,to_date('01/01/2019','dd/mm/rrrr'), null );
   EXCEPTION
     WHEN OTHERS THEN
        NULL;
   END;
   --
   BEGIN
     insert into CSF_OWN.param_ipm( id , cod_ipm , descr , estado_id , dt_ini , dt_fim  )
         values ( CSF_OWN.paramipm_seq.nextval ,'RJVAF00008','Fornecimento de �gua natural canalizada - Valor das entradas',19,to_date('01/01/2019','dd/mm/rrrr'), to_date('31/12/2019','dd/mm/rrrr') );
   EXCEPTION
     WHEN OTHERS THEN
        NULL;
   END;
   --
   BEGIN
     insert into CSF_OWN.param_ipm( id , cod_ipm , descr , estado_id , dt_ini , dt_fim  )
         values ( CSF_OWN.paramipm_seq.nextval ,'RJVAF10008','Fornecimento de �gua natural canalizada - Valor das sa�das',19,to_date('01/01/2019','dd/mm/rrrr'), to_date('31/12/2019','dd/mm/rrrr') );
   EXCEPTION
     WHEN OTHERS THEN
        NULL;
   END;
   --
   BEGIN
     insert into CSF_OWN.param_ipm( id , cod_ipm , descr , estado_id , dt_ini , dt_fim  )
         values ( CSF_OWN.paramipm_seq.nextval ,'RJVAF00009','Fornecimento de g�s natural canalizado - Valor das entradas',19,to_date('01/01/2019','dd/mm/rrrr'), null );
   EXCEPTION
     WHEN OTHERS THEN
        NULL;
   END;
   --
   BEGIN
     insert into CSF_OWN.param_ipm( id , cod_ipm , descr , estado_id , dt_ini , dt_fim  )
         values ( CSF_OWN.paramipm_seq.nextval ,'RJVAF10009','Fornecimento de g�s natural canalizado - Valor das sa�das',19,to_date('01/01/2019','dd/mm/rrrr'), null );
   EXCEPTION
     WHEN OTHERS THEN
        NULL;
   END;
   --
   BEGIN
     insert into CSF_OWN.param_ipm( id , cod_ipm , descr , estado_id , dt_ini , dt_fim  )
         values ( CSF_OWN.paramipm_seq.nextval ,'RJVAR00010','Fornecimento por geradora de energia el�trica gerada em modalidade distinta da hidrel�trica - Valor das entradas',19,to_date('01/01/2019','dd/mm/rrrr'), null );
   EXCEPTION
     WHEN OTHERS THEN
        NULL;
   END;
   --
   BEGIN
     insert into CSF_OWN.param_ipm( id , cod_ipm , descr , estado_id , dt_ini , dt_fim  )
         values ( CSF_OWN.paramipm_seq.nextval ,'RJVAR10010','Fornecimento por geradora de energia el�trica gerada em modalidade distinta da hidrel�trica - Valor das sa�das',19,to_date('01/01/2019','dd/mm/rrrr'), null );
   EXCEPTION
     WHEN OTHERS THEN
        NULL;
   END;
   --
   BEGIN
     insert into CSF_OWN.param_ipm( id , cod_ipm , descr , estado_id , dt_ini , dt_fim  )
         values ( CSF_OWN.paramipm_seq.nextval ,'RJVAF00011','Atividades de extra��o e produ��o de petr�leo e g�s - BLOCO DE EXPLORA��O - Valor das entradas',19,to_date('01/01/2019','dd/mm/rrrr'), null );
   EXCEPTION
     WHEN OTHERS THEN
        NULL;
   END;
   --
   BEGIN
     insert into CSF_OWN.param_ipm( id , cod_ipm , descr , estado_id , dt_ini , dt_fim  )
         values ( CSF_OWN.paramipm_seq.nextval ,'RJVAF10011','Atividades de extra��o e produ��o de petr�leo e g�s - BLOCO DE EXPLORA��O - Valor das sa�das',19,to_date('01/01/2019','dd/mm/rrrr'), null );
   EXCEPTION
     WHEN OTHERS THEN
        NULL;
   END;
   --
   BEGIN
     insert into CSF_OWN.param_ipm( id , cod_ipm , descr , estado_id , dt_ini , dt_fim  )
         values ( CSF_OWN.paramipm_seq.nextval ,'RJVAF00112','Atividades de extra��o e produ��o de petr�leo e g�s - ALBACORA - Valor das entradas',19,to_date('01/01/2019','dd/mm/rrrr'), null );
   EXCEPTION
     WHEN OTHERS THEN
        NULL;
   END;
   --
   BEGIN
     insert into CSF_OWN.param_ipm( id , cod_ipm , descr , estado_id , dt_ini , dt_fim  )
         values ( CSF_OWN.paramipm_seq.nextval ,'RJVAF10112','Atividades de extra��o e produ��o de petr�leo e g�s - ALBACORA - Valor das sa�das',19,to_date('01/01/2019','dd/mm/rrrr'), null );
   EXCEPTION
     WHEN OTHERS THEN
        NULL;
   END;
   --
   BEGIN
     insert into CSF_OWN.param_ipm( id , cod_ipm , descr , estado_id , dt_ini , dt_fim  )
         values ( CSF_OWN.paramipm_seq.nextval ,'RJVAF00212','Atividades de extra��o e produ��o de petr�leo e g�s - ALBACORA LESTE - Valor das entradas',19,to_date('01/01/2019','dd/mm/rrrr'), null );
   EXCEPTION
     WHEN OTHERS THEN
        NULL;
   END;
   --
   BEGIN
     insert into CSF_OWN.param_ipm( id , cod_ipm , descr , estado_id , dt_ini , dt_fim  )
         values ( CSF_OWN.paramipm_seq.nextval ,'RJVAF10212','Atividades de extra��o e produ��o de petr�leo e g�s - ALBACORA LESTE - Valor das sa�das',19,to_date('01/01/2019','dd/mm/rrrr'), null );
   EXCEPTION
     WHEN OTHERS THEN
        NULL;
   END;
   --
   BEGIN
     insert into CSF_OWN.param_ipm( id , cod_ipm , descr , estado_id , dt_ini , dt_fim  )
         values ( CSF_OWN.paramipm_seq.nextval ,'RJVAF00312','Atividades de extra��o e produ��o de petr�leo e g�s - ANEQUIM - Valor das entradas',19,to_date('01/01/2019','dd/mm/rrrr'), null );
   EXCEPTION
     WHEN OTHERS THEN
        NULL;
   END;
   --
   BEGIN
     insert into CSF_OWN.param_ipm( id , cod_ipm , descr , estado_id , dt_ini , dt_fim  )
         values ( CSF_OWN.paramipm_seq.nextval ,'RJVAF10312','Atividades de extra��o e produ��o de petr�leo e g�s - ANEQUIM - Valor das sa�das',19,to_date('01/01/2019','dd/mm/rrrr'), null );
   EXCEPTION
     WHEN OTHERS THEN
        NULL;
   END;
   --
   BEGIN
     insert into CSF_OWN.param_ipm( id , cod_ipm , descr , estado_id , dt_ini , dt_fim  )
         values ( CSF_OWN.paramipm_seq.nextval ,'RJVAF00412','Atividades de extra��o e produ��o de petr�leo e g�s - ATLANTA - Valor das entradas',19,to_date('01/01/2019','dd/mm/rrrr'), null );
   EXCEPTION
     WHEN OTHERS THEN
        NULL;
   END;
   --
   BEGIN
     insert into CSF_OWN.param_ipm( id , cod_ipm , descr , estado_id , dt_ini , dt_fim  )
         values ( CSF_OWN.paramipm_seq.nextval ,'RJVAF10412','Atividades de extra��o e produ��o de petr�leo e g�s - ATLANTA - Valor das sa�das',19,to_date('01/01/2019','dd/mm/rrrr'), null );
   EXCEPTION
     WHEN OTHERS THEN
        NULL;
   END;
   --
   BEGIN
     insert into CSF_OWN.param_ipm( id , cod_ipm , descr , estado_id , dt_ini , dt_fim  )
         values ( CSF_OWN.paramipm_seq.nextval ,'RJVAF00512','Atividades de extra��o e produ��o de petr�leo e g�s - BADEJO - Valor das entradas',19,to_date('01/01/2019','dd/mm/rrrr'), null );
   EXCEPTION
     WHEN OTHERS THEN
        NULL;
   END;
   --
   BEGIN
     insert into CSF_OWN.param_ipm( id , cod_ipm , descr , estado_id , dt_ini , dt_fim  )
         values ( CSF_OWN.paramipm_seq.nextval ,'RJVAF10512','Atividades de extra��o e produ��o de petr�leo e g�s - BADEJO - Valor das sa�das',19,to_date('01/01/2019','dd/mm/rrrr'), null );
   EXCEPTION
     WHEN OTHERS THEN
        NULL;
   END;
   --
   BEGIN
     insert into CSF_OWN.param_ipm( id , cod_ipm , descr , estado_id , dt_ini , dt_fim  )
         values ( CSF_OWN.paramipm_seq.nextval ,'RJVAF00612','Atividades de extra��o e produ��o de petr�leo e g�s - BAGRE - Valor das entradas',19,to_date('01/01/2019','dd/mm/rrrr'), null );
   EXCEPTION
     WHEN OTHERS THEN
        NULL;
   END;
   --
   BEGIN
     insert into CSF_OWN.param_ipm( id , cod_ipm , descr , estado_id , dt_ini , dt_fim  )
         values ( CSF_OWN.paramipm_seq.nextval ,'RJVAF10612','Atividades de extra��o e produ��o de petr�leo e g�s - BAGRE - Valor das sa�das',19,to_date('01/01/2019','dd/mm/rrrr'), null );
   EXCEPTION
     WHEN OTHERS THEN
        NULL;
   END;
   --
   BEGIN
     insert into CSF_OWN.param_ipm( id , cod_ipm , descr , estado_id , dt_ini , dt_fim  )
         values ( CSF_OWN.paramipm_seq.nextval ,'RJVAF00712','Atividades de extra��o e produ��o de petr�leo e g�s - BARRACUDA - Valor das entradas',19,to_date('01/01/2019','dd/mm/rrrr'), null );
   EXCEPTION
     WHEN OTHERS THEN
        NULL;
   END;
   --
   BEGIN
     insert into CSF_OWN.param_ipm( id , cod_ipm , descr , estado_id , dt_ini , dt_fim  )
         values ( CSF_OWN.paramipm_seq.nextval ,'RJVAF10712','Atividades de extra��o e produ��o de petr�leo e g�s - BARRACUDA - Valor das sa�das',19,to_date('01/01/2019','dd/mm/rrrr'), null );
   EXCEPTION
     WHEN OTHERS THEN
        NULL;
   END;
   --
   BEGIN
     insert into CSF_OWN.param_ipm( id , cod_ipm , descr , estado_id , dt_ini , dt_fim  )
         values ( CSF_OWN.paramipm_seq.nextval ,'RJVAF00812','Atividades de extra��o e produ��o de petr�leo e g�s - BERBIG�O - Valor das entradas',19,to_date('01/01/2019','dd/mm/rrrr'), null );
   EXCEPTION
     WHEN OTHERS THEN
        NULL;
   END;
   --
   BEGIN
     insert into CSF_OWN.param_ipm( id , cod_ipm , descr , estado_id , dt_ini , dt_fim  )
         values ( CSF_OWN.paramipm_seq.nextval ,'RJVAF10812','Atividades de extra��o e produ��o de petr�leo e g�s - BERBIG�O - Valor das sa�das',19,to_date('01/01/2019','dd/mm/rrrr'), null );
   EXCEPTION
     WHEN OTHERS THEN
        NULL;
   END;
   --
   BEGIN
     insert into CSF_OWN.param_ipm( id , cod_ipm , descr , estado_id , dt_ini , dt_fim  )
         values ( CSF_OWN.paramipm_seq.nextval ,'RJVAF00912','Atividades de extra��o e produ��o de petr�leo e g�s - BICUDO - Valor das entradas',19,to_date('01/01/2019','dd/mm/rrrr'), null );
   EXCEPTION
     WHEN OTHERS THEN
        NULL;
   END;
   --
   BEGIN
     insert into CSF_OWN.param_ipm( id , cod_ipm , descr , estado_id , dt_ini , dt_fim  )
         values ( CSF_OWN.paramipm_seq.nextval ,'RJVAF10912','Atividades de extra��o e produ��o de petr�leo e g�s - BICUDO - Valor das sa�das',19,to_date('01/01/2019','dd/mm/rrrr'), null );
   EXCEPTION
     WHEN OTHERS THEN
        NULL;
   END;
   --
   BEGIN
     insert into CSF_OWN.param_ipm( id , cod_ipm , descr , estado_id , dt_ini , dt_fim  )
         values ( CSF_OWN.paramipm_seq.nextval ,'RJVAF01012','Atividades de extra��o e produ��o de petr�leo e g�s - BIJUPIR� - Valor das entradas',19,to_date('01/01/2019','dd/mm/rrrr'), null );
   EXCEPTION
     WHEN OTHERS THEN
        NULL;
   END;
   --
   BEGIN
     insert into CSF_OWN.param_ipm( id , cod_ipm , descr , estado_id , dt_ini , dt_fim  )
         values ( CSF_OWN.paramipm_seq.nextval ,'RJVAF11012','Atividades de extra��o e produ��o de petr�leo e g�s - BIJUPIR� - Valor das sa�das',19,to_date('01/01/2019','dd/mm/rrrr'), null );
   EXCEPTION
     WHEN OTHERS THEN
        NULL;
   END;
   --
   BEGIN
     insert into CSF_OWN.param_ipm( id , cod_ipm , descr , estado_id , dt_ini , dt_fim  )
         values ( CSF_OWN.paramipm_seq.nextval ,'RJVAF01112','Atividades de extra��o e produ��o de petr�leo e g�s - BONITO - Valor das entradas',19,to_date('01/01/2019','dd/mm/rrrr'), null );
   EXCEPTION
     WHEN OTHERS THEN
        NULL;
   END;
   --
   BEGIN
     insert into CSF_OWN.param_ipm( id , cod_ipm , descr , estado_id , dt_ini , dt_fim  )
         values ( CSF_OWN.paramipm_seq.nextval ,'RJVAF11112','Atividades de extra��o e produ��o de petr�leo e g�s - BONITO - Valor das sa�das',19,to_date('01/01/2019','dd/mm/rrrr'), null );
   EXCEPTION
     WHEN OTHERS THEN
        NULL;
   END;
   --
   BEGIN
     insert into CSF_OWN.param_ipm( id , cod_ipm , descr , estado_id , dt_ini , dt_fim  )
         values ( CSF_OWN.paramipm_seq.nextval ,'RJVAF01212','Atividades de extra��o e produ��o de petr�leo e g�s - B�ZIOS - Valor das entradas',19,to_date('01/01/2019','dd/mm/rrrr'), null );
   EXCEPTION
     WHEN OTHERS THEN
        NULL;
   END;
   --
   BEGIN
     insert into CSF_OWN.param_ipm( id , cod_ipm , descr , estado_id , dt_ini , dt_fim  )
         values ( CSF_OWN.paramipm_seq.nextval ,'RJVAF11212','Atividades de extra��o e produ��o de petr�leo e g�s - B�ZIOS - Valor das sa�das',19,to_date('01/01/2019','dd/mm/rrrr'), null );
   EXCEPTION
     WHEN OTHERS THEN
        NULL;
   END;
   --
   BEGIN
     insert into CSF_OWN.param_ipm( id , cod_ipm , descr , estado_id , dt_ini , dt_fim  )
         values ( CSF_OWN.paramipm_seq.nextval ,'RJVAF01312','Atividades de extra��o e produ��o de petr�leo e g�s - CARAPEBA - Valor das entradas',19,to_date('01/01/2019','dd/mm/rrrr'), null );
   EXCEPTION
     WHEN OTHERS THEN
        NULL;
   END;
   --
   BEGIN
     insert into CSF_OWN.param_ipm( id , cod_ipm , descr , estado_id , dt_ini , dt_fim  )
         values ( CSF_OWN.paramipm_seq.nextval ,'RJVAF11312','Atividades de extra��o e produ��o de petr�leo e g�s - CARAPEBA - Valor das sa�das',19,to_date('01/01/2019','dd/mm/rrrr'), null );
   EXCEPTION
     WHEN OTHERS THEN
        NULL;
   END;
   --
   BEGIN
     insert into CSF_OWN.param_ipm( id , cod_ipm , descr , estado_id , dt_ini , dt_fim  )
         values ( CSF_OWN.paramipm_seq.nextval ,'RJVAF01412','Atividades de extra��o e produ��o de petr�leo e g�s - CARATINGA - Valor das entradas',19,to_date('01/01/2019','dd/mm/rrrr'), null );
   EXCEPTION
     WHEN OTHERS THEN
        NULL;
   END;
   --
   BEGIN
     insert into CSF_OWN.param_ipm( id , cod_ipm , descr , estado_id , dt_ini , dt_fim  )
         values ( CSF_OWN.paramipm_seq.nextval ,'RJVAF11412','Atividades de extra��o e produ��o de petr�leo e g�s - CARATINGA - Valor das sa�das',19,to_date('01/01/2019','dd/mm/rrrr'), null );
   EXCEPTION
     WHEN OTHERS THEN
        NULL;
   END;
   --
   BEGIN
     insert into CSF_OWN.param_ipm( id , cod_ipm , descr , estado_id , dt_ini , dt_fim  )
         values ( CSF_OWN.paramipm_seq.nextval ,'RJVAF01512','Atividades de extra��o e produ��o de petr�leo e g�s - CHERNE - Valor das entradas',19,to_date('01/01/2019','dd/mm/rrrr'), null );
   EXCEPTION
     WHEN OTHERS THEN
        NULL;
   END;
   --
   BEGIN
     insert into CSF_OWN.param_ipm( id , cod_ipm , descr , estado_id , dt_ini , dt_fim  )
         values ( CSF_OWN.paramipm_seq.nextval ,'RJVAF11512','Atividades de extra��o e produ��o de petr�leo e g�s - CHERNE - Valor das sa�das',19,to_date('01/01/2019','dd/mm/rrrr'), null );
   EXCEPTION
     WHEN OTHERS THEN
        NULL;
   END;
   --
   BEGIN
     insert into CSF_OWN.param_ipm( id , cod_ipm , descr , estado_id , dt_ini , dt_fim  )
         values ( CSF_OWN.paramipm_seq.nextval ,'RJVAF01612','Atividades de extra��o e produ��o de petr�leo e g�s - CONGRO - Valor das entradas',19,to_date('01/01/2019','dd/mm/rrrr'), null );
   EXCEPTION
     WHEN OTHERS THEN
        NULL;
   END;
   --
   BEGIN
     insert into CSF_OWN.param_ipm( id , cod_ipm , descr , estado_id , dt_ini , dt_fim  )
         values ( CSF_OWN.paramipm_seq.nextval ,'RJVAF11612','Atividades de extra��o e produ��o de petr�leo e g�s - CONGRO - Valor das sa�das',19,to_date('01/01/2019','dd/mm/rrrr'), null );
   EXCEPTION
     WHEN OTHERS THEN
        NULL;
   END;
   --
   BEGIN
     insert into CSF_OWN.param_ipm( id , cod_ipm , descr , estado_id , dt_ini , dt_fim  )
         values ( CSF_OWN.paramipm_seq.nextval ,'RJVAF01712','Atividades de extra��o e produ��o de petr�leo e g�s - CORVINA - Valor das entradas',19,to_date('01/01/2019','dd/mm/rrrr'), null );
   EXCEPTION
     WHEN OTHERS THEN
        NULL;
   END;
   --
   BEGIN
     insert into CSF_OWN.param_ipm( id , cod_ipm , descr , estado_id , dt_ini , dt_fim  )
         values ( CSF_OWN.paramipm_seq.nextval ,'RJVAF11712','Atividades de extra��o e produ��o de petr�leo e g�s - CORVINA - Valor das sa�das',19,to_date('01/01/2019','dd/mm/rrrr'), null );
   EXCEPTION
     WHEN OTHERS THEN
        NULL;
   END;
   --
   BEGIN
     insert into CSF_OWN.param_ipm( id , cod_ipm , descr , estado_id , dt_ini , dt_fim  )
         values ( CSF_OWN.paramipm_seq.nextval ,'RJVAF01812','Atividades de extra��o e produ��o de petr�leo e g�s - ENCHOVA - Valor das entradas',19,to_date('01/01/2019','dd/mm/rrrr'), null );
   EXCEPTION
     WHEN OTHERS THEN
        NULL;
   END;
   --
   BEGIN
     insert into CSF_OWN.param_ipm( id , cod_ipm , descr , estado_id , dt_ini , dt_fim  )
         values ( CSF_OWN.paramipm_seq.nextval ,'RJVAF11812','Atividades de extra��o e produ��o de petr�leo e g�s - ENCHOVA - Valor das sa�das',19,to_date('01/01/2019','dd/mm/rrrr'), null );
   EXCEPTION
     WHEN OTHERS THEN
        NULL;
   END;
   --
   BEGIN
     insert into CSF_OWN.param_ipm( id , cod_ipm , descr , estado_id , dt_ini , dt_fim  )
         values ( CSF_OWN.paramipm_seq.nextval ,'RJVAF01912','Atividades de extra��o e produ��o de petr�leo e g�s - ENCHOVA OESTE - Valor das entradas',19,to_date('01/01/2019','dd/mm/rrrr'), null );
   EXCEPTION
     WHEN OTHERS THEN
        NULL;
   END;
   --
   BEGIN
     insert into CSF_OWN.param_ipm( id , cod_ipm , descr , estado_id , dt_ini , dt_fim  )
         values ( CSF_OWN.paramipm_seq.nextval ,'RJVAF11912','Atividades de extra��o e produ��o de petr�leo e g�s - ENCHOVA OESTE - Valor das sa�das',19,to_date('01/01/2019','dd/mm/rrrr'), null );
   EXCEPTION
     WHEN OTHERS THEN
        NULL;
   END;
   --
   BEGIN
     insert into CSF_OWN.param_ipm( id , cod_ipm , descr , estado_id , dt_ini , dt_fim  )
         values ( CSF_OWN.paramipm_seq.nextval ,'RJVAF02012','Atividades de extra��o e produ��o de petr�leo e g�s - ESPADARTE - Valor das entradas',19,to_date('01/01/2019','dd/mm/rrrr'), null );
   EXCEPTION
     WHEN OTHERS THEN
        NULL;
   END;
   --
   BEGIN
     insert into CSF_OWN.param_ipm( id , cod_ipm , descr , estado_id , dt_ini , dt_fim  )
         values ( CSF_OWN.paramipm_seq.nextval ,'RJVAF12012','Atividades de extra��o e produ��o de petr�leo e g�s - ESPADARTE - Valor das sa�das',19,to_date('01/01/2019','dd/mm/rrrr'), null );
   EXCEPTION
     WHEN OTHERS THEN
        NULL;
   END;
   --
   BEGIN
     insert into CSF_OWN.param_ipm( id , cod_ipm , descr , estado_id , dt_ini , dt_fim  )
         values ( CSF_OWN.paramipm_seq.nextval ,'RJVAF02112','Atividades de extra��o e produ��o de petr�leo e g�s - FRADE - Valor das entradas',19,to_date('01/01/2019','dd/mm/rrrr'), null );
   EXCEPTION
     WHEN OTHERS THEN
        NULL;
   END;
   --
   BEGIN
     insert into CSF_OWN.param_ipm( id , cod_ipm , descr , estado_id , dt_ini , dt_fim  )
         values ( CSF_OWN.paramipm_seq.nextval ,'RJVAF12112','Atividades de extra��o e produ��o de petr�leo e g�s - FRADE - Valor das sa�das',19,to_date('01/01/2019','dd/mm/rrrr'), null );
   EXCEPTION
     WHEN OTHERS THEN
        NULL;
   END;
   --
   BEGIN
     insert into CSF_OWN.param_ipm( id , cod_ipm , descr , estado_id , dt_ini , dt_fim  )
         values ( CSF_OWN.paramipm_seq.nextval ,'RJVAF02212','Atividades de extra��o e produ��o de petr�leo e g�s - GAROUPA - Valor das entradas',19,to_date('01/01/2019','dd/mm/rrrr'), null );
   EXCEPTION
     WHEN OTHERS THEN
        NULL;
   END;
   --
   BEGIN
     insert into CSF_OWN.param_ipm( id , cod_ipm , descr , estado_id , dt_ini , dt_fim  )
         values ( CSF_OWN.paramipm_seq.nextval ,'RJVAF12212','Atividades de extra��o e produ��o de petr�leo e g�s - GAROUPA - Valor das sa�das',19,to_date('01/01/2019','dd/mm/rrrr'), null );
   EXCEPTION
     WHEN OTHERS THEN
        NULL;
   END;
   --
   BEGIN
     insert into CSF_OWN.param_ipm( id , cod_ipm , descr , estado_id , dt_ini , dt_fim  )
         values ( CSF_OWN.paramipm_seq.nextval ,'RJVAF02312','Atividades de extra��o e produ��o de petr�leo e g�s - GAROUPINHA - Valor das entradas',19,to_date('01/01/2019','dd/mm/rrrr'), null );
   EXCEPTION
     WHEN OTHERS THEN
        NULL;
   END;
   --
   BEGIN
     insert into CSF_OWN.param_ipm( id , cod_ipm , descr , estado_id , dt_ini , dt_fim  )
         values ( CSF_OWN.paramipm_seq.nextval ,'RJVAF12312','Atividades de extra��o e produ��o de petr�leo e g�s - GAROUPINHA - Valor das sa�das',19,to_date('01/01/2019','dd/mm/rrrr'), null );
   EXCEPTION
     WHEN OTHERS THEN
        NULL;
   END;
   --
   BEGIN
     insert into CSF_OWN.param_ipm( id , cod_ipm , descr , estado_id , dt_ini , dt_fim  )
         values ( CSF_OWN.paramipm_seq.nextval ,'RJVAF02412','Atividades de extra��o e produ��o de petr�leo e g�s - ITAPU - Valor das entradas',19,to_date('01/01/2019','dd/mm/rrrr'), null );
   EXCEPTION
     WHEN OTHERS THEN
        NULL;
   END;
   --
   BEGIN
     insert into CSF_OWN.param_ipm( id , cod_ipm , descr , estado_id , dt_ini , dt_fim  )
         values ( CSF_OWN.paramipm_seq.nextval ,'RJVAF12412','Atividades de extra��o e produ��o de petr�leo e g�s - ITAPU - Valor das sa�das',19,to_date('01/01/2019','dd/mm/rrrr'), null );
   EXCEPTION
     WHEN OTHERS THEN
        NULL;
   END;
   --
   BEGIN
     insert into CSF_OWN.param_ipm( id , cod_ipm , descr , estado_id , dt_ini , dt_fim  )
         values ( CSF_OWN.paramipm_seq.nextval ,'RJVAF02512','Atividades de extra��o e produ��o de petr�leo e g�s - LINGUADO - Valor das entradas',19,to_date('01/01/2019','dd/mm/rrrr'), null );
   EXCEPTION
     WHEN OTHERS THEN
        NULL;
   END;
   --
   BEGIN
     insert into CSF_OWN.param_ipm( id , cod_ipm , descr , estado_id , dt_ini , dt_fim  )
         values ( CSF_OWN.paramipm_seq.nextval ,'RJVAF12512','Atividades de extra��o e produ��o de petr�leo e g�s - LINGUADO - Valor das sa�das',19,to_date('01/01/2019','dd/mm/rrrr'), null );
   EXCEPTION
     WHEN OTHERS THEN
        NULL;
   END;
   --
   BEGIN
     insert into CSF_OWN.param_ipm( id , cod_ipm , descr , estado_id , dt_ini , dt_fim  )
         values ( CSF_OWN.paramipm_seq.nextval ,'RJVAF02612','Atividades de extra��o e produ��o de petr�leo e g�s - LULA - Valor das entradas',19,to_date('01/01/2019','dd/mm/rrrr'), null );
   EXCEPTION
     WHEN OTHERS THEN
        NULL;
   END;
   --
   BEGIN
     insert into CSF_OWN.param_ipm( id , cod_ipm , descr , estado_id , dt_ini , dt_fim  )
         values ( CSF_OWN.paramipm_seq.nextval ,'RJVAF12612','Atividades de extra��o e produ��o de petr�leo e g�s - LULA - Valor das sa�das',19,to_date('01/01/2019','dd/mm/rrrr'), null );
   EXCEPTION
     WHEN OTHERS THEN
        NULL;
   END;
   --
   BEGIN
     insert into CSF_OWN.param_ipm( id , cod_ipm , descr , estado_id , dt_ini , dt_fim  )
         values ( CSF_OWN.paramipm_seq.nextval ,'RJVAF02712','Atividades de extra��o e produ��o de petr�leo e g�s - MALHADO - Valor das entradas',19,to_date('01/01/2019','dd/mm/rrrr'), null );
   EXCEPTION
     WHEN OTHERS THEN
        NULL;
   END;
   --
   BEGIN
     insert into CSF_OWN.param_ipm( id , cod_ipm , descr , estado_id , dt_ini , dt_fim  )
         values ( CSF_OWN.paramipm_seq.nextval ,'RJVAF12712','Atividades de extra��o e produ��o de petr�leo e g�s - MALHADO - Valor das sa�das',19,to_date('01/01/2019','dd/mm/rrrr'), null );
   EXCEPTION
     WHEN OTHERS THEN
        NULL;
   END;
   --
   BEGIN
     insert into CSF_OWN.param_ipm( id , cod_ipm , descr , estado_id , dt_ini , dt_fim  )
         values ( CSF_OWN.paramipm_seq.nextval ,'RJVAF02812','Atividades de extra��o e produ��o de petr�leo e g�s - MARIMB� - Valor das entradas',19,to_date('01/01/2019','dd/mm/rrrr'), null );
   EXCEPTION
     WHEN OTHERS THEN
        NULL;
   END;
   --
   BEGIN
     insert into CSF_OWN.param_ipm( id , cod_ipm , descr , estado_id , dt_ini , dt_fim  )
         values ( CSF_OWN.paramipm_seq.nextval ,'RJVAF12812','Atividades de extra��o e produ��o de petr�leo e g�s - MARIMB� - Valor das sa�das',19,to_date('01/01/2019','dd/mm/rrrr'), null );
   EXCEPTION
     WHEN OTHERS THEN
        NULL;
   END;
   --
   BEGIN
     insert into CSF_OWN.param_ipm( id , cod_ipm , descr , estado_id , dt_ini , dt_fim  )
         values ( CSF_OWN.paramipm_seq.nextval ,'RJVAF02912','Atividades de extra��o e produ��o de petr�leo e g�s - MARLIM - Valor das entradas',19,to_date('01/01/2019','dd/mm/rrrr'), null );
   EXCEPTION
     WHEN OTHERS THEN
        NULL;
   END;
   --
   BEGIN
     insert into CSF_OWN.param_ipm( id , cod_ipm , descr , estado_id , dt_ini , dt_fim  )
         values ( CSF_OWN.paramipm_seq.nextval ,'RJVAF12912','Atividades de extra��o e produ��o de petr�leo e g�s - MARLIM - Valor das sa�das',19,to_date('01/01/2019','dd/mm/rrrr'), null );
   EXCEPTION
     WHEN OTHERS THEN
        NULL;
   END;
   --
   BEGIN
     insert into CSF_OWN.param_ipm( id , cod_ipm , descr , estado_id , dt_ini , dt_fim  )
         values ( CSF_OWN.paramipm_seq.nextval ,'RJVAF03012','Atividades de extra��o e produ��o de petr�leo e g�s - MARLIM LESTE - Valor das entradas',19,to_date('01/01/2019','dd/mm/rrrr'), null );
   EXCEPTION
     WHEN OTHERS THEN
        NULL;
   END;
   --
   BEGIN
     insert into CSF_OWN.param_ipm( id , cod_ipm , descr , estado_id , dt_ini , dt_fim  )
         values ( CSF_OWN.paramipm_seq.nextval ,'RJVAF13012','Atividades de extra��o e produ��o de petr�leo e g�s - MARLIM LESTE - Valor das sa�das',19,to_date('01/01/2019','dd/mm/rrrr'), null );
   EXCEPTION
     WHEN OTHERS THEN
        NULL;
   END;
   --
   BEGIN
     insert into CSF_OWN.param_ipm( id , cod_ipm , descr , estado_id , dt_ini , dt_fim  )
         values ( CSF_OWN.paramipm_seq.nextval ,'RJVAF03112','Atividades de extra��o e produ��o de petr�leo e g�s - MARLIM SUL - Valor das entradas',19,to_date('01/01/2019','dd/mm/rrrr'), null );
   EXCEPTION
     WHEN OTHERS THEN
        NULL;
   END;
   --
   BEGIN
     insert into CSF_OWN.param_ipm( id , cod_ipm , descr , estado_id , dt_ini , dt_fim  )
         values ( CSF_OWN.paramipm_seq.nextval ,'RJVAF13112','Atividades de extra��o e produ��o de petr�leo e g�s - MARLIM SUL - Valor das sa�das',19,to_date('01/01/2019','dd/mm/rrrr'), null );
   EXCEPTION
     WHEN OTHERS THEN
        NULL;
   END;
   --
   BEGIN
     insert into CSF_OWN.param_ipm( id , cod_ipm , descr , estado_id , dt_ini , dt_fim  )
         values ( CSF_OWN.paramipm_seq.nextval ,'RJVAF03212','Atividades de extra��o e produ��o de petr�leo e g�s - MOR�IA - Valor das entradas',19,to_date('01/01/2019','dd/mm/rrrr'), null );
   EXCEPTION
     WHEN OTHERS THEN
        NULL;
   END;
   --
   BEGIN
     insert into CSF_OWN.param_ipm( id , cod_ipm , descr , estado_id , dt_ini , dt_fim  )
         values ( CSF_OWN.paramipm_seq.nextval ,'RJVAF13212','Atividades de extra��o e produ��o de petr�leo e g�s - MOR�IA - Valor das sa�das',19,to_date('01/01/2019','dd/mm/rrrr'), null );
   EXCEPTION
     WHEN OTHERS THEN
        NULL;
   END;
   --
   BEGIN
     insert into CSF_OWN.param_ipm( id , cod_ipm , descr , estado_id , dt_ini , dt_fim  )
         values ( CSF_OWN.paramipm_seq.nextval ,'RJVAF03312','Atividades de extra��o e produ��o de petr�leo e g�s - NAMORADO - Valor das entradas',19,to_date('01/01/2019','dd/mm/rrrr'), null );
   EXCEPTION
     WHEN OTHERS THEN
        NULL;
   END;
   --
   BEGIN
     insert into CSF_OWN.param_ipm( id , cod_ipm , descr , estado_id , dt_ini , dt_fim  )
         values ( CSF_OWN.paramipm_seq.nextval ,'RJVAF13312','Atividades de extra��o e produ��o de petr�leo e g�s - NAMORADO - Valor das sa�das',19,to_date('01/01/2019','dd/mm/rrrr'), null );
   EXCEPTION
     WHEN OTHERS THEN
        NULL;
   END;
   --
   BEGIN
     insert into CSF_OWN.param_ipm( id , cod_ipm , descr , estado_id , dt_ini , dt_fim  )
         values ( CSF_OWN.paramipm_seq.nextval ,'RJVAF03412','Atividades de extra��o e produ��o de petr�leo e g�s - NE NAMORADO - Valor das entradas',19,to_date('01/01/2019','dd/mm/rrrr'), null );
   EXCEPTION
     WHEN OTHERS THEN
        NULL;
   END;
   --
   BEGIN
     insert into CSF_OWN.param_ipm( id , cod_ipm , descr , estado_id , dt_ini , dt_fim  )
         values ( CSF_OWN.paramipm_seq.nextval ,'RJVAF13412','Atividades de extra��o e produ��o de petr�leo e g�s - NE NAMORADO - Valor das sa�das',19,to_date('01/01/2019','dd/mm/rrrr'), null );
   EXCEPTION
     WHEN OTHERS THEN
        NULL;
   END;
   --
   BEGIN
     insert into CSF_OWN.param_ipm( id , cod_ipm , descr , estado_id , dt_ini , dt_fim  )
         values ( CSF_OWN.paramipm_seq.nextval ,'RJVAF03512','Atividades de extra��o e produ��o de petr�leo e g�s - PAMPO - Valor das entradas',19,to_date('01/01/2019','dd/mm/rrrr'), null );
   EXCEPTION
     WHEN OTHERS THEN
        NULL;
   END;
   --
   BEGIN
     insert into CSF_OWN.param_ipm( id , cod_ipm , descr , estado_id , dt_ini , dt_fim  )
         values ( CSF_OWN.paramipm_seq.nextval ,'RJVAF13512','|tividades de extra��o e produ��o de petr�leo e g�s - PAMPO - Valor das sa�das',19,to_date('01/01/2019','dd/mm/rrrr'), null );
   EXCEPTION
     WHEN OTHERS THEN
        NULL;
   END;
   --
   BEGIN
     insert into CSF_OWN.param_ipm( id , cod_ipm , descr , estado_id , dt_ini , dt_fim  )
         values ( CSF_OWN.paramipm_seq.nextval ,'RJVAF03612','Atividades de extra��o e produ��o de petr�leo e g�s - PAPA-TERRA - Valor das entradas',19,to_date('01/01/2019','dd/mm/rrrr'), null );
   EXCEPTION
     WHEN OTHERS THEN
        NULL;
   END;
   --
   BEGIN
     insert into CSF_OWN.param_ipm( id , cod_ipm , descr , estado_id , dt_ini , dt_fim  )
         values ( CSF_OWN.paramipm_seq.nextval ,'RJVAF13612','Atividades de extra��o e produ��o de petr�leo e g�s - PAPA-TERRA - Valor das sa�das',19,to_date('01/01/2019','dd/mm/rrrr'), null );
   EXCEPTION
     WHEN OTHERS THEN
        NULL;
   END;
   --
   BEGIN
     insert into CSF_OWN.param_ipm( id , cod_ipm , descr , estado_id , dt_ini , dt_fim  )
         values ( CSF_OWN.paramipm_seq.nextval ,'RJVAF03712','Atividades de extra��o e produ��o de petr�leo e g�s - PARATI - Valor das entradas',19,to_date('01/01/2019','dd/mm/rrrr'), null );
   EXCEPTION
     WHEN OTHERS THEN
        NULL;
   END;
   --
   BEGIN
     insert into CSF_OWN.param_ipm( id , cod_ipm , descr , estado_id , dt_ini , dt_fim  )
         values ( CSF_OWN.paramipm_seq.nextval ,'RJVAF13712','Atividades de extra��o e produ��o de petr�leo e g�s - PARATI - Valor das sa�das',19,to_date('01/01/2019','dd/mm/rrrr'), null );
   EXCEPTION
     WHEN OTHERS THEN
        NULL;
   END;
   --
   BEGIN
     insert into CSF_OWN.param_ipm( id , cod_ipm , descr , estado_id , dt_ini , dt_fim  )
         values ( CSF_OWN.paramipm_seq.nextval ,'RJVAF03812','Atividades de extra��o e produ��o de petr�leo e g�s - PARGO - Valor das entradas',19,to_date('01/01/2019','dd/mm/rrrr'), null );
   EXCEPTION
     WHEN OTHERS THEN
        NULL;
   END;
   --
   BEGIN
     insert into CSF_OWN.param_ipm( id , cod_ipm , descr , estado_id , dt_ini , dt_fim  )
         values ( CSF_OWN.paramipm_seq.nextval ,'RJVAF13812','Atividades de extra��o e produ��o de petr�leo e g�s - PARGO - Valor das sa�das',19,to_date('01/01/2019','dd/mm/rrrr'), null );
   EXCEPTION
     WHEN OTHERS THEN
        NULL;
   END;
   --
   BEGIN
     insert into CSF_OWN.param_ipm( id , cod_ipm , descr , estado_id , dt_ini , dt_fim  )
         values ( CSF_OWN.paramipm_seq.nextval ,'RJVAF03912','Atividades de extra��o e produ��o de petr�leo e g�s - PEREGRINO - Valor das entradas',19,to_date('01/01/2019','dd/mm/rrrr'), null );
   EXCEPTION
     WHEN OTHERS THEN
        NULL;
   END;
   --
   BEGIN
     insert into CSF_OWN.param_ipm( id , cod_ipm , descr , estado_id , dt_ini , dt_fim  )
         values ( CSF_OWN.paramipm_seq.nextval ,'RJVAF13912','Atividades de extra��o e produ��o de petr�leo e g�s - PEREGRINO - Valor das sa�das',19,to_date('01/01/2019','dd/mm/rrrr'), null );
   EXCEPTION
     WHEN OTHERS THEN
        NULL;
   END;
   --
   BEGIN
     insert into CSF_OWN.param_ipm( id , cod_ipm , descr , estado_id , dt_ini , dt_fim  )
         values ( CSF_OWN.paramipm_seq.nextval ,'RJVAF04012','Atividades de extra��o e produ��o de petr�leo e g�s - PIRA�NA - Valor das entradas',19,to_date('01/01/2019','dd/mm/rrrr'), null );
   EXCEPTION
     WHEN OTHERS THEN
        NULL;
   END;
   --
   BEGIN
     insert into CSF_OWN.param_ipm( id , cod_ipm , descr , estado_id , dt_ini , dt_fim  )
         values ( CSF_OWN.paramipm_seq.nextval ,'RJVAF14012','Atividades de extra��o e produ��o de petr�leo e g�s - PIRA�NA - Valor das sa�das',19,to_date('01/01/2019','dd/mm/rrrr'), null );
   EXCEPTION
     WHEN OTHERS THEN
        NULL;
   END;
   --
   BEGIN
     insert into CSF_OWN.param_ipm( id , cod_ipm , descr , estado_id , dt_ini , dt_fim  )
         values ( CSF_OWN.paramipm_seq.nextval ,'RJVAF04112','Atividades de extra��o e produ��o de petr�leo e g�s - POLVO - Valor das entradas',19,to_date('01/01/2019','dd/mm/rrrr'), null );
   EXCEPTION
     WHEN OTHERS THEN
        NULL;
   END;
   --
   BEGIN
     insert into CSF_OWN.param_ipm( id , cod_ipm , descr , estado_id , dt_ini , dt_fim  )
         values ( CSF_OWN.paramipm_seq.nextval ,'RJVAF14112','Atividades de extra��o e produ��o de petr�leo e g�s - POLVO - Valor das sa�das',19,to_date('01/01/2019','dd/mm/rrrr'), null );
   EXCEPTION
     WHEN OTHERS THEN
        NULL;
   END;
   --
   BEGIN
     insert into CSF_OWN.param_ipm( id , cod_ipm , descr , estado_id , dt_ini , dt_fim  )
         values ( CSF_OWN.paramipm_seq.nextval ,'RJVAF04212','Atividades de extra��o e produ��o de petr�leo e g�s - RONCADOR - Valor das entradas',19,to_date('01/01/2019','dd/mm/rrrr'), null );
   EXCEPTION
     WHEN OTHERS THEN
        NULL;
   END;
   --
   BEGIN
     insert into CSF_OWN.param_ipm( id , cod_ipm , descr , estado_id , dt_ini , dt_fim  )
         values ( CSF_OWN.paramipm_seq.nextval ,'RJVAF14212','Atividades de extra��o e produ��o de petr�leo e g�s - RONCADOR - Valor das sa�das',19,to_date('01/01/2019','dd/mm/rrrr'), null );
   EXCEPTION
     WHEN OTHERS THEN
        NULL;
   END;
   --
   BEGIN
     insert into CSF_OWN.param_ipm( id , cod_ipm , descr , estado_id , dt_ini , dt_fim  )
         values ( CSF_OWN.paramipm_seq.nextval ,'RJVAF04312','Atividades de extra��o e produ��o de petr�leo e g�s - SALEMA - Valor das entradas',19,to_date('01/01/2019','dd/mm/rrrr'), null );
   EXCEPTION
     WHEN OTHERS THEN
        NULL;
   END;
   --
   BEGIN
     insert into CSF_OWN.param_ipm( id , cod_ipm , descr , estado_id , dt_ini , dt_fim  )
         values ( CSF_OWN.paramipm_seq.nextval ,'RJVAF14312','Atividades de extra��o e produ��o de petr�leo e g�s - SALEMA - Valor das sa�das',19,to_date('01/01/2019','dd/mm/rrrr'), null );
   EXCEPTION
     WHEN OTHERS THEN
        NULL;
   END;
   --
   BEGIN
     insert into CSF_OWN.param_ipm( id , cod_ipm , descr , estado_id , dt_ini , dt_fim  )
         values ( CSF_OWN.paramipm_seq.nextval ,'RJVAF04412','Atividades de extra��o e produ��o de petr�leo e g�s - SAPINHO� - Valor das entradas',19,to_date('01/01/2019','dd/mm/rrrr'), null );
   EXCEPTION
     WHEN OTHERS THEN
        NULL;
   END;
   --
   BEGIN
     insert into CSF_OWN.param_ipm( id , cod_ipm , descr , estado_id , dt_ini , dt_fim  )
         values ( CSF_OWN.paramipm_seq.nextval ,'RJVAF14412','Atividades de extra��o e produ��o de petr�leo e g�s - SAPINHO� - Valor das sa�das',19,to_date('01/01/2019','dd/mm/rrrr'), null );
   EXCEPTION
     WHEN OTHERS THEN
        NULL;
   END;
   --
   BEGIN
     insert into CSF_OWN.param_ipm( id , cod_ipm , descr , estado_id , dt_ini , dt_fim  )
         values ( CSF_OWN.paramipm_seq.nextval ,'RJVAF04512','Atividades de extra��o e produ��o de petr�leo e g�s - S�PIA - Valor das entradas',19,to_date('01/01/2019','dd/mm/rrrr'), null );
   EXCEPTION
     WHEN OTHERS THEN
        NULL;
   END;
   --
   BEGIN
     insert into CSF_OWN.param_ipm( id , cod_ipm , descr , estado_id , dt_ini , dt_fim  )
         values ( CSF_OWN.paramipm_seq.nextval ,'RJVAF14512','Atividades de extra��o e produ��o de petr�leo e g�s - S�PIA - Valor das sa�das',19,to_date('01/01/2019','dd/mm/rrrr'), null );
   EXCEPTION
     WHEN OTHERS THEN
        NULL;
   END;
   --
   BEGIN
     insert into CSF_OWN.param_ipm( id , cod_ipm , descr , estado_id , dt_ini , dt_fim  )
         values ( CSF_OWN.paramipm_seq.nextval ,'RJVAF04612','Atividades de extra��o e produ��o de petr�leo e g�s - SUL DE LULA - Valor das entradas',19,to_date('01/01/2019','dd/mm/rrrr'), null );
   EXCEPTION
     WHEN OTHERS THEN
        NULL;
   END;
   --
   BEGIN
     insert into CSF_OWN.param_ipm( id , cod_ipm , descr , estado_id , dt_ini , dt_fim  )
         values ( CSF_OWN.paramipm_seq.nextval ,'RJVAF14612','Atividades de extra��o e produ��o de petr�leo e g�s - SUL DE LULA - Valor das sa�das',19,to_date('01/01/2019','dd/mm/rrrr'), null );
   EXCEPTION
     WHEN OTHERS THEN
        NULL;
   END;
   --
   BEGIN
     insert into CSF_OWN.param_ipm( id , cod_ipm , descr , estado_id , dt_ini , dt_fim  )
         values ( CSF_OWN.paramipm_seq.nextval ,'RJVAF04712','Atividades de extra��o e produ��o de petr�leo e g�s - TAMBA� - Valor das entradas',19,to_date('01/01/2019','dd/mm/rrrr'), null );
   EXCEPTION
     WHEN OTHERS THEN
        NULL;
   END;
   --
   BEGIN
     insert into CSF_OWN.param_ipm( id , cod_ipm , descr , estado_id , dt_ini , dt_fim  )
         values ( CSF_OWN.paramipm_seq.nextval ,'RJVAF14712','Atividades de extra��o e produ��o de petr�leo e g�s - TAMBA� - Valor das sa�das',19,to_date('01/01/2019','dd/mm/rrrr'), null );
   EXCEPTION
     WHEN OTHERS THEN
        NULL;
   END;
   --
   BEGIN
     insert into CSF_OWN.param_ipm( id , cod_ipm , descr , estado_id , dt_ini , dt_fim  )
         values ( CSF_OWN.paramipm_seq.nextval ,'RJVAF04812','Atividades de extra��o e produ��o de petr�leo e g�s - TARTARUGA VERDE - Valor das entradas',19,to_date('01/01/2019','dd/mm/rrrr'), null );
   EXCEPTION
     WHEN OTHERS THEN
        NULL;
   END;
   --
   BEGIN
     insert into CSF_OWN.param_ipm( id , cod_ipm , descr , estado_id , dt_ini , dt_fim  )
         values ( CSF_OWN.paramipm_seq.nextval ,'RJVAF14812','Atividades de extra��o e produ��o de petr�leo e g�s - TARTARUGA VERDE - Valor das sa�das',19,to_date('01/01/2019','dd/mm/rrrr'), null );
   EXCEPTION
     WHEN OTHERS THEN
        NULL;
   END;
   --
   BEGIN
     insert into CSF_OWN.param_ipm( id , cod_ipm , descr , estado_id , dt_ini , dt_fim  )
         values ( CSF_OWN.paramipm_seq.nextval ,'RJVAF04912','Atividades de extra��o e produ��o de petr�leo e g�s - TRILHA - Valor das entradas',19,to_date('01/01/2019','dd/mm/rrrr'), null );
   EXCEPTION
     WHEN OTHERS THEN
        NULL;
   END;
   --
   BEGIN
     insert into CSF_OWN.param_ipm( id , cod_ipm , descr , estado_id , dt_ini , dt_fim  )
         values ( CSF_OWN.paramipm_seq.nextval ,'RJVAF14912','Atividades de extra��o e produ��o de petr�leo e g�s - TRILHA - Valor das sa�das',19,to_date('01/01/2019','dd/mm/rrrr'), null );
   EXCEPTION
     WHEN OTHERS THEN
        NULL;
   END;
   --
   BEGIN
     insert into CSF_OWN.param_ipm( id , cod_ipm , descr , estado_id , dt_ini , dt_fim  )
         values ( CSF_OWN.paramipm_seq.nextval ,'RJVAF05012','Atividades de extra��o e produ��o de petr�leo e g�s - TUBAR�O AZUL - Valor das entradas',19,to_date('01/01/2019','dd/mm/rrrr'), null );
   EXCEPTION
     WHEN OTHERS THEN
        NULL;
   END;
   --
   BEGIN
     insert into CSF_OWN.param_ipm( id , cod_ipm , descr , estado_id , dt_ini , dt_fim  )
         values ( CSF_OWN.paramipm_seq.nextval ,'RJVAF15012','Atividades de extra��o e produ��o de petr�leo e g�s - TUBAR�O AZUL - Valor das sa�das',19,to_date('01/01/2019','dd/mm/rrrr'), null );
   EXCEPTION
     WHEN OTHERS THEN
        NULL;
   END;
   --
   BEGIN
     insert into CSF_OWN.param_ipm( id , cod_ipm , descr , estado_id , dt_ini , dt_fim  )
         values ( CSF_OWN.paramipm_seq.nextval ,'RJVAF05112','Atividades de extra��o e produ��o de petr�leo e g�s - TUBAR�O MARTELO - Valor das entradas',19,to_date('01/01/2019','dd/mm/rrrr'), null );
   EXCEPTION
     WHEN OTHERS THEN
        NULL;
   END;
   --
   BEGIN
     insert into CSF_OWN.param_ipm( id , cod_ipm , descr , estado_id , dt_ini , dt_fim  )
         values ( CSF_OWN.paramipm_seq.nextval ,'RJVAF15112','Atividades de extra��o e produ��o de petr�leo e g�s - TUBAR�O MARTELO - Valor das sa�das',19,to_date('01/01/2019','dd/mm/rrrr'), null );
   EXCEPTION
     WHEN OTHERS THEN
        NULL;
   END;
   --
   BEGIN
     insert into CSF_OWN.param_ipm( id , cod_ipm , descr , estado_id , dt_ini , dt_fim  )
         values ( CSF_OWN.paramipm_seq.nextval ,'RJVAF05212','Atividades de extra��o e produ��o de petr�leo e g�s - URUGU� - Valor das entradas',19,to_date('01/01/2019','dd/mm/rrrr'), null );
   EXCEPTION
     WHEN OTHERS THEN
        NULL;
   END;
   --
   BEGIN
     insert into CSF_OWN.param_ipm( id , cod_ipm , descr , estado_id , dt_ini , dt_fim  )
         values ( CSF_OWN.paramipm_seq.nextval ,'RJVAF15212','Atividades de extra��o e produ��o de petr�leo e g�s - URUGU� - Valor das sa�das',19,to_date('01/01/2019','dd/mm/rrrr'), null );
   EXCEPTION
     WHEN OTHERS THEN
        NULL;
   END;
   --
   BEGIN
     insert into CSF_OWN.param_ipm( id , cod_ipm , descr , estado_id , dt_ini , dt_fim  )
         values ( CSF_OWN.paramipm_seq.nextval ,'RJVAF05312','Atividades de extra��o e produ��o de petr�leo e g�s - VERMELHO - Valor das entradas',19,to_date('01/01/2019','dd/mm/rrrr'), null );
   EXCEPTION
     WHEN OTHERS THEN
        NULL;
   END;
   --
   BEGIN
     insert into CSF_OWN.param_ipm( id , cod_ipm , descr , estado_id , dt_ini , dt_fim  )
         values ( CSF_OWN.paramipm_seq.nextval ,'RJVAF15312','Atividades de extra��o e produ��o de petr�leo e g�s - VERMELHO - Valor das sa�das',19,to_date('01/01/2019','dd/mm/rrrr'), null );
   EXCEPTION
     WHEN OTHERS THEN
        NULL;
   END;
   --
   BEGIN
     insert into CSF_OWN.param_ipm( id , cod_ipm , descr , estado_id , dt_ini , dt_fim  )
         values ( CSF_OWN.paramipm_seq.nextval ,'RJVAF05412','Atividades de extra��o e produ��o de petr�leo e g�s - VIOLA - Valor das entradas',19,to_date('01/01/2019','dd/mm/rrrr'), null );
   EXCEPTION
     WHEN OTHERS THEN
        NULL;
   END;
   --
   BEGIN
     insert into CSF_OWN.param_ipm( id , cod_ipm , descr , estado_id , dt_ini , dt_fim  )
         values ( CSF_OWN.paramipm_seq.nextval ,'RJVAF15412','Atividades de extra��o e produ��o de petr�leo e g�s - VIOLA - Valor das sa�das',19,to_date('01/01/2019','dd/mm/rrrr'), null );
   EXCEPTION
     WHEN OTHERS THEN
        NULL;
   END;
   --
   BEGIN
     insert into CSF_OWN.param_ipm( id , cod_ipm , descr , estado_id , dt_ini , dt_fim  )
         values ( CSF_OWN.paramipm_seq.nextval ,'RJVAF05512','Atividades de extra��o e produ��o de petr�leo e g�s - VOADOR - Valor das entradas',19,to_date('01/01/2019','dd/mm/rrrr'), null );
   EXCEPTION
     WHEN OTHERS THEN
        NULL;
   END;
   --
   BEGIN
     insert into CSF_OWN.param_ipm( id , cod_ipm , descr , estado_id , dt_ini , dt_fim  )
         values ( CSF_OWN.paramipm_seq.nextval ,'RJVAF15512','Atividades de extra��o e produ��o de petr�leo e g�s - VOADOR - Valor das sa�das',19,to_date('01/01/2019','dd/mm/rrrr'), null );
   EXCEPTION
     WHEN OTHERS THEN
        NULL;
   END;
   --
   BEGIN
     insert into CSF_OWN.param_ipm( id , cod_ipm , descr , estado_id , dt_ini , dt_fim  )
         values ( CSF_OWN.paramipm_seq.nextval ,'RJVAF05612','Atividades de extra��o e produ��o de petr�leo e g�s - MERO- Valor das entradas',19,to_date('01/01/2020','dd/mm/rrrr'), null );
   EXCEPTION
     WHEN OTHERS THEN
        NULL;
   END;
   --
   BEGIN
     insert into CSF_OWN.param_ipm( id , cod_ipm , descr , estado_id , dt_ini , dt_fim  )
         values ( CSF_OWN.paramipm_seq.nextval ,'RJVAF15612','Atividades de extra��o e produ��o de petr�leo e g�s - MERO - Valor das sa�das',19,to_date('01/01/2020','dd/mm/rrrr'), null );
   EXCEPTION
     WHEN OTHERS THEN
        NULL;
   END;
   --
   BEGIN
     insert into CSF_OWN.param_ipm( id , cod_ipm , descr , estado_id , dt_ini , dt_fim  )
         values ( CSF_OWN.paramipm_seq.nextval ,'RJVAF05712','Atividades de extra��o e produ��o de petr�leo e g�s - TAMBUAT� - Valor das entradas',19,to_date('01/01/2020','dd/mm/rrrr'), null );
   EXCEPTION
     WHEN OTHERS THEN
        NULL;
   END;
   --
   BEGIN
     insert into CSF_OWN.param_ipm( id , cod_ipm , descr , estado_id , dt_ini , dt_fim  )
         values ( CSF_OWN.paramipm_seq.nextval ,'RJVAF15712','Atividades de extra��o e produ��o de petr�leo e g�s - TAMBUAT� - Valor das sa�das',19,to_date('01/01/2020','dd/mm/rrrr'), null );
   EXCEPTION
     WHEN OTHERS THEN
        NULL;
   END;
   --
   BEGIN
     insert into CSF_OWN.param_ipm( id , cod_ipm , descr , estado_id , dt_ini , dt_fim  )
         values ( CSF_OWN.paramipm_seq.nextval ,'RJVAF00013','Presta��o de Servi�o de comunica��o ou telecomunica��o gratuito para consumidor final - Valor das entradas',19,to_date('01/01/2020','dd/mm/rrrr'), null );
   EXCEPTION
     WHEN OTHERS THEN
        NULL;
   END;
   --
   BEGIN
     insert into CSF_OWN.param_ipm( id , cod_ipm , descr , estado_id , dt_ini , dt_fim  )
         values ( CSF_OWN.paramipm_seq.nextval ,'RJVAF10013','Presta��o de Servi�o de comunica��o ou telecomunica��o gratuito para consumidor final - Valor das sa�das',19,to_date('01/01/2020','dd/mm/rrrr'), null );
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
Prompt FIM Redmine #75312 - Atualiza��o tabela param_ipm (RJ)
--------------------------------------------------------------------------------------------------------------------------------------
 