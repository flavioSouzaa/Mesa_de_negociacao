Dado('que eu acesso a pagina de login') do
    @app.login_page.load
  end

  Dado('entre com usuario e senha de acesso') do
    @app.login_page.realizar_login
  end 
                                                                                      
  Quando('eu clico em ok') do
    @app.login_page.acessar    
  end

  Então('sou direcionado para homepage do Representante Online') do
    expect(@app.home_page.representante_id.text).to eq(FrontMessage.get('usuario_autenticado'))
    expect(@app.home_page.aviso_banner.text).to eq(FrontMessage.get('mensagem_representante'))    
  end

