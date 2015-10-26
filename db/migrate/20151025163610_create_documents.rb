class CreateDocuments < ActiveRecord::Migration
  def change
    create_table :documents do |t|
      t.integer :user_id, index: true
      t.string :name

      t.timestamps null: false
    end
  end
end
