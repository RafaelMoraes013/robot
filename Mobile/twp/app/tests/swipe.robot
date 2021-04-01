***Settings***
Resource      ../resources/base.robot


Test Setup         Open Session
Test Teardown      Close Session

***Variables***
${remove}           id=io.qaninja.android.twp:id/btnRemove

***Test Cases***
Deve remover o capitão America
   Go To Avengers List
   Swipe By Percent             89.81      19.63       57.59        19.47
   Wait Until Element Is Visible         ${remove}     
   Click Element                         ${remove}   
   Sleep                                     5

