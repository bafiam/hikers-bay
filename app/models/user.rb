class User < ApplicationRecord
  has_secure_password
  validates :username,  presence: true, length: { maximum: 50 }, uniqueness: true
  validates :password, presence: true, length: { minimum: 6 }
  validates :fullName, presence: true, length: {maximum: 50}
  validates :photo, presence: true ,file_size: { less_than: 9.megabytes }

  validates :coverimage, presence: true,file_size: {less_than: 9.megabytes}
  
  
  before_save { self.username.downcase!}
  mount_uploader  :photo,  ImageUploader
  mount_uploader  :coverimage, ImageUploader

  

 

end
