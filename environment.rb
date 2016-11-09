require 'yaml'

class Environment
  def do_with_setup &block
    setup
    yield block
  end

  def setup
    require_core
    require_web
    setup_persistance
  end

  def setup_persistance
    require_persistance
    connect_to_database
  end

  private

  def require_all_in path
    Dir["#{File.dirname(__FILE__)}/#{path}/**/*.rb"].each { |file| require file }
  end

  def require_web
    require 'haml'
    require 'sinatra/base'
    require_all_in 'web'
  end

  def require_persistance
    require 'active_record'
    require_all_in 'persistence'
  end

  def require_core
    require_all_in 'core'
  end

  def connect_to_database
    database = YAML.load_file('db/config.yml')
    ActiveRecord::Base.establish_connection database[ENV['PROFILE']]
  end
end
