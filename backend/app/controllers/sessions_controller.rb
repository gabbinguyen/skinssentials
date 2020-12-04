class SessionsController < ApplicationController
  def create 
    user = User.find_by(username: params[:username])
      session[:id] = user.id
    render json: {message: 'abc'}
  end 

end
