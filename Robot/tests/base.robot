*** Settings
Library     SeleniumLibrary

*** Variables
${url}                   https://www.e-presenca.com.br     

*** Keywords
Inicio Sessao
            Open Browser                     ${url}              chrome
            Set Window Size		            	1200		800

Encerra Sessao
            Capture Page Screenshot
            Close Browser