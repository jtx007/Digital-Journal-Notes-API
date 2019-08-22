module Api
    module V1
        class UsersController < ApplicationController
            

            def ping
                render json: {message: "I'm awake"}
            end 

            def create
                user = User.new(user_params)
                if user.save
                    render json: {status: 'User registered sucessfully'}, status: :created
                else
                    render json: {errors: user.errors.full_messages}, status: :bad_request
                end
            end

            def show
                user = User.find(params[:id])
                render json: user
            end

            private
            def user_params
                params.require(:user).permit(:username, :password, :password_confirmation)
            end
        end
    end
end
