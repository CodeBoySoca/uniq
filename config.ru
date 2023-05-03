require 'sinatra'
require 'rubygems'
require 'haml'
require 'sass'
require 'json'



get('/public/css/main.css'){scss :main}


require 'bundler/setup'
Bundler.require

ENV['RACK_ENV'] = 'development'

require File.join(File.dirname(__FILE__), 'app.rb')


Uniq.start!