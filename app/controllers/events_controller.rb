class EventsController < ApplicationController

  before_action :require_login, only: [:new, :create, :show, :edit, :update, :destroy]

  def index
    if request.fullpath.include?('future=true')
      @events = Event.future
    elsif request.fullpath.include?('past=true')
      @events = Event.past
    else
      @events = Event.order("date DESC")
    end
  end

  def show
    event
    @attendees = @event.attendees
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
    event
  end

  def update
    if event.update_attributes(event_params)
      redirect_to @event
    else
      render :edit
    end
  end

  def destroy
		event.destroy
    redirect_to events_path
  end

  private

  def event_params
    params.require(:event).permit(:title, :description, :location, :date, :time)
  end

  def event
    @event ||= Event.find(params[:id])
  end
end
