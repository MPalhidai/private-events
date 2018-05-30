class EventsController < ApplicationController

  before_action :require_login, only: [:new, :create, :edit, :update, :destroy]

  def index
    #all future events
    Event.all
  end

  def show
    #one event
    @event = Event.find(params[:id])
		@guests = @event.guests
  end

  def new
    #create new event
  end

  def create
    #create new event
  end

  def edit
    #create new event
  end

  def update
    #create new event
  end

  def destroy
    #create new event
  end

  private

  def require_login
    redirect_to login_path unless logged_in?
  end

  def event_params
	   params.require(:event).permit(:title, :description, :location, :event_date, :start_time)
  end
end
