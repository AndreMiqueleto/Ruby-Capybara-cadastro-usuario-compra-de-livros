require "allure-cucumber"
require "capybara"
require "capybara/cucumber"
require "cpf_faker"
require "faker"

CONFIG = YAML.load_file(File.join(Dir.pwd, "features/support/config/#{ENV["CONFIG"]}"))

case ENV["BROWSER"]
when "firefox"
  @driver = :selenium
when "chrome"
  @driver = :selenium_chrome
when "fire_headless"
  @driver = :selenium_headless
when "chrome_headless"
  @driver = :selenium_chrome_headless
else
  raise "Navegador incorreto :("
end

Capybara.javascript_driver = :chrome

Capybara.configure do |config|
  config.default_driver = @driver
  config.app_host = CONFIG["url"]
  config.default_max_wait_time = 15
end

AllureCucumber.configure do |config|
  config.results_directory = "/logs"
  config.clean_results_directory = true
end
