require_relative 'config/environment'

class App < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'views'
  end

  get '/home' do
    erb :home
  end 
  
   get '/index' do
    erb :index
  end 
  
   get '/shop' do
    erb :shop
  end 
  
   get '/walking' do
    erb :walking
  end 
  
   get '/live' do
    erb :live
  end 
  
   get '/food' do
    erb :food
  end 
  
   get '/home' do
    erb :home
  end 
  post  '/results' do
   answers = params.values
   @total = 0
   answers.each do |answer|
     @total += answer.to_i
   end
   puts @total
   
   if @total < 7 
     erb :entertainment
   elsif @total < 11
     erb :foodie
   elsif @total < 16
     erb :outdoors
   elsif @total < 22
     erb :shopping
   elsif @total < 26
     erb :education
   end
 end
    
end 
  

  
