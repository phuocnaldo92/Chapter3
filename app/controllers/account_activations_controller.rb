class AccountActivationsController < ApplicationController

  def edit
    user = User.find_by email: params[:email]
    if user && !user.activated? && user.authenticated?(:activation, params[:id])
      user.update_attribute(:activated, true)
      user.update_attribute(:activated_at, Time.zone.now)
      log_in user
      flash[:success] = I18n.t "account_activated"
      redirect_to user
    else
      flash[:danger] = I18n.t "invalid_activation_link"
      redirect_to root_url
    end
  end
end
