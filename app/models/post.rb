class Post < ApplicationRecord
  belongs_to :author, class_name: 'User'

  delegate :name, to: :author, prefix: true
  has_attached_file :image,
    styles: {
      medium: "300x300>",
      thumb: "100x100>"
    }

  validates :title, :body, presence: true
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
end
