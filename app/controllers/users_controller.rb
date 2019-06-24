class UsersController < ApplicationController
    def show
        
        @name=current_user.name
        @events= Event.where(user_id: current_user.id).page(params[:page]).per(5)
    end
end
