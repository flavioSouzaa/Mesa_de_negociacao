#language: pt

Funcionalidade: Registrar a informacoes do atendimento receptivo

    COMO um representante cadastrado
    QUERO realizar a consulta da margem
    PARA certificar que o calculo esta sendo realizado com sucesso 

    @mesa_negociacao_consultar_valor_margem
    Cenário: Mesa de negociacao consultar valor da margem
        Dado que eu acesso a pagina de login
        E entre com usuario e senha de acesso 
        E eu clico em ok
        E clico em atendimento Mesa de negociacao        
        E informo o valor da margem e clico em simular
        E verifico margem considerada
        Quando informo outro valor da margem e clico em simular
        Então o valor da margem deve ser diferente do valor anterior

   
