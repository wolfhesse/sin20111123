require 'sinatra'
set(:probability) { |value| condition { rand <= value } }

get '/hi' do
  "Hello World! or something <a href='/win_a_car'>win a car, maybe</a></br>"
end


get '/win_a_car', :probability => 0.50 do
  "You won! #{ rand }"
end

get '/win_a_car' do
  "Sorry, you lost. #{ rand }"
end

