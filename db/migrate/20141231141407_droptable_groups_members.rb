class DroptableGroupsMembers < ActiveRecord::Migration
  def change
    drop_table :groups_members
  end
end
