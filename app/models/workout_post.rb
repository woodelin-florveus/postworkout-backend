class WorkoutPost < ApplicationRecord
    
    belongs_to :user
    has_many :comments
    has_many :fav_posts
    has_many :user_favorites, through: :fav_posts
end
