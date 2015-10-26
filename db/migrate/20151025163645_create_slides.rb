class CreateSlides < ActiveRecord::Migration
  def change
    create_table :slides do |t|
      t.integer :document_id, index: true
      t.string :path

      t.timestamps null: false
    end
  end
end
