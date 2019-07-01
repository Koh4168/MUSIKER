class UsersController < ApplicationController
    def show
        @user= User.find(params[:id])
        @events= Event.where(user_id: @user.id).page(params[:page]).per(10)
    end
end
