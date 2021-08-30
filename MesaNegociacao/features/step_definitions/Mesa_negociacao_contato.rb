require 'watir'

  Dado('seleciono mostrar todos os telefones') do
    @app.mesa_negociacao_contato.seleciona_telefone
  end
  
  Dado('seleciono um telefone e clico em chamar') do
   @app.mesa_negociacao_contato.clicar_chamar
  end
  
  Dado('preencho os dados para finalizar o atendimento') do 
    #page.driver.browser.switch_to().window(page.driver.browser.window_handles.last)  
    page.driver.browser.switch_to.alert.accept
  end
  
  Então('o registro deve ser realizado com sucesso') do
    pending # Write code here that turns the phrase above into concrete actions
  end