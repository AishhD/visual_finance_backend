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
            render json: {errors: @user.errors.full_messages}, status: 404
        end
    end

#     def create
#         @user = User.new(user_params)
#         if @user.valid?
#             @user.save
#             render json: @user
#         else
#             # flash[:errors] = ["Invalid username or password"]
#             render json: {errors: @user.errors.full_messages}, status: 400
#         end
#     end

#     def update
#       @user = User.find(params[:id])
#       @user.update(user_params)
#       if @user.update(user_params)
#           render json: @user
#       else
#           render json: {errors: @user.errors.full_messages}, status: 400
#       end
#     end

#     private

#    def user_params
#        params.require(:user).permit(:username, :password, :password_confirmation, :age, :location, :children)
#    end

    def create
    user = User.create(user_params)
    if user
      render json: { token: issue_token({ id: user.id}), username: user.username }
    else
        render json: {errors: @user.errors.full_messages}, status: 400
    end
  end

  def login
    user = User.find_by(username: user_params[:username])
    if user && user.authenticate(user_params[:password])
      render json: { token: issue_token({ id: user.id }), username: user.username}
    else
        render json: {errors: @user.errors.full_messages}, status: 400
    end
  end

  def get_current_user
    if current_user
      render json: { username: current_user.username, id: current_user.id, target: current_user }
    else
        render json: {errors: @user.errors.full_messages}, status: 400
    end
  end

  private

  def user_params
    params.require(:user).permit(:username, :password, :password_confirmation, :age, :location, :children)
  end

end
