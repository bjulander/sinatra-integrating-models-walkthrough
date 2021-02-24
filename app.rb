require_relative 'config/environment'
require_relative 'models/text_analyzer.rb'


class App < Sinatra::Base
  get '/' do
    erb :index
  end

  post '/' do 
    @analyzedtext = TextAnalyzer.new(params[:user_text])
    @analyzedtext
      erb :results
  end
end
