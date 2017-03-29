require 'capybara/cucumber'
require 'selenium-webdriver'
require 'uri'

# Tell FireFox to use proxy settings

  Capybara.register_driver :selenium do |app|
  profile = Selenium::WebDriver::Firefox::Profile.new
  profile.secure_ssl = false
  profile.assume_untrusted_certificate_issuer = false
  #Capybara::Driver::Webkit.new(app, :ignore_ssl_errors => true)
  Capybara::Selenium::Driver.new(app, :browser => :firefox, profile: profile)
  end


Capybara.default_driver = :selenium
Capybara.wait_on_first_by_default = true
Capybara.current_session.driver.browser.manage.window.maximize
Capybara.current_session.driver.browser.manage.delete_all_cookies
#Capybara.default_driver = :chrome
#Capybara.default_driver = :safari
Capybara.default_selector = :xpath
Capybara.default_max_wait_time = 30