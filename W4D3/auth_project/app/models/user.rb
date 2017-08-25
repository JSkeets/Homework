# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  username        :string           not null
#  password_digest :string           not null
#  session_token   :string           not null
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class User < ApplicationRecord
  validates :username, presence: true
  validates :session_token, presence: true
  validates :password_digest, presence: { message: 'Password can\'t be blank' }
  validates :password, length: { minimum: 6, allow_nil: true }
  before_validation :ensure_session_token


  attr_reader :password
  def find_by_credentials
    user =User.find_by(username: username)
    return user if user && BCrypt::Password.new(user.password_digest).is_password?(password)
    nil
  end

  def generate_session_token
    SecureRandom::urlsafe_base64(16)
  end

  def reset_session_token!
      self.session_token = User.generate_session_token
      self.save!
      self.session_token
    end

    def ensure_session_token
      self.session_token ||= User.generate_session_token
    end

    def password=(password)
      @password = password
      self.password_digest = BCrypt::Password.create(password)
    end



end