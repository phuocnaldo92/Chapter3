class UserMailer < ApplicationMailer
  
  def account_activation user
    @user = user
    mail to: user.email, subject: I18n.t "account_activation"
  end

  def password_reset
    @greeting = I18n.t "hi"
    mail to: "to@example.org"
  end
end
