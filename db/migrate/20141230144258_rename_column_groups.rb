class RenameColumnGroups < ActiveRecord::Migration
  def change
    
    rename_column :groups, :name, :groupname
  end
end
