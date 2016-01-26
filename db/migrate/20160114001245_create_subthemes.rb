class CreateSubthemes < ActiveRecord::Migration
  def change
    create_table :subthemes do |t|
      t.integer :number
      t.string :subtheme
      t.references :theme, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
