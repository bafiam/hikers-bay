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

 has_many :opinions, class_name: "Opinion", foreign_key: "author_id"
 # for active followers
 has_many :active_followers, class_name: "Relationship", foreign_key: "follower_id", dependent: :destroy
 has_many :following, through: :active_followers, source: :followed

 # for active followed by
 has_many :active_followed, class_name: "Relationship",foreign_key: "followed_id",
dependent: :destroy
has_many :followers, through: :active_followed, source: :follower


#current user to follow an other user
#u1.active_followers.create(followed_id: u2.id)
def follow_a_user(other_user_id)
  current_user.active_followers.create(followed_id: other_user_id)
end


#current user to unfollow a user
# u1.active_followers.find_by(followed_id: u2.id).destroy
def unfollow_a_user(other_user_id)
  current_user.active_followers.find_by(followed_id: other_user_id).destroy
end

#true if am(current user) is following a given user
# u1.following.include?(u2)
def following?(other_user)
  following.include?(other_user)
end

end
