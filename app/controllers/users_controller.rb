class UsersController < ApplicationController

    def show
        @user = User.find(params[:id])
        @setups = @user.setups
    end
    
    def index
        @users = User.all
    end

    def new
        @user = User.new
    end

    def edit
        @user = User.find(params[:id])
    end

    def update
        @user = User.find(params[:id])
        if @user.update(user_params)
            flash[:notice] = "Your profile was updated"
            redirect_to setups_path
        else
            render 'edit'
        end
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