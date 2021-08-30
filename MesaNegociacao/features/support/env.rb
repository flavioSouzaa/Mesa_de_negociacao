require 'rspec'
require 'capybara'
require 'capybara/cucumber'
require 'site_prism'
require 'cucumber'
require 'selenium-webdriver'


#configura pra chamar o webdriver
Capybara.register_driver :site_prism do |app|
    
    options = Selenium::WebDriver::Chrome::Options.new
    options.add_argument('--ignore-certificate-errors')
    options.add_argument('--disable-popup-blocking')
    options.add_argument('--disable-translate')
    options.add_argument('--enable-logging')
    #options.add_argument('--headless') unless ENV['UI']  
    #options.add_argument("--disable-notifications")  
   
    Capybara::Selenium::Driver.new(app, browser: :chrome, options: options)

end


Capybara.configure do |config|
    config.run_server = false
    Capybara.default_driver = :site_prism
    Capybara.page.driver.browser.manage.window.maximize
    config.default_max_wait_time = 60
    config.app_host = 'http://carina.sabemi.com.br/sabemiDSV7/PORTAL/RepresentanteOnline'    
end