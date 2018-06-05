class AppointmentsController < ApplicationController
  def create
    event = Event.find_by(id: params[:appointment][:attended_event_id])
  	current_user.appointments.create(attended_event_id: event.id, attendee_id: current_user.id)
  	redirect_to request.referrer
  end

  def destroy
  	@appointment = Appointment.find(params[:id])
  	current_user.appointments.destroy(@appointment)
  	redirect_to request.referrer
  end
end
