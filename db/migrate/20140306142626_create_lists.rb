class CreateLists < ActiveRecord::Migration
  def change
    create_table :lists do |t|
      t.string :name
      t.boolean :public, default: false
      t.text :description
      t.date :due_date
      t.integer :user_id

      t.timestamps
    end
  end
end
