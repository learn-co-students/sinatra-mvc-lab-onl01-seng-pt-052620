require_relative 'config/environment'

class App < Sinatra::Base

    get "/" do
        erb :user_input
    end

    post "/piglatinize" do
        
        piglatinized = PigLatinizer.new
        @pigword = piglatinized.piglatinize(params[:user_phrase])
    
        erb :piglatin_word
    end

    
end