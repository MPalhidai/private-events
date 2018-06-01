class EventsController < ApplicationController

  before_action :require_login, only: [:new, :create, :edit, :update, :destroy]

  def index
    #all future events

    #NOT SHOWING ALL EVENTS
    #Showing only current users events
    @events = Event.all
  end

  def show
    #one event
    # @event = Event.find(params[:id])
		# @guests = @event.guests
  end

  def new
    @event = Event.new
  end

  def create
    @event = current_user.events.build(event_params)
    if @event.save
      redirect_to user_events_path
    else
      render :new
    end
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

  def event_params
    params.require(:event).permit(:description, :location, :date)
    #.permit(:title, :description, :location, :event_date, :start_time)
  end
end
