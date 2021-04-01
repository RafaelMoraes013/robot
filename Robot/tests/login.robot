*** Settings ***
Resource                            base.robot


Test Setup                            Inicio Sessao
Test Teardown                         Encerra Sessao


***Test Cases ***
Login com sucesso E-Teorika
        Go To                             ${url}/site/login/e-teorika
        
        Set Selenium Implicit Wait          5
                          
        Select From List By Label         id:entidade             CFC
        Select From List By Label         id:local                 MA
        Input Text                        id:usuario               maranhao@cfctreinamento
        Input Text                        id:senha                 123456

        Click Element                      class:btn
        Set Selenium Implicit Wait          5
        Element Should Contain             css:div[class=col-md-12]             Bem Vindo

Login invalido  

        Go To                             ${url}/site/login/e-teorika
        Set Selenium Implicit Wait          5
                          
        Select From List By Label         id:entidade             CFC
        Select From List By Label         id:local                 MA
        Input Text                        id:usuario               maranhao@cfctreinamento
        Input Text                        id:senha                 1234567

        Click Element                     class:btn
        
        Page Should Contain                Usuário ou senha inválidos.