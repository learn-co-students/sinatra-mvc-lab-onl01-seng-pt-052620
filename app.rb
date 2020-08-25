require_relative 'config/environment'

class App < Sinatra::Base

    get '/' do
        erb :user_input
    end

    post '/piglatinize' do
        user_input = word_param["user_phrase"]
        @word = PigLatinizer.new
        @pig_latinized_word = @word.piglatinize(user_input)
       
        erb :show
    end

    private 

    def word_param
        allowed = ["user_phrase"]
        params.select{|key| allowed.include?(key)}
    end 

end