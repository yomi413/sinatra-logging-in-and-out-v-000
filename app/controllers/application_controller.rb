require_relative '../../config/environment'
class ApplicationController < Sinatra::Base
  configure do
    set :views, Proc.new { File.join(root, "../views/") }
    enable :sessions unless test?
    set :session_secret, "secret"
  end

  get '/' do
    erb :index
  end

  post '/login' do
    puts params
    @user = User.find_by(username: params["username"])
    # binding.pry
    if @user.is_logged_in?(session)
      session[:user_id] = @user.id
    end
    redirect to '/account'
  end

  get '/account' do
    erb :account
  end

  get '/error' do
    erb :error
  end

  get '/logout' do
    session.clear
    redirect to '/'
    erb :account
  end


end
