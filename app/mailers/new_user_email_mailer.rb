class NewUserEmailMailer < ApplicationMailer
    def notify_user(user)
        @user = user
        @url = 'https://programming-project-1-app-alaaden.c9users.io/login'
        mail(to: @user.email, subject: "Welcome to UniDates")
    end
end
