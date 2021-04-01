***Settings ***
Resource      ../resources/base.robot

Test Setup         Open Session
# Finaliza depois de cadas Teste
Test Teardown      Close Session


*** Variables***
${tollbar}             id=io.qaninja.android.twp:id/toolbarTitle

***Test Cases***
Deve abrir a tela Principal
    
    Open nav
    Click Text                       DIALOGS
    Wait Until Element Is Visible        ${tollbar}            
    Element Text Should Be               ${tollbar}              DIALOGS
    

Deve abrir a tela Formularios
    
    Open nav
    Click Text                         FORMS
    Wait Until Element Is Visible        ${tollbar}            
    Element Text Should Be               ${tollbar}               FORMS
    
Deve abrir a tela Avengers
    
    Open nav
    Click Text                         AVENGERS
    Wait Until Element Is Visible        ${tollbar}            
    Element Text Should Be               ${tollbar}               AVENGERS    
    
