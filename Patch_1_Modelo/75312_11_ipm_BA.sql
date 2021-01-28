-------------------------------------------------------------------------------------------------------------------------------
Prompt INI Redmine #75312 - Atualiza��o tabela param_ipm (BA)
-------------------------------------------------------------------------------------------------------------------------------
begin
   --   
   BEGIN
     insert into CSF_OWN.param_ipm( id , cod_ipm , descr , estado_id , dt_ini , dt_fim  )
         values ( CSF_OWN.paramipm_seq.nextval ,'BAE01','Aquisi��o de Servi�os de Transporte - valor cont�bil das entradas e aquisi��es de servi�o de transporte intermunicipal e/ou interestadual, por munic�pio baiano, proporcionalmente �s sa�das informadas, excluindo-se as opera��es dedut�veis',5,to_date('01/01/2018','dd/mm/rrrr'), null );
   EXCEPTION
     WHEN OTHERS THEN
        NULL;
   END;
   --
   BEGIN
     insert into CSF_OWN.param_ipm( id , cod_ipm , descr , estado_id , dt_ini , dt_fim  )
         values ( CSF_OWN.paramipm_seq.nextval ,'BAS01','Presta��o de Servi�os de Transporte - valor cont�bil das sa�das e presta��es de servi�o de transporte intermunicipal e/ou interestadual, por munic�pio baiano de in�cio (origem) da presta��o, excluindo-se as opera��es dedut�veis',5,to_date('01/01/2018','dd/mm/rrrr'), null );
   EXCEPTION
     WHEN OTHERS THEN
        NULL;
   END;
   --
   BEGIN
     insert into CSF_OWN.param_ipm( id , cod_ipm , descr , estado_id , dt_ini , dt_fim  )
         values ( CSF_OWN.paramipm_seq.nextval ,'BAE02','Aquisi��o de servi�os de Comunica��o/Telecomunica��o -  valor cont�bil das entradas e aquisi��es de servi�o de comunica��o, por munic�pio baiano, proporcionalmente �s sa�das, excluindo-se as opera��es dedut�veis',5,to_date('01/01/2018','dd/mm/rrrr'), null );
   EXCEPTION
     WHEN OTHERS THEN
        NULL;
   END;
   --
   BEGIN
     insert into CSF_OWN.param_ipm( id , cod_ipm , descr , estado_id , dt_ini , dt_fim  )
         values ( CSF_OWN.paramipm_seq.nextval ,'BAS02','Presta��o de servi�os de Comunica��o/Telecomunica��o - valor cont�bil das sa�das e presta��es de servi�o de comunica��o, por munic�pio baiano onde ocorreu a presta��o, excluindo-se as opera��es dedut�veis',5,to_date('01/01/2018','dd/mm/rrrr'), null );
   EXCEPTION
     WHEN OTHERS THEN
        NULL;
   END;
   --
   BEGIN
     insert into CSF_OWN.param_ipm( id , cod_ipm , descr , estado_id , dt_ini , dt_fim  )
         values ( CSF_OWN.paramipm_seq.nextval ,'BAE03','Gera��o e Distribui��o de Energia El�trica e �gua - Entradas - valor cont�bil das entradas  e insumos utilizados na gera��o e distribui��o de energia el�trica ou �gua, por munic�pio baiano, proporcionalmente �s sa�das, excluindo-se as opera��es dedut�veis',5,to_date('01/01/2018','dd/mm/rrrr'), null );
   EXCEPTION
     WHEN OTHERS THEN
        NULL;
   END;
   --
   BEGIN
     insert into CSF_OWN.param_ipm( id , cod_ipm , descr , estado_id , dt_ini , dt_fim  )
         values ( CSF_OWN.paramipm_seq.nextval ,'BAS03','Gera��o e Distribui��o de Energia El�trica e �gua - Sa�das - valor cont�bil das sa�das de gera��o e distribui��o de energia el�trica ou �gua, por munic�pio baiano onde ocorreu o fato gerador ou, no caso da distribui��o, por munic�pio baiano onde ocorreu o fornecimento, excluindo-se as opera��es dedut�veis',5,to_date('01/01/2018','dd/mm/rrrr'), null );
   EXCEPTION
     WHEN OTHERS THEN
        NULL;
   END;
   --
   BEGIN
     insert into CSF_OWN.param_ipm( id , cod_ipm , descr , estado_id , dt_ini , dt_fim  )
         values ( CSF_OWN.paramipm_seq.nextval ,'BAE04','Regimes Especiais - Entradas - valor cont�bil das entradas, por munic�pio baiano, para as empresas que possuem regime especial de escritura��o centralizada, excluindo-se as opera��es dedut�veis e observando o disposto no referido regime',5,to_date('01/01/2018','dd/mm/rrrr'), null );
   EXCEPTION
     WHEN OTHERS THEN
        NULL;
   END;
   --
   BEGIN
     insert into CSF_OWN.param_ipm( id , cod_ipm , descr , estado_id , dt_ini , dt_fim  )
         values ( CSF_OWN.paramipm_seq.nextval ,'BAS04','Regimes Especiais � Sa�das - valor cont�bil das sa�das, por munic�pio baiano de ocorr�ncia do fato gerador, para as empresas que possuem regime especial de escritura��o centralizada, excluindo-se as opera��es dedut�veis e observando o disposto no referido regime',5,to_date('01/01/2018','dd/mm/rrrr'), null );
   EXCEPTION
     WHEN OTHERS THEN
        NULL;
   END;
   --
   BEGIN
     insert into CSF_OWN.param_ipm( id , cod_ipm , descr , estado_id , dt_ini , dt_fim  )
         values ( CSF_OWN.paramipm_seq.nextval ,'BAE05','Exclus�es nas entradas - IPI e ICMS/ST - Informar, para o munic�pio de localiza��o do estabelecimento, a parcela do ICMS retido por substitui��o tribut�ria e a parcela do IPI que n�o integra a base de c�lculo do ICMS',5,to_date('01/01/2018','dd/mm/rrrr'), null );
   EXCEPTION
     WHEN OTHERS THEN
        NULL;
   END;
   --
   BEGIN
     insert into CSF_OWN.param_ipm( id , cod_ipm , descr , estado_id , dt_ini , dt_fim  )
         values ( CSF_OWN.paramipm_seq.nextval ,'BAS05','Exclus�es nas sa�das - IPI e ICMS/ST - Informar, para o munic�pio de localiza��o do estabelecimento, a parcela do ICMS retido por substitui��o tribut�ria e a parcela do IPI que n�o integre a base de c�lculo do ICMS',5,to_date('01/01/2018','dd/mm/rrrr'), null );
   EXCEPTION
     WHEN OTHERS THEN
        NULL;
   END;
   --
   BEGIN
     insert into CSF_OWN.param_ipm( id , cod_ipm , descr , estado_id , dt_ini , dt_fim  )
         values ( CSF_OWN.paramipm_seq.nextval ,'BAE06','Opera��es n�o dedut�veis nas entradas - Informar, para o munic�pio de localiza��o do estabelecimento, caso tenham ocorrido, as opera��es realizadas com os CFOPs gen�ricos 1949, 2949 e 3949, e que representem uma real movimenta��o econ�mica para a empresa, ou seja, gerem valor adicionado (agregado)',5,to_date('01/01/2018','dd/mm/rrrr'), null );
   EXCEPTION
     WHEN OTHERS THEN
        NULL;
   END;
   --
   BEGIN
     insert into CSF_OWN.param_ipm( id , cod_ipm , descr , estado_id , dt_ini , dt_fim  )
         values ( CSF_OWN.paramipm_seq.nextval ,'BAS06','Opera��es n�o dedut�veis nas sa�das - Informar, para o munic�pio de localiza��o do estabelecimento, caso tenham ocorrido, as opera��es realizadas com os CFOPs gen�ricos 5949, 6949 e 7949, e que representem uma real movimenta��o econ�mica para a empresa, ou seja, gerem valor adicionado (agregado)',5,to_date('01/01/2018','dd/mm/rrrr'), null );
   EXCEPTION
     WHEN OTHERS THEN
        NULL;
   END;
   --
   BEGIN
     insert into CSF_OWN.param_ipm( id , cod_ipm , descr , estado_id , dt_ini , dt_fim  )
         values ( CSF_OWN.paramipm_seq.nextval ,'BAE07','Aquisi��o de produto diferido - Eucalipto - valor das aquisi��es internas de EUCALIPTO oriundas de contribuintes n�o inscritos, inclusive do produtor rural pessoa f�sica inscrito, por munic�pio baiano de origem, acobertadas pelo regime de diferimento',5,to_date('01/01/2018','dd/mm/rrrr'), null );
   EXCEPTION
     WHEN OTHERS THEN
        NULL;
   END;
   --
   BEGIN
     insert into CSF_OWN.param_ipm( id , cod_ipm , descr , estado_id , dt_ini , dt_fim  )
         values ( CSF_OWN.paramipm_seq.nextval ,'BAE08','Aquisi��o de produto diferido - Animais vivos - valor das aquisi��es internas de GADO BOVINO, SU�NO, BUFALINO, ASININO, EQUINO E MUAR EM P�, oriundas de contribuintes n�o inscritos, inclusive do produtor rural pessoa f�sica inscrito, por munic�pio baiano de origem, acobertadas pelo regime de diferimento',5,to_date('01/01/2018','dd/mm/rrrr'), null );
   EXCEPTION
     WHEN OTHERS THEN
        NULL;
   END;
   --
   BEGIN
     insert into CSF_OWN.param_ipm( id , cod_ipm , descr , estado_id , dt_ini , dt_fim  )
         values ( CSF_OWN.paramipm_seq.nextval ,'BAE09','Aquisi��o de produto diferido - Leite fresco - valor das aquisi��es internas de LEITE FRESCO oriundas de contribuintes n�o inscritos, inclusive do produtor rural pessoa f�sica inscrito, por munic�pio baiano de origem, acobertadas pelo regime de diferimento',5,to_date('01/01/2018','dd/mm/rrrr'), null );
   EXCEPTION
     WHEN OTHERS THEN
        NULL;
   END;
   --
   BEGIN
     insert into CSF_OWN.param_ipm( id , cod_ipm , descr , estado_id , dt_ini , dt_fim  )
         values ( CSF_OWN.paramipm_seq.nextval ,'BAE10','Aquisi��o de produto diferido - Mariscos/Peixes - valor das aquisi��es internas de LAGOSTA, CAMAR�ES E PEIXES, oriundas de contribuintes n�o inscritos, por munic�pio baiano de origem, acobertadas pelo regime de diferimento',5,to_date('01/01/2018','dd/mm/rrrr'), null );
   EXCEPTION
     WHEN OTHERS THEN
        NULL;
   END;
   --
   BEGIN
     insert into CSF_OWN.param_ipm( id , cod_ipm , descr , estado_id , dt_ini , dt_fim  )
         values ( CSF_OWN.paramipm_seq.nextval ,'BAE11','Aquisi��o de produto diferido - Sucatas - valor das aquisi��es internas de SUCATAS MET�LICAS, SUCATAS N�O MET�LICAS, SUCATAS DE ALUM�NIO, FRAGMENTOS, RETALHOS DE PLASTICOS E TECIDOS, SUCATAS DE PNEUS E BORRACHAS � RECICL�VEIS, oriundas de contribuintes n�o inscritos, inclusive do produtor rural pessoa f�sica inscrito, por munic�pio baiano de origem, acobertadas pelo regime de diferimento',5,to_date('01/01/2018','dd/mm/rrrr'), null );
   EXCEPTION
     WHEN OTHERS THEN
        NULL;
   END;
   --
   BEGIN
     insert into CSF_OWN.param_ipm( id , cod_ipm , descr , estado_id , dt_ini , dt_fim  )
         values ( CSF_OWN.paramipm_seq.nextval ,'BAE12','Aquisi��o de produto diferido - Couros e Peles - valor das aquisi��es internas de COUROS E PELES, oriundas de contribuintes n�o inscritos, inclusive do produtor rural pessoa f�sica inscrito, por munic�pio baiano de origem, acobertadas pelo regime de diferimento',5,to_date('01/01/2018','dd/mm/rrrr'), null );
   EXCEPTION
     WHEN OTHERS THEN
        NULL;
   END;
   --
   BEGIN
     insert into CSF_OWN.param_ipm( id , cod_ipm , descr , estado_id , dt_ini , dt_fim  )
         values ( CSF_OWN.paramipm_seq.nextval ,'BAE13','Aquisi��o de produto diferido - Materiais para combust�o - valor das aquisi��es internas de LENHA E OUTROS MATERIAIS PARA COMBUST�O INDUSTRIAL, oriundas de contribuintes n�o inscritos, inclusive do produtor rural pessoa f�sica inscrito, por munic�pio baiano de origem, acobertadas pelo regime de diferimento',5,to_date('01/01/2018','dd/mm/rrrr'), null );
   EXCEPTION
     WHEN OTHERS THEN
        NULL;
   END;
   --
   BEGIN
     insert into CSF_OWN.param_ipm( id , cod_ipm , descr , estado_id , dt_ini , dt_fim  )
         values ( CSF_OWN.paramipm_seq.nextval ,'BAE14','Aquisi��o de produto diferido - Embalagens e insumos - valor das aquisi��es internas de EMBALAGENS E INSUMOS oriundas de contribuintes n�o inscritos, inclusive do produtor rural pessoa f�sica inscrito, por munic�pio baiano de origem, acobertadas pelo regime de diferimento',5,to_date('01/01/2018','dd/mm/rrrr'), null );
   EXCEPTION
     WHEN OTHERS THEN
        NULL;
   END;
   --
   BEGIN
     insert into CSF_OWN.param_ipm( id , cod_ipm , descr , estado_id , dt_ini , dt_fim  )
         values ( CSF_OWN.paramipm_seq.nextval ,'BAE15','Aquisi��o de produto diferido - Cravo da �ndia - valor das aquisi��es internas de CRAVO DA �NDIA, oriundas de contribuintes n�o inscritos, inclusive do produtor rural pessoa f�sica inscrito, por munic�pio baiano de origem, acobertadas pelo regime de diferimento',5,to_date('01/01/2018','dd/mm/rrrr'), null );
   EXCEPTION
     WHEN OTHERS THEN
        NULL;
   END;
   --
   BEGIN
     insert into CSF_OWN.param_ipm( id , cod_ipm , descr , estado_id , dt_ini , dt_fim  )
         values ( CSF_OWN.paramipm_seq.nextval ,'BAE16','Aquisi��o de produto diferido - Bambu - valor das aquisi��es internas de BAMBU, oriundas de contribuintes n�o inscritos, inclusive do produtor rural pessoa f�sica inscrito, por munic�pio baiano de origem, acobertadas pelo regime de diferimento',5,to_date('01/01/2018','dd/mm/rrrr'), null );
   EXCEPTION
     WHEN OTHERS THEN
        NULL;
   END;
   --
   BEGIN
     insert into CSF_OWN.param_ipm( id , cod_ipm , descr , estado_id , dt_ini , dt_fim  )
         values ( CSF_OWN.paramipm_seq.nextval ,'BAE17','Aquisi��o de produto diferido - Res�duo papel/papel�o - valor das aquisi��es internas de RES�DUOS DE PAPEL E PAPEL�O, oriundas de contribuintes n�o inscritos, inclusive do produtor rural pessoa f�sica inscrito, por munic�pio baiano de origem, acobertadas pelo regime de diferimento',5,to_date('01/01/2018','dd/mm/rrrr'), null );
   EXCEPTION
     WHEN OTHERS THEN
        NULL;
   END;
   --   
   BEGIN
     insert into CSF_OWN.param_ipm( id , cod_ipm , descr , estado_id , dt_ini , dt_fim  )
         values ( CSF_OWN.paramipm_seq.nextval ,'BAE18','Aquisi��o de produto diferido - Sebo, osso, chifre e casco - valor das aquisi��es internas de SEBO, OSSOS, CHIFRES E CASCO, oriundas de contribuintes n�o inscritos, inclusive do produtor rural pessoa f�sica inscrito, por munic�pio baiano de origem, acobertadas pelo regime de diferimento',5,to_date('01/01/2018','dd/mm/rrrr'), null );
   EXCEPTION
     WHEN OTHERS THEN
        NULL;
   END;
   --   
   BEGIN
     insert into CSF_OWN.param_ipm( id , cod_ipm , descr , estado_id , dt_ini , dt_fim  )
         values ( CSF_OWN.paramipm_seq.nextval ,'BAE19','Aquisi��o de produto diferido - Argila - valor das aquisi��es internas de ARGILA, oriundas de contribuintes n�o inscritos, inclusive do produtor rural pessoa f�sica inscrito, por munic�pio baiano de origem, acobertadas pelo regime de diferimento',5,to_date('01/01/2018','dd/mm/rrrr'), null );
   EXCEPTION
     WHEN OTHERS THEN
        NULL;
   END;
   --   
   BEGIN
     insert into CSF_OWN.param_ipm( id , cod_ipm , descr , estado_id , dt_ini , dt_fim  )
         values ( CSF_OWN.paramipm_seq.nextval ,'BAE20','Aquisi��o de produto diferido - Outros - valor das aquisi��es internas de outros produtos n�o especificados nas linhas anteriores, oriundas de contribuintes n�o inscritos, inclusive do produtor rural pessoa f�sica inscrito, por munic�pio baiano de origem, acobertadas pelo regime de diferimento',5,to_date('01/01/2018','dd/mm/rrrr'), null );
   EXCEPTION
     WHEN OTHERS THEN
        NULL;
   END;
   --   
   BEGIN
     insert into CSF_OWN.param_ipm( id , cod_ipm , descr , estado_id , dt_ini , dt_fim  )
         values ( CSF_OWN.paramipm_seq.nextval ,'BAE99','Outros ajustes nas entradas - outros ajustes espec�ficos determinados pela Sefaz BA',5,to_date('01/01/2018','dd/mm/rrrr'), null );
   EXCEPTION
     WHEN OTHERS THEN
        NULL;
   END;
   --   
   BEGIN
     insert into CSF_OWN.param_ipm( id , cod_ipm , descr , estado_id , dt_ini , dt_fim  )
         values ( CSF_OWN.paramipm_seq.nextval ,'BAS99','Outros ajustes nas sa�das - outros ajustes espec�ficos determinados pela Sefaz BA',5,to_date('01/01/2018','dd/mm/rrrr'), null );
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
Prompt FIM Redmine #75312 - Atualiza��o tabela param_ipm (BA)
--------------------------------------------------------------------------------------------------------------------------------------
 