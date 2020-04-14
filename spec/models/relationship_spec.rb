require 'rails_helper'

RSpec.describe Relationship, type: :model do
  context 'should belong to the' do
    it 'follower' do
      should belong_to(:follower).class_name('User')
    end
    it 'followed' do
      should belong_to(:followed).class_name('User')
    end
  end
  context 'should have specific column. It has' do
    it 'a follower_id column of integer' do
      should have_db_column(:follower_id).of_type(:integer)
    end
    it 'a followed_id column of integer' do
      should have_db_column(:followed_id).of_type(:integer)
    end
  end
end
