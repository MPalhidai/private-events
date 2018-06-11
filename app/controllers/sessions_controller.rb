class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(name: params[:input][:name].downcase)
    if user
      remember(user)
      redirect_to events_path
    else
      render :new
    end
  end

  def destroy
    log_out if logged_in?
    redirect_to events_path
  end
end
