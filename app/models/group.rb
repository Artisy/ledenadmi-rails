class Group < ActiveRecord::Base
  has_and_belongs_to_many :members,  :foreign_key => 'members_id' 
  accepts_nested_attributes_for :members
  has_many :groups_members
  has_and_belongs_to_many :members, :through => :groups_members
 
    
  
  
end
