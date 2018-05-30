class EventsController < ApplicationController

  def index
    #all future events
    Event.all
  end

  def show
    #one event
    @event = Event.find(params[:id])
		@guests = @event.guests
  end

  def create
    #create new event
  end

  def destroy
    #create new event
  end

  def update
    #create new event
  end

  private

  def event_params
	   params.require(:event).permit(:title, :description, :location, :event_date, :start_time)
  end
end
