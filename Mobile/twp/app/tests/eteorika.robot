***Settings ***
#Library         AppiumLibrary
Resource       ../resources/base.robot

***Test Cases***
Open Session
    Set Appium Timeout      5
    Open Application         http://localhost:4723/wd/hub
    ...                      automationName=UiAutomator2
    ...                      platformName=Android
    ...                      deviceName=Android Emulator
    ...                      app=${EXECDIR}/eteorika.apk
Login   
    Wait Until Page Contains           Bem Vindo ao e-TEÓRIKA Aula Virtual
    Wait Until Element Is Visible      class=android.widget.Spinner  
    Click Element                      id=android:id/text1
    Wait Until Element Is Visible      class=android.widget.CheckedTextView 
    Click Text                         Bahia
    Input Text                         ${CPF}       386.493.358-70
    Click Text                         Senha
    Input Text                         ${SENHA}       aa123456                             
    
    Click Element                          ${TECLADO}
    Wait Until Element Is Visible          ${BOTAO}  
    Click Text                             Entrar
    Wait Until Page Contains                NÃO EXISTE VIDEOAULA AGENDADA NESTE MOMENTO
  
Validando Nome Aluno
     Wait Until Page Contains          RAFAEL MORAES

Validando CPF Aluno
    Wait Until Page Contains           386.493.358-70
    
#Botao SAIR
   #  Click Element                     ${BTNSAIR}
   #  Capture Page Screenshot
     
#Botao X     
     #Click Element                      class=android.widget.TextView
     #Capture Page Screenshot
#Fechando a Aplicacao   
   # Close Application

Botao Entrar
      Sleep         5
      Wait Until Page Contains     CLIQUE EM ENTRAR, CAPTURE A FOTO E ENTRE NA SALA VIRTUAL. AGUARDE O INÍCIO DA VIDEOAULA
      
      Click Element             id=com.android.packageinstaller:id/permission_message
      Click Text                ALLOW  
      Click Text                ALLOW 
      Click Text                ALLOW 
      Click Text                ALLOW 

      Click Element             id=android:id/message