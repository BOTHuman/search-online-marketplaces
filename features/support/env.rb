require 'selenium-webdriver'
require 'capybara'
require 'cucumber'
require 'capybara/dsl'
require 'rspec'

Capybara.register_driver :chrome do |app|
	Capybara::Selenium::Driver.new(app, browser: :chrome)
end

Capybara.register_driver :firefox do |app|
	Capybara::Selenium::Driver.new(app, browser: :firefox)
end

Capybara.configure do |config|
  config.run_server = false
  config.default_driver = :chrome
end

# Resize window
window = Capybara.current_session.driver.browser.manage.window
window.resize_to(1366, 768)

Capybara.default_max_wait_time = 10
