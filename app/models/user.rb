class User < ApplicationRecord
  has_secure_password
  validates :first_name, presence:true
  validates :last_name,presence:true
  validates :email,presence:true, uniqueness: { case_sensitive: false }
  validates :password,presence:true, length: { minimum: 8 }
  validates :password_confirmation, presence:true

  def self.authenticate_with_credentials(email, password)
    # how to ensure if user is auntenticated
    # trim and lowecase the email
    user = User.find_by_email(email.strip.downcase)
    # If the user exists AND the password entered is correct.
    if user && user.authenticate(password)
      return user
    else
      return nil
    end
  end
end
