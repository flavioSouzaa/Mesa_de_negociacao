class MesaNegociacao < SitePrism::Page 

    set_url '/CallCenter.aspx'   
    
    element :valor_da_margem, '#ctl00_ContentPlaceHolder1_txtValorMargem'
    element :btn_simularMargem, '#ctl00_ContentPlaceHolder1_BtnSimular'   
    element :btn_mesa_negociacao, '#ctl00__MainMenun9 > td > table > tbody > tr > td > a'
    element :valor_margem, '#ctl00_ContentPlaceHolder1__TablesGridView > tbody > tr:nth-child(2) > td:nth-child(4)'
    
    def clica_mesa_negociacao   
       sleep 3     
       menu_simuladores = Capybara.page.driver.browser.find_element(xpath: '//*[@id="ctl00__MainMenun0"]/table/tbody/tr/td/a')
       Capybara.page.driver.browser.action.move_to(menu_simuladores, 25, 15).perform                
       btn_mesa_negociacao.click
       sleep 5
    end

    def valor_margem(data_margem) 
        valor_da_margem.set FrontData.get(data_margem)
        btn_simularMargem.click
    end

    def informar_valor_margem_befor
        valor_margem('element_valor_margem_befor')
    end

    def informar_valor_margem_after
        valor_margem('element_valor_margem_after')
    end   

end