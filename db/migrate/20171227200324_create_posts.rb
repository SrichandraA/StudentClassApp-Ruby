class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :name
      t.string :section
      t.integer :category_id

      t.timestamps
    end
  end
end
