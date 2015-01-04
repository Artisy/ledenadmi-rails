class Groups_Member < ActiveRecord::Base
  accepts_nested_attributes_for :groups, :members
 belongs_to :members
 belongs_to :groups
 
end
