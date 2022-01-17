class Api::V1::AuthController < ApplicationController

    def create 
        @user = User.find_by(username: user_login_params[:username])
        if @user && @user.authenticate(user_login_params[:password])
            token = encode_token({ user_id: @user.id})
            render json: { user: UserSerializer.new(@user), jwt: @token }, status: :created
        else
            render json: { message: "Invalid username or password" }, status: :unauthorized
        end
    end
end
