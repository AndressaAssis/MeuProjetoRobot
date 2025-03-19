*** Settings ***
Library  SeleniumLibrary


*** Variables ***
${URL}       https://www.google.com
${BROWSER}   chrome
${FIREFOX}   Firefox

*** Test Cases ***

Teste 1 Abrir o Google e pesquisar
    [Documentation]  Este teste abre o Google, pesquisa "Robot Framework" 
    ...    verifica o resultado e sai da página.
    Open Browser    ${URL}    ${BROWSER}
    Input Text    name=q    Robot Framework
    Press Keys    name=q    ENTER
    Sleep    10s
    Wait Until Page Contains    Robot Framework
    Capture Page Screenshot
    Close Browser
     [Teardown]  Run Keyword If Test Failed  Executar Teste 2

*** Keywords ***

Executar Teste 2
    [Documentation]  Este teste abre o Firefox somente se o primeiro teste falhar , pesquisa "Robot Framework" 
    ...    verifica o resultado e sai da página.
    Open Browser    ${URL}    ${FIREFOX}
    Input Text    name=q    Robot Framework
    Press Keys    name=q    ENTER
    Sleep    15s
    Wait Until Page Contains    Robot Framework
    Capture Page Screenshot
    Close Browser



    