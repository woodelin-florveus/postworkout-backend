class CreateComments < ActiveRecord::Migration[6.1]
  def change
    create_table :comments do |t|
      t.string :content
      t.integer :workout_post_id
      t.integer :user_id
      t.integer :likes

      t.timestamps
    end
  end
end
