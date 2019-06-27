class UsersController < ApplicationController
    def show
        @user= User.find(params[:id])
        @events= current_user.events.page(params[:page]).per(5)
    end
end
