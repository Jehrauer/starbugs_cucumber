require 'capybara/cucumber'
require 'selenium-webdriver'

Cucumber::Term::ANSIColor.coloring = true

Capybara.configure do |config|
    config.default_driver = :selenium
    config.default_max_wait_time = 5
end