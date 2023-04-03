class SessionsController < ApplicationController
    def create
        user = User.find_by(name: params[:username])
        if user &.authenticate(params[:password])
            session[:user_id] = user.id
            render json: user
        else
            render json:{message: "bad credentials"}
        end
    end
    def destroy
        session.delete :user_id
        head :no_content
    end
end
