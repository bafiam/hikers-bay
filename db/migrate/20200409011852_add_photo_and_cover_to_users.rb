class AddPhotoAndCoverToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :Photo, :string
    add_column :users, :Coverimage, :string
    add_column :users, :fullName, :string
  end
end
