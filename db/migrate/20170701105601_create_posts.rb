class CreatePosts < ActiveRecord::Migration[5.1]
  def change
    create_table :posts do |t|
      t.string :title, null:false, default:""
      t.string :content
      t.integer :user_id, null:false
      t.timestamps
    end
  end
end
