require 'sinatra'
require 'sendgrid-ruby'
require 'mongoid'
include SendGrid


# class Email
#   def send_email

#   end
# end


class Uniq < Sinatra::Base
    set  :environment, ENV['RACK_ENV']

    configure do
      enable :sessions
      Dir[File.join(File.dirname(__FILE__), 'models', '*.rb')].each { |model| require model }
      Dir[File.join(File.dirname(__FILE__), 'lib', '*.rb')].each { |lib| load lib }
      Mongoid.load!(File.join(File.dirname(__FILE__), 'config', 'mongoid.yml')) 
    end 

    require './models/loft'
    require './models/profile'
    require './models/listings'
    require './models/cart'
    require './models/item'
    require './models/wishlist'
    require './models/register'
    
    get '/' do
      erb :index, :escape_html => false
    end
    
    get '/sign-in' do
      erb :'sign-in', :escape_html => false 
    end

    get '/register' do
       erb :register, :escape_html => false
    end
    
    get '/about' do
      erb :about, :escape_html => false
    end
    
    get '/contact' do
      erb :contact, :escape_html => false
    end
    
    post '/contact' do
      #profile = Profile.create!(name: 'Jim Doe', email: 'jdoe@ex.net', profile_image: 'me.jpg')
      #profile.to_json
    end
    
    get '/get-started' do
      erb :'get-started', :escape_html => false
    end

    post '/get-started' do
      erb :'create-profile', :escape_html => false
    end


    get '/create-profile' do
      erb :'create-profile', :escape_html => false
    end

    post '/create-profile' do
      erb :'account-type', :escape_html => false
    end



    get '/account-type' do
      erb :'account-type', :escape_html => false
    end

    get '/item-preferences' do
      erb :'item-preferences', :escape_html => false
    end

    post '/item-preferences' do
      redirect '/add-items'
    end

    get '/add-items' do
       erb :'add-items', :escape_html => false
    end
    
    get '/listings' do
      erb :listings, :escape_html => false
    end
    
    get '/listing' do
      erb :listing, :escape_html => false
    end
    
    get '/loft' do
      erb :loft, :escape_html => false
    end
    
    get '/sold-items' do
      erb :'sold-items', :escape_html => false
    end
    
    get '/wishlist' do
      erb :wishlist, :escape_html => false
    end
    
    get '/messages' do
      erb :messages, :escape_html => false
    end
    
    get '/profile' do
      erb :profile, :escape_html => false  
    end
    
    get '/add-items' do
      erb :'add-items', :escape_html => false
    end

end


