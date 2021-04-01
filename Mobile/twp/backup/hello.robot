***Settings***

Library      hello.py

#Semicodeless

***Test Cases ***
Deve Visualizar a Menssagem
    ${resultado}=   Hello_Robot             Rafael
    Should Be Equal      ${resultado}      Olá,Rafael. 
    Log To Console          ${resultado}

  