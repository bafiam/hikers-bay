class RenamePhotoAndCoverToUsers < ActiveRecord::Migration[6.0]
  def change
    rename_column :users, :Photo, :photo
    rename_column :users, :Coverimage, :coverimage
    #Ex:- rename_column("admin_users", "pasword","hashed_pasword")
  end
end
