class UsersController < ApplicationController
    def show
        
        @name=current_user.name
        @events= current_user.events.page(params[:page]).per(5)
    end
end
