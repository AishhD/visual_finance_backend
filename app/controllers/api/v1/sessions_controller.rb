class SessionsController < ApplicationController

  # def new
  # end

  def create
    user = User.find_by(username: params[:username])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
    else
      render json: {error: "Invalid username or password"}, status: 400
    end
  end

  def destroy
    session[:user_id] = nil
  end
end
