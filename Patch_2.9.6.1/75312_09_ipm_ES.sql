-------------------------------------------------------------------------------------------------------------------------------
Prompt INI Redmine #75312 - Atualiza��o tabela param_ipm (ES)
-------------------------------------------------------------------------------------------------------------------------------
begin
   --
   

   BEGIN
     insert into CSF_OWN.param_ipm( id , cod_ipm , descr , estado_id , dt_ini , dt_fim  )
         values ( CSF_OWN.paramipm_seq.nextval ,'ESIPM01','PRODU��O RURAL PR�PRIA - Entradas para comercializa��o ou industrializa��o, de produtos agropecu�rios produzidos em propriedade rural que o contribuinte � respons�vel, inclusive as entradas por retorno de animal em sistema de integra��o.',8,to_date('01/10/2015','dd/mm/rrrr'), null );
   EXCEPTION
     WHEN OTHERS THEN
        NULL;
   END;
   --
   BEGIN
     insert into CSF_OWN.param_ipm( id , cod_ipm , descr , estado_id , dt_ini , dt_fim  )
         values ( CSF_OWN.paramipm_seq.nextval ,'ESIPM02','COOPERATIVAS E CONTRIBUINTES QUE POSSUAM REOA - Valor dos produtos agropecu�rios adquiridos por cooperativas ou contribuintes que possuam Regime Especial de Obriga��o Acess�ria - REOA - para emitir a NFe referente � entrada de produtos.',8,to_date('01/10/2015','dd/mm/rrrr'), null );
   EXCEPTION
     WHEN OTHERS THEN
        NULL;
   END;
   --   
   BEGIN
     insert into CSF_OWN.param_ipm( id , cod_ipm , descr , estado_id , dt_ini , dt_fim  )
         values ( CSF_OWN.paramipm_seq.nextval ,'ESIPM03','AQUISI��ES DE PESSOAS F�SICAS - Valor correspondente �s aquisi��es de mercadorias de pessoas f�sicas, tais como sucatas e ve�culos usados. N�o consideraras aquisi��es de produtores rurais que tenham emitido nota fiscal de produtor.',8,to_date('01/10/2015','dd/mm/rrrr'), null );
   EXCEPTION
     WHEN OTHERS THEN
        NULL;
   END;
   --   
   BEGIN
     insert into CSF_OWN.param_ipm( id , cod_ipm , descr , estado_id , dt_ini , dt_fim  )
         values ( CSF_OWN.paramipm_seq.nextval ,'ESIPM04','GERA��O DE ENERGIA EL�TRICA - Receita referente � produ��o de energia el�trica, deduzidos os custos de produ��o. Detalhando para o Munic�pio de localiza��o do estabelecimento produtor, que � onde est� instalado o motor prim�rio.',8,to_date('01/10/2015','dd/mm/rrrr'), null );
   EXCEPTION
     WHEN OTHERS THEN
        NULL;
   END;
   --   
   BEGIN
     insert into CSF_OWN.param_ipm( id , cod_ipm , descr , estado_id , dt_ini , dt_fim  )
         values ( CSF_OWN.paramipm_seq.nextval ,'ESIPM05','DISTRIBUI��O DE ENERGIA EL�TRICA - Receita de energia el�trica distribu�da, deduzido o valor da compra de energia el�trica, utilizando o crit�rio de rateio proporcional e considerando o valor total do fornecimento.',8,to_date('01/10/2015','dd/mm/rrrr'), null );
   EXCEPTION
     WHEN OTHERS THEN
        NULL;
   END;
   --   
   BEGIN
     insert into CSF_OWN.param_ipm( id , cod_ipm , descr , estado_id , dt_ini , dt_fim  )
         values ( CSF_OWN.paramipm_seq.nextval ,'ESIPM06','PRESTA��O SERVI�O DE TRANSPORTE - Valor das presta��es de servi�os de transporte intermunicipal e interestadual, para o Munic�pio que tenha iniciado o transporte. Se iniciado em outro Estado, registra-se para o Munic�pio sede da transportadora.',8,to_date('01/10/2015','dd/mm/rrrr'), null );
   EXCEPTION
     WHEN OTHERS THEN
        NULL;
   END;
   --   
   BEGIN
     insert into CSF_OWN.param_ipm( id , cod_ipm , descr , estado_id , dt_ini , dt_fim  )
         values ( CSF_OWN.paramipm_seq.nextval ,'ESIPM07','SERVI�OS DE COMUNICA��O E TELECOMUNICA��O -Valor correspondente para cada Munic�pio nos quais foram realizadas presta��es de servi�os de comunica��o e telecomunica��o, n�o considerando o faturamento referente � comercializa��o de equipamentos.',8,to_date('01/10/2015','dd/mm/rrrr'), null );
   EXCEPTION
     WHEN OTHERS THEN
        NULL;
   END;
   --
   BEGIN
     insert into CSF_OWN.param_ipm( id , cod_ipm , descr , estado_id , dt_ini , dt_fim  )
         values ( CSF_OWN.paramipm_seq.nextval ,'ESIPM08','PRODU��O DE PETR�LEO E G�S NATURAL - Valor referente �s atividades de produ��o de petr�leo ou g�s natural, considerando para o rateio do Munic�pio o crit�rio �cabe�a do po�o�, que � onde est�o instalados os equipamentos de extra��o.',8,to_date('01/10/2015','dd/mm/rrrr'), null );
   EXCEPTION
     WHEN OTHERS THEN
        NULL;
   END;
   --   
   BEGIN
     insert into CSF_OWN.param_ipm( id , cod_ipm , descr , estado_id , dt_ini , dt_fim  )
         values ( CSF_OWN.paramipm_seq.nextval ,'ESIPM09','DISTRIBUI��O DE �GUA CANALIZADA - Valor relativo ao faturamento de �gua tratada, considerando o fornecimento para cada Munic�pio individualmente e rateando os custos proporcionalmente. Sendo vedada a inclus�o do faturamento relativo ao esgoto.',8,to_date('01/10/2015','dd/mm/rrrr'), null );
   EXCEPTION
     WHEN OTHERS THEN
        NULL;
   END;
   --   
   BEGIN
     insert into CSF_OWN.param_ipm( id , cod_ipm , descr , estado_id , dt_ini , dt_fim  )
         values ( CSF_OWN.paramipm_seq.nextval ,'ESIPM10','DISTRIBUI��O DE G�S NATURAL CANALIZADO - Valor do faturamento com g�s natural canalizado, deduzido por crit�rio de rateio as compras de g�s natural e os tributos incidentes.',8,to_date('01/10/2015','dd/mm/rrrr'), null );
   EXCEPTION
     WHEN OTHERS THEN
        NULL;
   END;
   --   
   BEGIN
     insert into CSF_OWN.param_ipm( id , cod_ipm , descr , estado_id , dt_ini , dt_fim  )
         values ( CSF_OWN.paramipm_seq.nextval ,'ESIPM11','COZINHAS INDUSTRIAIS E SISTEMA DE INSCRI��O CENTRALIZADA - Faturamento n�o inclu�dos nos itens anteriores, realizados por contribuintes com inscri��o centralizada, legisla��o do ICMS ou regime especial, como cozinhas industriais.',8,to_date('01/10/2015','dd/mm/rrrr'), null );
   EXCEPTION
     WHEN OTHERS THEN
        NULL;
   END;
   --   
   BEGIN
     insert into CSF_OWN.param_ipm( id , cod_ipm , descr , estado_id , dt_ini , dt_fim  )
         values ( CSF_OWN.paramipm_seq.nextval ,'ESIPM12','FOMENTOS AGROPECU�RIOS - Valor correspondente ao fomento agropecu�rio realizados pelo contribuinte.',8,to_date('01/10/2015','dd/mm/rrrr'), null );
   EXCEPTION
     WHEN OTHERS THEN
        NULL;
   END;
   --   
   BEGIN
     insert into CSF_OWN.param_ipm( id , cod_ipm , descr , estado_id , dt_ini , dt_fim  )
         values ( CSF_OWN.paramipm_seq.nextval ,'ESIPM13','MUDAN�A PARA OUTRO MUNIC�PIO - Ser� informado para o Munic�pio onde o contribuinte estava localizado, o valor referente ao estoque final de mercadorias constantes no dia da mudan�a para outro Munic�pio.',8,to_date('01/10/2015','dd/mm/rrrr'), null );
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
Prompt FIM Redmine #75312 - Atualiza��o tabela param_ipm (ES)
--------------------------------------------------------------------------------------------------------------------------------------
 