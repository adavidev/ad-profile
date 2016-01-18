class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :name
      t.string :summary
      t.text :fulltext
      t.integer :user

      t.timestamps null: false
    end
  end
end
