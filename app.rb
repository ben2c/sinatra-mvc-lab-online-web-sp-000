require_relative 'config/environment'

class App < Sinatra::Base
  get '/' do
    erb :user_input
  end

  post '/piglatinze' do
    pl = PigLatinizer.new
    @newphrase = pl.to_pig_latin(params[:user_phrase])
    erb :results
  end
end
