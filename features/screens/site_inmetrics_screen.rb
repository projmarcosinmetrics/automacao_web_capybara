require 'capybara/cucumber'
require "selenium-webdriver"

class InmetricsScreen
	include Rack::Test::Methods
	include PeterScreenObjects
	include SiteInmetricsScreenObjects
	include Capybara
	
end
