require 'sinatra/base'
require_relative '../../config/initializer'

module Site::Routes::Pages
  def self.registered(app)
    app.get '/' do
      erb "pages/index".to_sym
    end

    app.get '/pages/:page' do |page|
      erb "pages/#{page}".to_sym
    end
  end
end