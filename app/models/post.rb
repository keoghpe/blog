class Post < ApplicationRecord
  belongs_to :user

  scope :featured, -> { where(featured: true) }
end
