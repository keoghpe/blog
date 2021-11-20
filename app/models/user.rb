class User < ApplicationRecord
  has_many :posts, dependent: :destroy
  has_many :featured_posts, -> { featured }, class_name: 'Post'
end
