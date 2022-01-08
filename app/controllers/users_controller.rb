class UsersController < ApplicationController
    def create 
        @user = User.create(user_params)
        if @user.valid?
            render json: @user, status: :created, location: @user
        else
            render json: { error: 'failed to create user' }, status: :unprocessable_entity
        end
    end

    private
    
    def user_params
        params.require(:user).permit(:email, :username, :password, :password_confirmation)
    end
end
