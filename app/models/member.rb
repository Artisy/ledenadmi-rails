class Member < ActiveRecord::Base
  has_and_belongs_to_many :groups, :foreign_key => 'groups_id'
  accepts_nested_attributes_for :groups
  has_many :groups_members
  has_and_belongs_to_many :groups, :through => :groups_members
  
  
   
  
end
