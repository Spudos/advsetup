class UsersController < ApplicationController

    def new
        @user = User.new
    end

    def create
        @user = User.new(user_params)
        if @user.save
            flash[:notice] = "Welcome to RC Setup #{@user.username}, you have sucuessfully signed up"
            redirect_to setups_path    
        else
            render 'new'
        end
    end
private
    def user_params
        params.require(:user).permit(:username, :email, :password)
    end
end