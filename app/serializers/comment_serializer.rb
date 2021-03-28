class CommentSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :workout_post_id, :content, :likes
end
