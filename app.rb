require 'rubygems'
require 'sinatra'
require 'haml'
require 'sass'
require 'json'
require 'pony'


get('/public/css/main.css'){scss :main}


class Utilities
    def send_email email
        #code here
    end
end


get '/' do
  haml :index, :escape_html => false
end

get '/sign-in' do
  haml :'sign-in', :escape_html => false 
end

get '/about' do
  haml :about, :escape_html => false
end

get '/contact' do
  haml :contact, :escape_html => false
end

post '/contact' do
   content_type :json
   data = params.to_json
   send_obj = Utilities.new
   send_obj.send_email(data)
end

get '/get-started' do
  haml :'get-started', :escape_html => false
end

get '/listings' do
  haml :listings, :escape_html => false
end

get '/listing' do
  haml :listing, :escape_html => false
end

get '/loft' do
  haml :loft, :escape_html => false
end

get '/sold-items' do
  haml :'sold-items', :escape_html => false
end

get '/wishlist' do
  haml :wishlist, :escape_html => false
end

get '/messages' do
  haml :messages, :escape_html => false
end

get '/profile' do
  haml :profile, :escape_html => false  
end

get '/add-items' do
  haml :'add-items', :escape_html => false
end