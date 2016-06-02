class User < ActiveRecord::Base
  # Include default devise modules.
	include DeviseTokenAuth::Concerns::User
  
  before_save -> do
    self.uid = SecureRandom.uuid
    skip_confirmation!
  end

   devise :database_authenticatable, :registerable,
          :recoverable, :rememberable, :trackable, :validatable,
          :confirmable, :omniauthable
  
end
