class CreateThemes < ActiveRecord::Migration
  def change
    create_table :themes do |t|
      t.integer :number
      t.string :theme

      t.timestamps null: false
    end
  end
end
