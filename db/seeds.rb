# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Daley' city => cities.first)


CITIES = %w(melbourne sydney canberra tasmania perth brisbane adelaide)

CITIES.each do |city|
  City.find_or_create_by_name(city)
end

attributes = { :sex => 'f',
                             :age => '4 years',
                             :city => 'canberra',
                             :lede => "Having three legs doesn't bother Molly one bit.",
                             :details => "She was always one to lean against people for a pat, and now she just thinks that she has a really good excuse to do it more often - anything for more attention! Molly's tail works overtime when she meets people and this friendly girl deserves a family who are as excited to see her when they get home as she is to see them.",
                            :outlet_name => 'RSPCA ACT',
                            :address_1 => '12 Kirkpatrick St',
                            :suburb => 'Weston',
                            :postcode => '2611',
                            :state => 'ACT',
                            :phone => "1300 477 722",
                            :opening_hours => "Monday - Friday 10.00am - 4.00pm Weekends 10.00am - 4.00pm  Please note on Wednesday viewing of animals commences at 11.00am"}
o = Offer.find_or_create_by_name(:molly, attributes)
o.update_attributes attributes
                             

