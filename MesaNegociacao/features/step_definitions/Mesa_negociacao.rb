  Dado('clico em atendimento receptivo') do
    @app.mesa_negociacao.load      
  end
  
  Dado('clico em atendimento Mesa de negociacao') do
    @app.mesa_negociacao.clica_mesa_negociacao
  end
  
  Dado('informo o valor da margem e clico em simular') do
    @app.mesa_negociacao.informar_valor_margem_befor
    sleep 35    
  end
  
  Dado('verifico margem considerada') do
    @valor_margegem_befor =find('#ctl00_ContentPlaceHolder1__TablesGridView > tbody > tr:nth-child(2) > td:nth-child(4)').text    
  end
  
  Quando('informo outro valor da margem e clico em simular') do
    @app.mesa_negociacao.informar_valor_margem_after
    sleep 35
  end
  
  Então('o valor da margem deve ser diferente do valor anterior') do
    @valor_margegem_after =find('#ctl00_ContentPlaceHolder1__TablesGridView > tbody > tr:nth-child(2) > td:nth-child(4)').text    
    expect(@valor_margegem_befor).not_to eq(@valor_margegem_after)    
  end