class LoginPage < SitePrism::Page

    set_url '/Login.aspx'
   
    element :usuario_field, '#ctl00_ContentPlaceHolder1_txtUsuario'    
    element :senha_field,   '#ctl00_ContentPlaceHolder1_txtPassword'    
    element :ok_btn,        '#ctl00_ContentPlaceHolder1__LoginImageButton'

    def realizar_login
        usuario_field.set FrontData.get('usuario')
        senha_field.set   FrontData.get('senha')
    end

    def acessar
        ok_btn.click    
    end

end