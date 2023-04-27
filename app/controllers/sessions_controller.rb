class SessionsController < ApplicationController
    def create 
        user = User.find_by(fullname:params[:fullname])
        if user && user.authenticate(params[:passwoard])
            session[:user_id] = user.id
            render json: {message: 'Logged in successfully'}   
        else
            render json: {message: 'Invalid username or password'},
            status: :unauthorized
        end
    end
end
