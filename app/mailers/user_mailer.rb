class UserMailer < ApplicationMailer
    default from: 'unidates.notifications@gmail.com'

    def welcome_email(user)
        @user = user
        @url = 'http://http://localhost:3000/login'
        mail(to: @user.email, subject: 'UniDates Account Validation')
    end
end
