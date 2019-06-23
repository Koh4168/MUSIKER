class EventsController < ApplicationController
     def index
        @events = Event.includes(:user).order("created_at DESC").page(params[:page]).per(5)
      end
  
    def new
    end
    
    def create
     Event.create(event_params)
    end
    
    private
    def event_params
        params.permit(:image,:name,:place,:price,:text,:scedule,:link)
    end
end
