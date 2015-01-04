class Addreferences < ActiveRecord::Migration
  def change
    add_reference :members, :groups, index: true
    add_reference :groups, :members, index: true
  end
 
  
end
