***Settings***
Resource      ../resources/base.robot


Test Setup         Open Session
Test Teardown      Close Session

***Variables***
${Spinner}         id=io.qaninja.android.twp:id/spinnerJob
${ListView}        class=android.widget.ListView

***Test Cases ***
Selecione a opção QA
  Go To Spinner
  Choice Job    QA

Selecione a opção Desenvolvedor
  Go To Spinner
  Choice Job    Desenvolvedor


***Keywords ***
Choice Job
   [Arguments]    ${alvo}

  Click Element                      ${Spinner}
  Wait Until Element Is Visible      ${ListView}
  Click Text                         ${alvo}