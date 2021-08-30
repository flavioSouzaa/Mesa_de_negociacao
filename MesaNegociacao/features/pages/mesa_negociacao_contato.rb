class MesaNegociacaoContato < SitePrism::Page
 
    element :mostrar_todos_telefones_radio, '#ctl00_ContentPlaceHolder1_WebUserControlCallCenter_TabContainer1_TabPanelTelefones_RadioButtonListTelefones_0'
    element :btn_chamar, '#ctl00_ContentPlaceHolder1_WebUserControlCallCenter_TabContainer1_TabPanelTelefones_AndroideGridViewTelefones_ctl03_BtnSelecionarTelefone'

    def seleciona_telefone
        mostrar_todos_telefones_radio.click
    end

    def clicar_chamar
        btn_chamar.click
    end
end