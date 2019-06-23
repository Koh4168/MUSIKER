class EventsController < ApplicationController
    def new
    end
    
    def create
     Event.create(event_params)
    end
    
    private
    def event_params
        params.permit(:image,:name,:place,:price,:text,:scedule)
        
    end
end
