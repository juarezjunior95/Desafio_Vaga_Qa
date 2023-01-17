# Automatizando dois cenários de teste para web com Robot Framework e Selenium

Um simples projeto para o desafio da Vaga Qa na Wlabs 

## Pre-requisitos de ambiente
Para o Robot acessar uma aplicaçao web, é preciso das instalações do: Robot, Phyton, SeleniumLibrary  e o ChromeDriver do Google, que é o Browser que usei nos testes.


## Instalação

​

O Robot Framework funciona com base na linguagem do Python. Por isso precisamos dele.

Acesse o site oficial : https://www.python.org/downloads/, e faça o download da última versão.
​

Ao executar o arquivo de instalação, marcar a opção “Add python X.Y to PATH” (Onde X.Y é a versão do python escolhida) e escolher a opção “Customize installation”.


​![image](https://user-images.githubusercontent.com/103469598/212911955-5e676b9d-be5f-41d6-bdb8-b723e1ef7658.png)

Clicar em Next

![image](https://user-images.githubusercontent.com/103469598/212912192-f813fdc2-d748-4056-977c-4d390b3ea376.png)

Marcar a opção “Install for all users”, no “Customize install location” colocar: c:\Phyton e clicar no Install.
![image](https://user-images.githubusercontent.com/103469598/212912294-50504f56-d2e4-4ca7-8eef-cbecd28213ba.png)

Pronto. Esta fase concluída !

Passo 2: Instalação do ChromeDriver
Utilizaremos ele para acessar o Google Chrome.

Primeiro precisamos saber qual é a versão do seu Google Chrome. No canto superior direito tem os “tres pontinos”, clique nele e vá até a opção “Help”. Após escolha “About Google Chrome”.

![image](https://user-images.githubusercontent.com/103469598/212912720-8f7bc2ec-80aa-4100-a339-25ba72d11d1d.png)

Aqui você descobre a versão do Browser. Neste exemplo é a 190.0.

![image](https://user-images.githubusercontent.com/103469598/212912941-a322eac4-2612-409e-8267-ef7bbec9022f.png)

Vá no site: https://chromedriver.chromium.org/downloads e faça o download do drive do GoogleDrive da versão do seu Chrome. Neste exemplo iremos escolher o 90.0.

![image](https://user-images.githubusercontent.com/103469598/212913449-c1997244-d283-46d9-899d-0b7d8c1440b3.png)

Não é obrigatório, mas para evitar alguns erros, salve o ChromeDrive na pasta Scripts dentro da pasta Phyton39. E descompacte.

![image](https://user-images.githubusercontent.com/103469598/212913567-bcc5f23c-066c-430c-be06-0c2023e3fe06.png)


Passo 3: Instalação do Robot Framework e da SeleniumLibrary
Abra o prompt de comando do windons e digite o comando: pip install robotframework e aperte a tecla ENTER.

![image](https://user-images.githubusercontent.com/103469598/212913755-9d15aa1a-ed2f-48af-8345-9f3449bd7700.png)

Após a instalação do robot ser completada, digite o comando: pip install robotframework-seleniumlibrary e aperte a tecla ENTER para a instalação do SeleniumLibary

![image](https://user-images.githubusercontent.com/103469598/212913904-cde0d1f7-261b-4ae4-9648-fbeed5030249.png)

E voilà, instalações do Robot, Phyton, SeleniumLibrary e o ChromeDriver finalizados !

Bonus: Instalação do VS Code
Para qualquer criação de scripts de automação, fica muito mais fácil usando um ótimo editor de código-fonte. E neste caso, eu sugiro o VS Code.

Acesse o site https://code.visualstudio.com/ e faça o download do instalador do VS code.
![image](https://user-images.githubusercontent.com/103469598/212914089-a764f06b-2435-4002-b61b-9881c8da00ea.png)

Um dos pontos positivos do VS code é que podemos instalar extensões para nos ajudar nas criações dos scripts.
![image](https://user-images.githubusercontent.com/103469598/212914230-41272b46-d7b4-4349-beb2-caab8f9404c9.png)

Eu sugiro, dentre várias, essas 3 extensões: Robot Framework Intellisense, Dracula Official e Material Icon Theme.

Para nós ajudar, com sugestões dos comandos, cores no código, ícones para os arquivos, respectivamente.
![image](https://user-images.githubusercontent.com/103469598/212914359-f4443ea2-a8d3-407d-886e-57fdc4ce6ab8.png)

Ambiente Pronto



## Estrutura do código

A estrutura do script é simples e pode ser dividida em 4 seções:


### *** Settings ***

Aqui é onde você configura as bibliotecas que serão utilizadas, caminhos para arquivos auxiliares (page objects por exemplo), contextos e hooks.


### *** Variables ***

Lista das variáveis a serem usadas (de preferência com descrição) e definição dos valores de algumas dessas variáveis.


### *** Test Cases ***

Esta é a seção mais importante, pois sem ela seu teste não roda. É aqui que ficam os cenários/casos de teste, com ou sem implementação.


### *** Keywords ***

Aqui você pode definir palavras chave ou implementar os cenários de teste descritos acima.

Todas as seções acima são opcionais, dependendo de como seu código foi escrito, exceto a *** Test Cases ***. Aconselho a usá-las sempre para uma melhor organização do código.

Os rótulos abaixo não são obrigatórios, mas também ajudam na organização.


## Como Executar os Testes Com Robot Framework

Clique com botão direito do mouse na pasta “Desafio Wlabs” e selecione “New Folder” e crie uma sub-pasta com o nome “tests” e depois outra pasta "Resources":

![image](https://user-images.githubusercontent.com/103469598/212918737-ca3a417b-4b82-48b2-a9f6-43ac9034bc0e.png)


Clique com botão direito do mouse na sub-pasta “Resources” e selecione a opção “New File”, dentro dela crie um arquivo com o nome resources.robot:

![image](https://user-images.githubusercontent.com/103469598/212919882-d6f69b7c-ee0c-4a49-bac1-29e5e4df3af9.png)

Nesse arquivo é onde definimos as configurações básicas que serão usadas no nosso teste:

![image](https://user-images.githubusercontent.com/103469598/212920674-4d66fa1d-cd4a-4df8-a989-850f11d8993b.png)

Verificar Header da Pagina: É uma palavra-chave que foi criada com o intuito identificar os textos na pagina de inicio;

Wait Until Page Contains: É usado para verificar textos que estão na pagina;

Input Text: É usado para inserir valor no campo;

Click Element : É usado para clicar em um determinado elemento;

O Robot Framework bem intuitivo



Clique novamente com o botão direito do mouse na pasta tests e selecione “New File”, crie outro arquivo com o nome BuscandoCep.robot:


![image](https://user-images.githubusercontent.com/103469598/212921235-802abf26-d7e7-4bef-8ef2-c837fdba9d93.png)

Dentro do arquivo BuscandoCep.robot são criados os cenários de testes:

![image](https://user-images.githubusercontent.com/103469598/212922310-d7282926-66cc-4686-a1cc-d93902bea450.png)

Resource: Nele é feito a importação do arquivo basePage.robot, que contêm as configurações básicas do teste, dessa forma o arquivo login.robot vai herdar os Keywords e as suas variáveis;

Test Setup: Tudo que estiver dentro dessa palavra-chave, será executado antes de cada caso de teste;

Test Teardown: Essa palavra-chave é o oposto da anterior, tudo que estiver dentro dessa palavra-chave será executado após cada caso de teste;

Para executar os testes criamos a sessão ***Test Cases*** onde escrevemos o nome do nosso test e damos um ENTER e depois um TAB para chamar dentro dos textos as *Palavras Chaves*
criadas no arquivo nas ***Keywords***

**Agora só executar os testes clicando no botão executar*

![image](https://user-images.githubusercontent.com/103469598/212928650-99a96ff6-c328-44a3-9cbf-ec743a540595.png)

Após os testes serem realizados será criada uma pasta chamada "results" com os arquivos : log , report , e o print do test.

![image](https://user-images.githubusercontent.com/103469598/212930018-963fe326-3c48-47a5-a04f-2176702d3d39.png)


Agora vamos analisar os logs basta clicar no arquivo log.html 

![image](https://user-images.githubusercontent.com/103469598/212930233-92212848-b2b1-4a9f-b83c-9ea5a77405e1.png)


Portanto é possível enxergar a facilidade de criar scripts de testes automatizados utilizando Robot Framework.









































