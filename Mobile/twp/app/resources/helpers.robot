***Settings ***
Documentation    Aqui temos os Keywords Kelpers.


*** Variables***
${start}                    COMEÇAR
${hamburger}                xpath=//android.widget.ImageButton[@content-desc="Open navigation drawer"]
${frame}                    id=io.qaninja.android.twp:id/navView
${CPF}          xpath=//android.widget.EditText[contains(@text,'CPF')]
${SENHA}        xpath=//android.widget.EditText[contains(@text,'Senha')]  
${BOTAO}        xpath=//android.widget.TextView[contains(@text,'Entrar')]
${TECLADO}      xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout
${BTNSAIR}      xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[2]/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.widget.ScrollView/android.view.ViewGroup/android.view.ViewGroup[3]
${BTNENTRAR}    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[2]/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.widget.ScrollView/android.view.ViewGroup/android.view.ViewGroup[2]/android.widget.ImageView 
${BTNTECLADO}   xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[2]/android.view.ViewGroup/android.view.ViewGroup/android.widget.FrameLayout/android.widget.FrameLayout/android.view.ViewGroup[1]/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[1]/android.view.ViewGroup

***Keywords***
Get Started
    Wait Until Page Contains            ${start}                    
    Click Text                          ${start}
    
Open nav
    Wait Until Element Is Visible       ${hamburger}       
    Click Element                       ${hamburger}
    Wait Until Element Is Visible       ${frame}   
Go To Login Form
    Open nav
    Click Text        FORMS
    Wait Until Page Contains          FORMS
    Click Text             LOGIN
    Wait Until Page Contains        Fala QA, vamos testar o login?

Go To Spinner
    Open nav
    Click Text        FORMS
    Wait Until Page Contains          FORMS
    Click Text              CADASTRO
    Wait Until Page Contains        Bem-vindo, crie sua conta.

Go To Avengers List
    Open nav
    Click Text        AVENGERS
    Wait Until Page Contains          AVENGERS
    
    Click Text                       LISTA
    Wait Until Page Contains         LISTA

Go To RadionButton
   Open nav
   Click Text                      INPUTS
   Wait Until Page Contains        INPUTS
   Click Text                      BOTÕES DE RADIO
   Wait Until Page Contains        Escolha sua linguagem preferida

Go To CheckBox
   Open nav
   Click Text                        INPUTS
   Wait Until Page Contains          INPUTS
   Click Text                        CHECKBOX
   Wait Until Page Contains          Marque as techs que usam Appium
Go To Clique Simples
    Open nav
    Click Text          BOTÕES
    Wait Until Page Contains       CLIQUE SIMPLES
    Click Text                     CLIQUE SIMPLES
    Wait Until Page Contains       Botão clique simples

Go To Clique Longo
    Open nav
    Click Text          BOTÕES
    Wait Until Page Contains       CLIQUE LONGO
    Click Text                     CLIQUE LONGO
    Wait Until Page Contains       Botão clique longo
    