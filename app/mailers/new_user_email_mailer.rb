class NewUserEmailMailer < ApplicationMailer
    def notify_user(user)
        @user = user
        @url = 'https://rails-tutorial-knackojacko.c9users.io/login'
        mail(to: @user.email, subject: "Welcome to UniDates")
    end
end
