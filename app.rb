require_relative 'config/environment'

class App < Sinatra::Base

    get '/' do
        erb :user_input
    end

    post '/piglatinize' do
        user_word = word_param["word"]
        @word = PigLatinizer.new
        @pig_latinized_word = @word.piglatinize(user_word)
       
        erb :show
    end

    private 

    def word_param
        allowed = ["word"]
        params.select{|key| allowed.include?(key)}
    end 

end