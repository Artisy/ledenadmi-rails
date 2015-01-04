json.array!(@members) do |member|
  json.extract! member, :id, :name, :lastname, :dob, :street, :housenumber, :zipcode, :city, :emailaddress, :phonenumber, :member_since
  json.url member_url(member, format: :json)
end
