class PagesController < ApplicationController
    def home
        redirect_to setups_path if logged_in?
    end

    def setups
    end

    end