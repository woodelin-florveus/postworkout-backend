class User < ApplicationRecord
    
    has_secure_password

    validates :name, uniqueness: { case_sensitive: false}

    has_many :workout_posts
    has_many :comments
    has_many :fav_posts
    has_many :favorites, through: :fav_posts, source: "workout_post"
end
