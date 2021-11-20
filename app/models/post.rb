class Post < ApplicationRecord
  belongs_to :user
  has_many :comments

  scope :featured, -> { where(featured: true) }
end
