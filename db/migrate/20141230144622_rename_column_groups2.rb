class RenameColumnGroups2 < ActiveRecord::Migration
  def change
    
    change_table :groups do |t|
      t.rename :name, :groupname
     
       
    end
  end
end
