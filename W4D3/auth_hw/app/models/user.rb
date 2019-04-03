class User < ApplicationRecord
  ensure_session_token
  validates :username, :session_token, presence: true
  validates :password_digest, presence: { message: "Password can't be blank"}
  validates :password, length: { minimum: 6}, allow_nil: true

  def self.find_by_credentials(:username, :password)

  end

  def self.generate_session_token
    @user[session_token] << SecureRandom::urlsafe_base64
  end

  def reset_session_token!
    @user[session_token] = nil
  end

  def ensure_session_token
    @user[session_token] ||= User.generate_session_token
  end

  def password=(pass)
    @password = pass
    #need to encrypt password and send it to password_digest??
  end

  
end
