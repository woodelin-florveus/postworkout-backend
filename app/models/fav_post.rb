class FavPost < ApplicationRecord
    # validates :workout_post_id, uniqueness: 

    belongs_to :user
    belongs_to :workout_post
   
end
