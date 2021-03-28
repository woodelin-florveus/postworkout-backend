class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :email

  has_many :workout_posts
  # has_many :fav_posts
  # has_many :comments
  has_many :favorites
end
