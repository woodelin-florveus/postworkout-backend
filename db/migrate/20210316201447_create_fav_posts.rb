class CreateFavPosts < ActiveRecord::Migration[6.1]
  def change
    create_table :fav_posts do |t|
      t.integer :user_id
      t.integer :workout_post_id

      t.timestamps
    end
  end
end
