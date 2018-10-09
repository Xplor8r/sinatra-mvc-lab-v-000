require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :user_input
  end

  post '/piglatinize' do
    pig = PigLatinizer.new(params[:user_phrase])
    @piglatin = pig.translate
    erb :results
  end
end
