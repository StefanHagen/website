class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.string :name
      t.string :key
      t.boolean :published, :default => false
      t.timestamp :published_on
      t.timestamps
    end
  end
end
