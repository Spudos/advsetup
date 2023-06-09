class SetupsController < ApplicationController
before_action :set_setup, only: [:show, :edit, :update, :destroy]
before_action :require_user, except: [:show, :index]
before_action :require_same_user, only: [:edit, :update, :destroy]

    def show
    end

    def index
      @setups = Setup.paginate(:page => params[:page], :per_page => 5)
    end

    def new
      @setup = Setup.new
    end

    def edit
    end

    def create
      @setup = Setup.new(setup_params)
      @setup.user = current_user
      if @setup.save
        flash[:notice] = "Setup was created successfully."
        redirect_to @setup 
      else
        render(:new, status: :unprocessable_entity) 
      end    
    end

    def update
        if @setup.update(setup_params)
          flash[:notice] = "Setup was edited successfully."
          redirect_to @setup 
        else
          render(:edit, status: :unprocessable_entity)
        end
    end

    def destroy
      @setup.destroy
      redirect_to setups_path
    end

    private

    def set_setup
      @setup = Setup.find(params[:id])
    end

    def setup_params
      params.require(:setup).permit(:car, :driver, :track, :frshk, :frpst, :frspr, :reshk,
         :repst, :respr, :frdiff, :ctrdiff, :rediff, category_ids: [])
    end

    def require_same_user
      if current_user != @setup.user && !current_user.admin?
        flash[:alert] = "You can only edit or delete your own setup"
        redirect_to @setup
      end
    end

end
