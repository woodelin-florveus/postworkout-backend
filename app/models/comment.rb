class Comment < ApplicationRecord
    belongs_to :workout_post
    belongs_to :user
end
