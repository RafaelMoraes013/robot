***Settings***
Resource      ../resources/base.robot


Test Setup         Open Session
Test Teardown      Close Session

***Test Cases ***
Clique Simples
  [tags]  simples
  Go To Clique Simples

  Click Element    id=io.qaninja.android.twp:id/short_click
  Wait Until Page Contains    Isso é um clique simples

Clique Longo
  [tags]  long

  Go To Clique Longo

  Long Press    id=io.qaninja.android.twp:id/long_click       1000
  Wait Until Page Contains    CLIQUE LONGO OK


