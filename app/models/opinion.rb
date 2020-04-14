class Opinion < ApplicationRecord
  belongs_to :author, class_name: 'User', foreign_key: 'author_id'
  validates :text, presence: true
end
