***Settings***
Documentation            Documentation
Library                  SeleniumLibrary

*** Variables ***
${Base_URL}        https://apicep.com/api-de-consulta/
${Browser}         chrome
${Texto_ApiDeConsulta}        API de Consulta
${Sub_Texto}              Use jQuery ou outros métodos para implementar a busca de endereços atualizados por cep diretamente no seu sistema de cadastro.
${Botão_Buscar_Cep}    xpath=//a[@class='et_pb_button et_pb_button_0 et_pb_bg_layout_dark'][contains(.,'Buscar CEP')]
${Campo_Cep}           name=code
${Cep_Valido}          42803169
${Cep_Invalido}        0000001
${Botão_Buscar}        id=btnbuscarcep
${Endereço_Valido}     Rua Afrânio Peixoto, Alto da Cruz - Camaçari / BA
${Cep_Nao_Encontrado}    CEP não encontrado
*** Keywords ***    
Abrir Navegador
    Set Selenium Timeout    20
    Open Browser            ${Base_URL}                ${Browser}
    Maximize Browser Window
Fechar Navegador
    Sleep    5
    Close Browser

Verificar Header Da Pagina Home
    Wait Until Page Contains    ${Texto_ApiDeConsulta}
    Wait Until Page Contains    ${Sub_Texto}
Buscar Cep Valido
    Wait Until Element Is Visible    ${Botão_Buscar_Cep}
    Click Element                    ${Botão_Buscar_Cep}
    Wait Until Element Is Visible    ${Campo_Cep}
    Input Text    ${Campo_Cep}       ${Cep_Valido}

Endereço Valido Deve Ser Visto Pelo Usuario 
    Wait Until Element Is Visible    ${Botão_Buscar}
    Click Element                    ${Botão_Buscar}
    Wait Until Page Contains              ${Endereço_Valido}

Buscar Cep Invalido
    Wait Until Element Is Visible    ${Botão_Buscar_Cep}
    Click Element                    ${Botão_Buscar_Cep}
    Wait Until Element Is Visible    ${Campo_Cep}
    Input Text    ${Campo_Cep}       ${Cep_Invalido}

Mensagem De Erro Ao Procurar O Cep Invalido
    Wait Until Element Is Visible    ${Botão_Buscar}
    Click Element                    ${Botão_Buscar}
    Wait Until Page Contains         ${Cep_Nao_Encontrado}