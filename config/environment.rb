require "bundler/setup"

require "sinatra/activerecord"
require 'ostruct'
require 'date'
require_relative '../app/models/costume_store'
require_relative '../app/models/costume'
require_relative '../app/models/haunted_house'

Bundler.require

Dir[File.join(File.dirname(__FILE__), "../app/models", "*.rb")].each {|f| require f}

connection_details = YAML::load(File.open('config/database.yml'))
ActiveRecord::Base.establish_connection(connection_details)
