class AddFieldsToIqan < ActiveRecord::Migration
  def change
    add_column :iqans, :part, :integer
  end
end
