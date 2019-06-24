class UsersController < ApplicationController
    def show
        
        @name=current_user.name
        @events= Event.where(user_id: current_user.id)
    end
end
