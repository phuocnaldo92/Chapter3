class SessionsController < ApplicationController

  def new
  end

  def create
    user = User.find_by email: params[:session][:email].downcase
    if user && user.authenticate(params[:session][:password])
      if user.activated?
        log_in user
        params[:session][:remember_me] == Settings.num_one ? remember(user) : forget(user)
        redirect_back_or user
      else
        message = I18n.t "account_not_activated"
        message += I18n.t "check_your_email"
        flash[:warning] = message
        redirect_to root_url
      end
    else
      flash.now[:danger] = I18n.t "invaid"
      render :new
    end
  end

  def destroy
    log_out if logged_in?
    redirect_to root_url
  end
end
