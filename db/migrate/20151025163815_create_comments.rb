class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.integer :slide_id, index: true
      t.integer :user_id, index: true
      t.text :content, null: false

      t.timestamps null: false
    end
  end
end
