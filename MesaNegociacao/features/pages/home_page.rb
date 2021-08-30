class HomePage < SitePrism::Page    
    set_url '/Default.aspx'
   
    element :representante_id, '#ctl00_ContentPlaceHolder1_lblCodRepresentante'    
    element :aviso_banner,     '#ctl00_ContentPlaceHolder1_lblTituloAviso'   
  
end