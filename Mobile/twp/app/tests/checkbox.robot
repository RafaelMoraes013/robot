***Settings***
Resource      ../resources/base.robot


Test Setup         Open Session
Test Teardown      Close Session

***Test Cases***
Deve selecionar a opção Robotframework
  Go To CheckBox

  ${element}=        Set Variable         xpath=//android.widget.CheckBox[contains(@text,'Robot Framework')]

  Click Element                       ${element}
  Wait Until Element Is Visible       id=io.qaninja.android.twp:id/radioButtonContainer
  Element Attribute Should Match      ${element}       checked     true 
  
 