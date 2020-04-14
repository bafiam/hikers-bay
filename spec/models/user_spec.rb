require 'rails_helper'

RSpec.describe User, type: :model do
  context 'should have many' do
    it 'opinions' do
      should have_many(:opinions).class_name('Opinion').with_foreign_key('author_id')
    end
    it 'active_followers' do
      should have_many(:active_followers).class_name('Relationship').with_foreign_key('follower_id').dependent(:destroy)
    end
    it 'following' do
      should have_many(:following).through(:active_followers)
        .source(:followed)
    end

    it 'active_followed' do
      should have_many(:active_followed).dependent(:destroy).class_name('Relationship').with_foreign_key('followed_id')
    end

    it 'followers' do
      should have_many(:followers).through(:active_followed)
        .source(:follower)
    end
  end
end
