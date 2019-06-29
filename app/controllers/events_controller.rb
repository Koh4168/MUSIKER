class EventsController < ApplicationController
    before_action :move_to_index, except: :index
     
     def index
        @events = Event.includes(:user).order("created_at DESC ").page(params[:page]).per(10)
     end
  
    def new
    end
    
    def create
        @event = current_user.event.build(event_param)
    end 
    
    def destroy
        event = Event.find(params[:id])
        event.destroy if event.user_id == current_user.id
    end
    
    def edit
        @event = Event.find(params[:id])
    end
    
    def update
        event = Event.find(params[:id])
        if event.user_id == current_user.id
            event.update(event_params)
        end
    end
    
    private
    def event_params
        params.permit(:image,:name,:place,:price,:text,:scedule,:link)
    end
    
    def move_to_index
        redirect_to action: :index unless user_signed_in?
    end
end
