require 'rugged'
require 'poper/runner'
require 'poper/rule'
Dir[File.expand_path('lib/poper/rules/*.rb')].each do |file|
    require file
end
