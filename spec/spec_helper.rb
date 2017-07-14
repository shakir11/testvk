# frozen-string-literal: true
require 'codeclimate-test-reporter'
CodeClimate::TestReporter.start

require 'rspec'
require 'capybara/rspec'
require 'capybara/dsl'
require 'selenium-webdriver'
require 'byebug'

# loading page object files
page_paths  = File.join(Dir.pwd, 'spec', 'pages', '**', '*.rb')
Dir.glob(page_paths).each { |file| require file }

Capybara.register_driver :chrome do |app|
  Capybara::Selenium::Driver.new(app, browser: :chrome)
end

Capybara.default_driver = :chrome
Capybara.app_host = 'https://vk.com/'

Capybara.default_max_wait_time = 10

RSpec.configure do |config|
  config.before(:each) do
    config.include Capybara::DSL
  end
end

LOGIN = '-----@gmail.com'
PASSWORD = '-----'
