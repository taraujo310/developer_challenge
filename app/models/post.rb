class Post < ApplicationRecord
  belongs_to :author, class_name: 'User'

  delegate :name, to: :author, prefix: true

  validates :title, :body, presence: true
end
