class CreateMembers < ActiveRecord::Migration
  def change
    create_table :members do |t|
      t.string :name
      t.string :lastname
      t.date :dob
      t.string :street
      t.integer :housenumber
      t.string :zipcode
      t.string :city
      t.string :emailaddress
      t.integer :phonenumber
      t.integer :member_since

      t.timestamps
    end
  end
end
