*** Settings ***
Library     SeleniumLibrary

*** Variables *** 
${url}                   https://gestorpedagogico.grupocriar.com.br/livro/dashboard     

*** Keywords
Inicio Sessao
            Open Browser                     ${url}               chrome
            Set Window Size		            	1200		800

Encerra Sessao
            # Capture Page Screenshot
            Close Browser 
            Close Browser 
