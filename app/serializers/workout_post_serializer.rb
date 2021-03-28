class WorkoutPostSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :title, :image_url, :author, :description, :likes

  has_many :comments

end
