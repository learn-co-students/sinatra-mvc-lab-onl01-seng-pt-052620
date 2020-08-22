require_relative 'config/environment'

class App < Sinatra::Base
    get "/" do 
        erb :user_input 
    end 

    post "/piglatinize" do 
        @analyzed_text = PigLatinizer.new(params[:user_input])
        erb :user_input   
    end 
end



  

"noodle soup" "oodlenay oupsay"
"flatiron school" "atironflay oolschay "