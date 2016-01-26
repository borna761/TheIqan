class CreateSubthemeparagraphs < ActiveRecord::Migration
  def change
    create_table :subthemeparagraphs do |t|
      t.string :main
      t.references :subtheme, index: true, foreign_key: true
      t.references :iqan, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
