class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :title, null: false, default: ''
      t.integer :page_count, null: false, default: 0
      t.boolean :on_shelf, null: false, default: true

      t.timestamps null: false
    end
  end
end
