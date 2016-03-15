class ChangeDataTypeForFieldname < ActiveRecord::Migration
  def change
  	change_column :entries, :content, :integer
  end
end
