require 'sinatra/base'
require_relative '../../config/initializer'
require_relative '../models/message'

module Site::Routes::Messages
  def self.registered(app)
    app.post '/messages' do 
      message = Message.new(params[:email], params[:subject], params[:body])
      message.send
      redirect '/pages/contact'
    end
  end
end 
