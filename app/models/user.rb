class User < ApplicationRecord
  has_secure_password
  validates :username,  presence: true, length: { maximum: 50 }, uniqueness: true
  validates :password, presence: true, length: { minimum: 6 }
  before_save { self.username.downcase!}

 

end
