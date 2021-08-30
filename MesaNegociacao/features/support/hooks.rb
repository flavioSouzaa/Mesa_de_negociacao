Before do 
    @app = App.new 
end

After do |scenario|
    @t = Time.now.strftime("%H-%M-%S")
    @pasta = Time.now.strftime("%d%b%y")

    test_name =  scenario.name.gsub(/[^A-Za-z0-9 ]/,'').tr(' ', '_')
    
    page.save_screenshot("screenshots/#{@pasta.to_s}/#{@t.to_s}_#{test_name}.png")     
end