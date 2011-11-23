require 'sinatra'

class HiController < Sinatra::Base

  get '/hi' do
   "Hello World!"
  end
  
end
