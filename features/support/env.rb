require 'httparty'
require 'cucumber'
require 'mongo'
require 'cpf_cnpj'
require 'pry-byebug'
require 'securerandom'

env = ENV['env']
env = 'dev' if env.nil?
CONFIG = YAML.load_file(File.dirname(__FILE__) + "/config/#{env}.yml")
