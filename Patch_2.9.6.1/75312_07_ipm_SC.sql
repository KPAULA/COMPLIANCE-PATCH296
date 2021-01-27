-------------------------------------------------------------------------------------------------------------------------------
Prompt INI Redmine #75312 - Atualiza��o tabela param_ipm (SC)
-------------------------------------------------------------------------------------------------------------------------------
begin

   --
   BEGIN
     insert into CSF_OWN.param_ipm( id , cod_ipm , descr , estado_id , dt_ini , dt_fim  )
         values ( CSF_OWN.paramipm_seq.nextval , '01','Extra��o mineral do subsolo realizada em unidades de explora��o da pr�pria empresa quando o min�rio ou a boca da mina se localizarem em munic�pio diverso da sede do estabelecimento do contribuinte',24,to_date('01/01/2020','dd/mm/rrrr'), null );
   EXCEPTION
     WHEN OTHERS THEN
        NULL;
   END; 
   --
   BEGIN
     insert into CSF_OWN.param_ipm( id , cod_ipm , descr , estado_id , dt_ini , dt_fim  )
         values ( CSF_OWN.paramipm_seq.nextval , '02','Transfer�ncias recebidas de estabelecimento do mesmo titular a pre�o de venda a varejo',24,to_date('01/01/2020','dd/mm/rrrr'), null );
   EXCEPTION
     WHEN OTHERS THEN
        NULL;
   END;
   -- 		 
   BEGIN
     insert into CSF_OWN.param_ipm( id , cod_ipm , descr , estado_id , dt_ini , dt_fim  )
         values ( CSF_OWN.paramipm_seq.nextval ,'03','Transfer�ncias enviadas a estabelecimento do mesmo titular a pre�o de venda a varejo',24,to_date('01/01/2020','dd/mm/rrrr'), null );
   EXCEPTION
     WHEN OTHERS THEN
        NULL;
   END;
   -- 		 
   BEGIN
     insert into CSF_OWN.param_ipm( id , cod_ipm , descr , estado_id , dt_ini , dt_fim  )
         values ( CSF_OWN.paramipm_seq.nextval ,'04','Subs�dios concedidos por �rg�os dos governos federal, estadual ou municipal, sobre entradas',24,to_date('01/01/2020','dd/mm/rrrr'), null );
   EXCEPTION
     WHEN OTHERS THEN
        NULL;
   END;
   -- 		 
   BEGIN
     insert into CSF_OWN.param_ipm( id , cod_ipm , descr , estado_id , dt_ini , dt_fim  )
         values ( CSF_OWN.paramipm_seq.nextval ,'05','Sa�da de mercadoria realizada pelo sistema de marketing direto e que destine mercadorias a revendedores que operem na modalidade de venda porta-a- porta',24,to_date('01/01/2020','dd/mm/rrrr'), null );
   EXCEPTION
     WHEN OTHERS THEN
        NULL;
   END;
   -- 		 
   BEGIN
     insert into CSF_OWN.param_ipm( id , cod_ipm , descr , estado_id , dt_ini , dt_fim  )
         values ( CSF_OWN.paramipm_seq.nextval ,'06','Sa�da de mercadoria realizada por estabelecimento diverso daquele no qual as transa��es foram efetivadas, desde que:a) ambos estejam localizados no territ�rio catarinense, eb) o estabelecimento onde ocorreu a efetiva venda n�o tenha emitido a NF-e da venda.',24,to_date('01/01/2020','dd/mm/rrrr'), null );
   EXCEPTION
     WHEN OTHERS THEN
        NULL;
   END;
   -- 		 
   BEGIN
     insert into CSF_OWN.param_ipm( id , cod_ipm , descr , estado_id , dt_ini , dt_fim  )
         values ( CSF_OWN.paramipm_seq.nextval ,'07','Sa�da de mercadorias ao varejo realizada atrav�s de entreposto ou posto de abastecimento, situados no Estado (Exige TTD)',24,to_date('01/01/2020','dd/mm/rrrr'), null );
   EXCEPTION
     WHEN OTHERS THEN
        NULL;
   END;
   -- 		 
   BEGIN
     insert into CSF_OWN.param_ipm( id , cod_ipm , descr , estado_id , dt_ini , dt_fim  )
         values ( CSF_OWN.paramipm_seq.nextval ,'08','Sa�da de partes e pe�as de um todo realizada por detentor de TTD (Tratamento Tribut�rio Diferenciado c�digo 998) autorizando lan�ar a opera��o nos CFOP 5.949 ou 6.949 e desde que a posterior transmiss�o de propriedade do produto final seja lan�ada nos CFOP 5.116, 5.117, 6.116 ou 6.117.',24,to_date('01/01/2020','dd/mm/rrrr'), null );
   EXCEPTION
     WHEN OTHERS THEN
        NULL;
   END;
   -- 		 
   BEGIN
     insert into CSF_OWN.param_ipm( id , cod_ipm , descr , estado_id , dt_ini , dt_fim  )
         values ( CSF_OWN.paramipm_seq.nextval ,'09','Sa�da para informar a transmiss�o da propriedade de parte ou do todo realizada por detentor de TTD (998) autorizando lan�ar a opera��o no CFOP 5.116, 5.117, 6.116 ou6.117, relativo as sa�das das partes e pe�as anteriormente registradas nos CFOP 5.949 ou 6949.',24,to_date('01/01/2020','dd/mm/rrrr'), null );
   EXCEPTION
     WHEN OTHERS THEN
        NULL;
   END;
   -- 		 
   BEGIN
     insert into CSF_OWN.param_ipm( id , cod_ipm , descr , estado_id , dt_ini , dt_fim  )
         values ( CSF_OWN.paramipm_seq.nextval ,'10','Entrada na Trading de mercadoria importada por conta e ordem de terceiros e registrada nos CFOP 1949, 2949, 3949 edesde que n�o registrada nos CFOP 1101, 1102, 2101, 2102,3101 ou 3102 e n�o se trate de simples remessa, devolu��o, retorno ou anula��es. (� Exigido TTD 998)',24,to_date('01/01/2020','dd/mm/rrrr'), null );
   EXCEPTION
     WHEN OTHERS THEN
        NULL;
   END;
   -- 		 
   BEGIN
     insert into CSF_OWN.param_ipm( id , cod_ipm , descr , estado_id , dt_ini , dt_fim  )
         values ( CSF_OWN.paramipm_seq.nextval ,'11','Sa�da da Trading de mercadoria importada por conta e ordem de terceiros com destino ao adquirente e registrada nos CFOP 5949 ou 6949 e desde que n�o registradas nos CFOP  5101, 5102, 6101, 6102 e n�o se trate de simples remessa, devolu��o, retorno ou anula��es.  (� Exigido TTD 998)',24,to_date('01/01/2020','dd/mm/rrrr'), null );
   EXCEPTION
     WHEN OTHERS THEN
        NULL;
   END;
   -- 		 
   BEGIN
     insert into CSF_OWN.param_ipm( id , cod_ipm , descr , estado_id , dt_ini , dt_fim  )
         values ( CSF_OWN.paramipm_seq.nextval ,'12','Exporta��o de produtos recebidos em transfer�ncia ou para fim espec�fico de exporta��o a pre�o inferior ao da efetiva exporta��o, nos termos do disposto no art. 10-B do RICMS-SC.',24,to_date('01/01/2020','dd/mm/rrrr'), null );
   EXCEPTION
     WHEN OTHERS THEN
        NULL;
   END;
   -- 		 
   BEGIN
     insert into CSF_OWN.param_ipm( id , cod_ipm , descr , estado_id , dt_ini , dt_fim  )
         values ( CSF_OWN.paramipm_seq.nextval ,'13','Exporta��o de produtos atrav�s de estabelecimento do mesmo titular localizado em outra UF, desde que o produto tenha sido transferido para a unidade exportadora a pre�o inferior ao da efetiva exporta��o, nos termos do disposto no art. 10-C do RICMS-SC.',24,to_date('01/01/2020','dd/mm/rrrr'), null );
   EXCEPTION
     WHEN OTHERS THEN
        NULL;
   END;
   -- 		 
   BEGIN
     insert into CSF_OWN.param_ipm( id , cod_ipm , descr , estado_id , dt_ini , dt_fim  )
         values ( CSF_OWN.paramipm_seq.nextval ,'14','Gera��o de Energia El�trica por fonte Hidr�ulica',24,to_date('01/01/2020','dd/mm/rrrr'), null );
   EXCEPTION
     WHEN OTHERS THEN
        NULL;
   END;
   -- 		 
   BEGIN
     insert into CSF_OWN.param_ipm( id , cod_ipm , descr , estado_id , dt_ini , dt_fim  )
         values ( CSF_OWN.paramipm_seq.nextval ,'15','Venda de energia el�trica adquirida de terceiros, realizada por estabelecimento gerador de energia el�trica por fonte hidr�ulica',24,to_date('01/01/2020','dd/mm/rrrr'), null );
   EXCEPTION
     WHEN OTHERS THEN
        NULL;
   END;
   -- 		 
   BEGIN
     insert into CSF_OWN.param_ipm( id , cod_ipm , descr , estado_id , dt_ini , dt_fim  )
         values ( CSF_OWN.paramipm_seq.nextval ,'16','Entrada da energia el�trica em estabelecimento gerador de energia el�trica por fonte hidr�ulica adquirida de terceiros, para comercializa��o.',24,to_date('01/01/2020','dd/mm/rrrr'), null );
   EXCEPTION
     WHEN OTHERS THEN
        NULL;
   END;
   -- 		 
   BEGIN
     insert into CSF_OWN.param_ipm( id , cod_ipm , descr , estado_id , dt_ini , dt_fim  )
         values ( CSF_OWN.paramipm_seq.nextval ,'17','�ndice de rateio do Valor Adicionado (VA) decorrente de Convenio ou Acordo entre munic�pios, mesmo que por ordem judicial.',24,to_date('01/01/2020','dd/mm/rrrr'), null );
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
Prompt FIM Redmine #75312 - Atualiza��o tabela param_ipm (SC)
--------------------------------------------------------------------------------------------------------------------------------------
 