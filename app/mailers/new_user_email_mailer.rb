class NewUserEmailMailer < ApplicationMailer
    def notify_user(user)
        @user = user
        mail(to: @user.email, subject: "Welcome to UniDates")
    end

   def password_reset(user)
    @user = user
        mail(to: @user.email, subject: "Password reset")
   end

end
