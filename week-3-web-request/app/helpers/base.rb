require 'sinatra/base'
require_relative '../../config/initializer'

module Site::Helpers::Base
  def active_class(path)
    path == request.path ? "active" : ''
  end
end