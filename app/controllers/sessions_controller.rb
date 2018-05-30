class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(name: params[:input][:name].downcase)
    if user && !user.id.nil?
      remember(user)
      current_user
      redirect_to events_path
    else
      render :new
    end
  end

  def destroy
    log_out if logged_in?
    redirect_to request.referrer
  end
end
