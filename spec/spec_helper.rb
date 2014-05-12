ENV["RACK_ENV"] = "test"

require_relative '../boot'
require 'capybara/rspec'

Capybara.app = ClickerApp

RSpec.configure do |config|
  config.treat_symbols_as_metadata_keys_with_true_values = true
  config.run_all_when_everything_filtered = true
  config.filter_run :focus
  config.order = 'random'
end
