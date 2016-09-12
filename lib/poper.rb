require 'rugged'
require 'poper/runner'
require 'poper/rule'
require 'poper/commit_message_validator'
Dir[File.expand_path('lib/poper/rules/*.rb')].each do |file|
    require file
end
