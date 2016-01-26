class CreateThemeparagraphs < ActiveRecord::Migration
  def change
    create_table :themeparagraphs do |t|
      t.string :main
      t.references :iqan, index: true, foreign_key: true
      t.references :theme, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
