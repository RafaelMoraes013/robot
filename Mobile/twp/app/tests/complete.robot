***Settings ***
#Library         AppiumLibrary
Resource       ../resources/base.robot

***Test Cases***
Open 
    Set Appium Timeout      10
    Open Application         http://localhost:4723/wd/hub
    ...                      automationName=UiAutomator2
    ...                      platformName=Android
    ...                      deviceName=Android Emulator
    ...                      app=${EXECDIR}/eteorika.apk
Login   
    Start Screen Recording
    Wait Until Page Contains           Bem Vindo ao e-TEÓRIKA Aula Virtual
    Wait Until Element Is Visible      class=android.widget.Spinner  
    Click Element                      id=android:id/text1
    Wait Until Element Is Visible      class=android.widget.CheckedTextView 
    Click Text                         Bahia
    Input Text                         ${CPF}       123.456.789-00
    Click Text                         Senha
    Input Text                         ${SENHA}       aa123456                             
    
    Click Element                          ${TECLADO}
    Wait Until Element Is Visible          ${BOTAO}  
    Click Text                             Entrar
    Wait Until Page Contains                VIDEOAULA EM ANDAMENTO.

Validando Nome Aluno
     Wait Until Page Contains          GUILHERME SEDASSARI

Validando CPF Aluno
    Wait Until Page Contains           123.456.789-00
    Capture Page Screenshot
#Botao SAIR
   #  Click Element                     ${BTNSAIR}
   #  Capture Page Screenshot
     
#Botao X     
     #Click Element                      class=android.widget.TextView
     #Capture Page Screenshot
#Fechando a Aplicacao   
   # Close Application

Botao Entrar
      
      Click Element                         ${BTNENTRAR}
      Wait Until Page Contains              Atenção
      Wait Until Element Is Visible         id=android:id/parentPanel
Botao Ok
      Click Element                         id=android:id/button1
      Wait Until Element Is Visible         class=android.view.ViewGroup
      Sleep         5
      Input Text                            xpath=//android.widget.EditText[contains(@text,'user@domain.com')]                ba3
      Input Text                            xpath=//android.widget.EditText[contains(@text,'user password')]                  xxxxxx          
      Wait Until Element Is Visible         class=android.view.ViewGroup
      
      Click Element                         ${BTNTECLADO}
      Sleep         5
      Click Element                         xpath=//android.widget.TextView[contains(@text,'Ok')]
      Sleep         5
     #Mensagem Allowed
      #Click Element                          id=com.android.packageinstaller:id/permission_allow_button
      
      Stop Screen Recording

Fechando a Aplicacao   
     Close Application
     

      #Click Element             id=com.android.packageinstaller:id/permission_message
     # Click Text                ALLOW  
     # Click Text                ALLOW 
      #Click Text                ALLOW 
     # Click Text                ALLOW 

      #Click Element             id=android:id/message