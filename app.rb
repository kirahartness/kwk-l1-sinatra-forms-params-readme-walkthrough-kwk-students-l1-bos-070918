require_relative 'config/environment'

class App < Sinatra::Base
get '/' do 
  "This is a home page"
  
  get '/food_form' do
    erb :food_form
  end
  
  post '/food_form' do 
    params.to_s 
  end

  
