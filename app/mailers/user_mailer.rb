class UserMailer < ApplicationMailer
  def welcome_email(user)
    @user = user
    @url  = 'http://example.com/login'
    mail(to: @user.email, subject: 'You have sucessfully registered for Workshop!!')
  end
 def admin_email

  mail(to: "ravi.singh1308@gmail.com", subject: 'new user registered!!')
 end
end
