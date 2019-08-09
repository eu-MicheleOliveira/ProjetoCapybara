
require 'capybara/cucumber'
require 'selenium-webdriver'

Capybara.register_driver :selenium do |app|
    option = ::Selenium::WebDriver::Chrome::Options.new(args: ['--start-maximized', '--disable-infobars' ] )
    Capybara::Selenium::Driver.new(app, browser: :chrome, options: option)
  end

Capybara.configure do |config|
    #selenium    selenium_chrome  selenium_chrome_healess
    config.default_driver = :selenium_chrome
    

    #colocando url padrao
    config.app_host = 'https://automacaocombatista.herokuapp.com'
    config.default_max_wait_time = 5


end
