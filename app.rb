require_relative 'config/environment'

class App < Sinatra::Base
  get '/' do 
    erb :user_input
  end
  
  post '/piglatinize' do
    @latinize = PigLatinizer.new.piglatinize(params["user_phrase"])
    
    erb :displaypig
  end
end