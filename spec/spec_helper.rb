require 'rspec'
require 'rspec/its'
require 'poper'
require 'pry'

RSpec.configure do |config|
  config.expect_with(:rspec) { |c| c.syntax = :should }
  config.mock_with(:rspec) { |c| c.syntax = :should }
end
