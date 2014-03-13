class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.text :body
      t.integer :administrator_id
      t.integer :category_id
      t.boolean :published, :default => false
      t.timestamp :published_on
      t.timestamps
    end
  end
end
