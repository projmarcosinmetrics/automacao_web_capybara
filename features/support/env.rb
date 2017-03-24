 require 'capybara/cucumber'
 require "selenium-webdriver"
 #require 'gherkin'

 Capybara.default_driver = :selenium
 Capybara.default_wait_time = 20
 Capybara.javascript_driver = :webkit

 Capybara.register_driver :selenium do |app|
     Capybara::Selenium::Driver.new(app, :browser => :chrome)
  end

 Capybara.default_driver = :selenium
