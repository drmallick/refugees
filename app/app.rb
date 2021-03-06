require 'sinatra/base'
require 'sinatra/partial'


class RefugeeData < Sinatra::Base

  register Sinatra::Partial
  set :partial_template_engine, :erb
  enable :partial_underscores


  get '/' do
    erb :index
  end

  get '/explore' do
    erb :explore
  end

  get '/interactive' do
    send_file 'app/public/angular/app/charts.html'
  end


  # start the server if ruby file executed directly
  run! if app_file == $0
end
