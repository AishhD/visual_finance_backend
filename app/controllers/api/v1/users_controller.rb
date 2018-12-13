class Api::V1::UsersController < ApplicationController
    def index
        @users = User.all
        render json: @users
    end

    def show
        @user = User.find_by(id: params[:id])
        if @user
            render json: @user
        else
            render json: {error: "This user was not found"}, status: 404
        end
    end

    def create
        @user = User.new(user_params)
        if @user.valid?
            @user.save
            render json: @user
        else
            render json: {error: "Unable to create this user"}, status: 400
        end
    end

    def update
      @user = User.find(params[:id])
      @user.update(user_params)
      if @user.update(user_params)
          render json: @user
      else
          render json: {error: "Unable to create this user"}, status: 400
      end
    end

    private

   def user_params
       params.require(:user).permit(:username, :password, :password_confirmation, :age, :location, :children)
   end

end
