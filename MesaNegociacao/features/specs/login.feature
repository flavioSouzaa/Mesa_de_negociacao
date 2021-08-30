#language: pt

Funcionalidade: Realizar login no Representante Online

    COMO um representante cadastrado
    QUERO acessar a home page do representante online
    PARA ter acesso às suas funcionalidades

    @login
    Cenário: Acessar Home Page Representante Online
        Dado que eu acesso a pagina de login
        E entre com usuario e senha de acesso       
        Quando eu clico em ok
        Então sou direcionado para homepage do Representante Online