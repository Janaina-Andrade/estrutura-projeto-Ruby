#language: pt

Funcionalidade: Login

    Para que eu possa cadastrar e gerenciar minhas tarefas
    Sendo um usuário
    Posso acessar o sistema com meu email e senha previamente cadastrados.
    Contexto: Página principal
        Dado que eu acesso a página principal

    @logout
    Cenário: Usuário deve ser autorizado

        Quando eu faço login com 'andrade.janaina@ymail.com' e '123456'
        Entao devo ser autenticado com sucesso
        E devo ver a seguinte mensagem 'Olá, Janaina'

    Esquema do Cenario: Tentativa de login

    Quando eu faço login com "<email>" e "<senha>"
    Entao devo ver a seguinte mensagem "<alerta>"
    Exemplos:
    |email                    |senha  |alerta                     |
    |andrade.janaina@ymail.com|xpto123|Senha inválida.            |   
    |andrade.janaina@ymail.net|xpto123|Usuário não cadastrado.    | 
    |andrade.janainaymail.net|xpto123|Email incorreto ou ausente.|
    |                         |xpto123|Email incorreto ou ausente.|    