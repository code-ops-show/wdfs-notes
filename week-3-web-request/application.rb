require 'sinatra'
require 'sinatra/assetpack'
require 'pony'

require_relative 'config/initializer'

require_relative 'app/helpers/base'

require_relative 'app/routes/pages'
require_relative 'app/routes/messages'

module Site
  class Application < Sinatra::Application
    set :root, File.join(File.dirname(__FILE__), 'app') # You must set app root

    register Sinatra::AssetPack

    assets {
      serve '/javascripts', from: 'assets/javascripts'  # Default
      serve '/stylesheets', from: 'assets/stylesheets'  # Default
      serve '/images',      from: 'assets/images'       # Default

      # The second parameter defines where the compressed version will be served.
      # (Note: that parameter is optional, AssetPack will figure it out.)
      js :application, '/javascripts/application.js', [
        '/javascripts/vendor/jquery.js',
        '/javascripts/vendor/bootstrap.js',
        '/javascripts/base.js'
      ]

      css :application, '/stylesheets/application.css', [
        '/stylesheets/vendor/bootstrap.css',
        '/stylesheets/vendor/bootstrap-responsive.css',
        '/stylesheets/base.css'
      ]

      js_compression  :jsmin    # :jsmin | :yui | :closure | :uglify
      css_compression :simple   # :simple | :sass | :yui | :sqwish
    }

    helpers Site::Helpers::Base

    register Site::Routes::Pages
    register Site::Routes::Messages

    Pony.options = { to: 'admin@blah.com', 
                     via: :smtp,  
                     via_options: { 
                                    address: 'localhost', 
                                    port: '1025' 
                                  } 
                   }
  end
end