require 'rack/test'
require './environment'

ENV['PROFILE'] = 'test'

Environment.new.setup

load 'db/schema.rb'

module SinatraRspecMixin
  include Rack::Test::Methods
  def app
    Server 
  end
end
RSpec.configure { |c| c.include SinatraRspecMixin }
