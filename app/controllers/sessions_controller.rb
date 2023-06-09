class SessionsController < ApplicationController

    def new
    end

    def create
        user = User.find_by(email: params[:session][:email].downcase)
        if user && user.authenticate(params[:session][:password])
            session[:user_id] = user.id
            flash[:notice] = "logged in successfully"
            redirect_to user
        else
            flash.now[:notice] = "Log in error!"
            render 'new'
        end
    end

    def destroy
        session[:user_id] = nil   
        flash[:notice] = "logged out successfully"
        redirect_to root_path
    end

end