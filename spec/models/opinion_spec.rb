require 'rails_helper'

RSpec.describe Opinion, type: :model do
  context 'Should belong to a' do
    it 'author' do
      should belong_to(:author).class_name('User').with_foreign_key('author_id')
    end
  end
  context 'should have' do
    it 'a text column of string' do
      should have_db_column(:text).of_type(:string)
    end
  end
end
