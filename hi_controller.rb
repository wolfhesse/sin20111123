require 'sinatra'
require 'sinatra/reloader'

set(:probability) { |value| condition { rand <= value } }

get '/hi' do
  haml :hi
end


get '/win_a_car', :probability => 0.50 do
  haml :won
end

get '/win_a_car' do
  haml :lost
end

