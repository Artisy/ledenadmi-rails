class CreateJoinTableGroupsMembers < ActiveRecord::Migration
  def change
    create_join_table :groups, :members do |t|
       t.column :groups_id,  :integer
       t.column :members_id, :integer
    end
  end
end
