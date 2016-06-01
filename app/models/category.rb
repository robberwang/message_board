class Category < ActiveRecord::Base
  has_many :posts, through: :category_posts
  has_many :category_posts
end
