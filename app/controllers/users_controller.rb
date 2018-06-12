class UsersController < ApplicationController

  before_action :require_login, only: [:show, :edit, :update, :destroy]

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to login_path
    else
      render :new
    end
  end

  def show
    if request.fullpath.include?('future=true')
      @events = @current_user.events.future
    elsif request.fullpath.include?('past=true')
			@events = @current_user.events.past
		else
			@events = @current_user.events.order("date DESC")
		end
  end

  def edit
    user
  end

  def update
    if user.update_attributes(user_params)
      redirect_to @user
    else
      render :edit
    end
  end

  def destroy
    user.destroy
    redirect_to root_path
  end

  private

  def user_params
    params.require(:user).permit(:name, :email)#, :password, :password_confirmation)
  end

  def user
    @user ||= User.find(params[:id])
  end
end
