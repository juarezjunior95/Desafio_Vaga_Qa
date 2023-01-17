*** Settings ***
Resource            ../Resources/resources.robot
Test Setup          Abrir Navegador
Test Teardown       Fechar Navegador


*** Test Cases ***

Cenario 1 Cep Valido
    Verificar Header Da Pagina Home
    Buscar Cep Valido
    Endereço Valido Deve Ser Visto Pelo Usuario
    

Cenario 2 Cep Invalido
    Verificar Header Da Pagina Home
    Buscar Cep Invalido
    Mensagem De Erro Ao Procurar O Cep Invalido 
    