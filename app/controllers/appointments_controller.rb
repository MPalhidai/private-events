class AppointmentsController < ApplicationController

  def create
    @appointment = current_user.appointments.build(appointment_params)
    if @appointment.save
      redirect_to request.referrer
    else
      render :new
    end
  end

  def destroy
    @appointment = Appointment.find(params[:id])
    current_user.appointments.destroy(@appointment)
    redirect_to request.referrer
  end

  private

  def appointment_params
    params.require(:appointment).permit(:attended_event_id, :attendee_id)
  end
end
