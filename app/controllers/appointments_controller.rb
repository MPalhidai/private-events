class AppointmentsController < ApplicationController
  def create
    @event = Event.find(params[:appointment][:attended_event_id])
  	current_user.appointments.build(attended_event_id: @event.id)
  	redirect_to request.referrer
  end

  def destroy
  	@appointment = Appointment.find(params[:id])
  	current_user.appointments.destroy(@appointment)
  	redirect_to request.referrer
  end

  def appointment_params
    params.require(:appointment).permit(:attended_event_id, :attendee)
  end
end
