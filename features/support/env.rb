require 'capybara'
require 'capybara/cucumber'
require 'rspec'
require 'selenium-webdriver'
require 'ffi'
require 'pry'
require 'cpf_faker'
require 'site_prism'
require 'httparty'

DATA = YAML.load_file("features/fixtures/data.yml")
MESSAGE_ASSERT = YAML.load_file("features/fixtures/messages.yml")

Capybara.register_driver :selenium_chrome do |app|
    chrome_options = Selenium::WebDriver::Chrome::Options.new.tap do |options|
      options.add_argument "--disable-gpu"
      options.add_argument "--no-sandbox"
      options.add_argument "--disable-site-isolation-trials"
      options.add_argument "allow-insecure-localhost"  # Ignore TLS/SSL errors on localhost
      options.add_argument "ignore-certificate-errors" # Ignore certificate related errors
    end
    Capybara::Selenium::Driver.new(app, browser: :chrome, options: chrome_options)
  end
  @driver = :selenium_chrome


Capybara.configure do |config|
  config.default_driver = @driver
  Capybara.page.driver.browser.manage.window.maximize
  Capybara.default_max_wait_time= 20
  config.app_host = "https://barrigareact.wcaquino.me"
end