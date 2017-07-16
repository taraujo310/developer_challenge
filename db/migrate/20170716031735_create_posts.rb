class CreatePosts < ActiveRecord::Migration[5.1]
  def change
    create_table :posts do |t|
      t.string :title
      t.text :body
      t.references :author, foreign_key: { to_table: :users }

      t.timestamps
    end
  end
end
