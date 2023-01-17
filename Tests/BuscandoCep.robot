*** Settings ***
Resource            ../Resources/resources.robot



*** Test Cases ***

Cenario 1 Cep Valido
    Abrir navegador
    Verificar Header Da Pagina Home
    Buscar Cep Valido
    Endereço Valido Deve Ser Visto Pelo Usuario
    Fechar Navegador

Cenario 2 Cep Invalido
    Abrir navegador
    Verificar Header Da Pagina Home
    Buscar Cep Invalido
    Mensagem De Erro Ao Procurar O Cep Invalido 
    Fechar Navegador  