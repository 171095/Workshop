class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  after_save :send_registration_notification

  def name
    "#{self.first_name} #{self.last_name}"
  end

  def login
    "#{self.contact}"
  end

  def send_registration_notification
    UserMailer.welcome_email(self).deliver_now
    UserMailer.admin_email.deliver_now
  end
  
 
end
