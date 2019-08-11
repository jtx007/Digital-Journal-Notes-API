class ApplicationController < ActionController::API
require 'json_web_token'
        def not_found
            render json: { error: 'User not found/Invalid Token' }
        end

    def authorize_request
        header = request.headers['Authorization']
        header = header.split(' ').last if header
        begin
        @decoded = JsonWebToken.decode(header)
        @current_user = User.find(@decoded[:user_id])
        rescue ActiveRecord::RecordNotFound => e
        render json: { errors: e.message }, status: :unauthorized
        rescue JWT::DecodeError => e
        render json: { errors: e.message }, status: :unauthorized
        end
    end
end

