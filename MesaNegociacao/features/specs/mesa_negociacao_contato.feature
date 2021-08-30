#language: pt

Funcionalidade: Registrar a informacoes do atendimento mesa de negociacao

    COMO um representante cadastrado
    QUERO realizar o atendimento ao cliente pela mesa de negociacao
    PARA registrar o atendimento realizado 

    @mesa_negociacao_contato
    Cenário: mesa de negociacao atendimento
        Dado que eu acesso a pagina de login
        E entre com usuario e senha de acesso 
        E eu clico em ok
        E clico em atendimento Mesa de negociacao
        E seleciono mostrar todos os telefones
        E seleciono um telefone e clico em chamar
        E preencho os dados para finalizar o atendimento       
        Então o registro deve ser realizado com sucesso

   
