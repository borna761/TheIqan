class CreateIqans < ActiveRecord::Migration
  def change
    create_table :iqans do |t|
      t.integer :number
      t.text :text

      t.timestamps null: false
    end
  end
end
