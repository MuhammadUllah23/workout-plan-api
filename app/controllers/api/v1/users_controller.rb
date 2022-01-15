class Api::V1::UsersController < ApplicationController
    def create 
        @user = User.create(user_params)
        if @user.valid?
            @token = encode_token(user_id: @user.id)
            render json: {@user, jwt: @token}, status: :created, location: @user
        else
            render json: { error: 'failed to create user', message: "Make sure to fill all inputs" }, status: :unprocessable_entity
        end
    end

    private
    
    def user_params
        params.require(:user).permit(:email, :username, :password, :password_confirmation)
    end
end
