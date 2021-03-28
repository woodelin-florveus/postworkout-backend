class CreateWorkoutPosts < ActiveRecord::Migration[6.1]
  def change
    create_table :workout_posts do |t|
      t.string :title
      t.string :image_url
      t.string :author
      t.string :description
      t.integer :likes
      t.integer :user_id
      
      
      t.timestamps
    end
  end
end
