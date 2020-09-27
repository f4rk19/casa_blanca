class Facility < ApplicationRecord
  include ActiveHash::Associations

  has_many :casa_facilities
  has_many :casas, through: :casa_facilities

#   def casas
#     casa_facilities.map(&:casa)
#   end

#   self.data = [
#     {id: 1, name: '24 Hour Reception'}, {id: 2, name: '24 Hour Security'}, {id: 3, name: 'Adaptors'}, {id: 4, name: 'Bar'},
#     {id: 5, name: 'Breakfast Included'}, {id: 6, name: 'Breakfast Not Included'}, {id: 7, name: 'Cafe'}, {id: 8, name: 'Free city mapp'}, {id: 9, name: 'Laundly Facilities'}, {id: 10, name: 'Linen Included'}, {id: 11, name: 'Linen Not Included'}, {id: 12, name: 'Luggage Storage'}, {id: 13, name: 'Mini Supermarket'}, {id: 14, name: 'Outdoora Terrace'}, {id: 15, name: 'Reading Light'}, {id: 16, name: 'Reataurant'}, {id: 17, name: 'Tours/Travel desk'}, {id: 18, name: 'Towels for hire'}, {id: 19, name: 'Vending Machine'}, {id: 20, name: 'Washing Machine'}, {id: 21, name: 'Wheelchair Friendly'}, {id: 22, name: 'Hair Dryers For Hire'},{id: 23, name: 'Key Card Access'}, {id: 24, name: 'Tea/Coffee Making Facilities'}, {id: 25, name: 'Book Exchhange'},{id: 26, name: 'BBQ'}, {id: 27, name: 'Bycycle Parking'}, {id: 28, name: 'Common Room'}, {id: 29, name: "Elevator"}, {id: 30, name: 'Games Room'}, {id: 31, name: 'Hot Showers'}, {id: 32, name: 'Housekeeping'}, {id: 33, name: 'Indoor Swimming Pool'}, {id: 34, name: 'Internet Access'}, {id: 35, name: 'Iron/Ironing Board'}, {id: 36, name: 'Meals available'},{id: 37, name: 'Microwave'}, {id: 38, name: 'Parking'}, {id: 39, name: 'Pool Table'}, {id: 40, name: 'Safe Deposit Box'}, {id: 41, name: 'Sauna'}, {id: 42, name: 'Swimming Pool'}, {id: 43, name: 'Telephone Fax Facilities'}, {id: 44, name: 'Cable TV'}, {id: 45, name: 'Cooker'}, {id: 46, name: 'DVDs'}, {id: 47, name: 'Fridge Freezer'}, {id: 48, name: 'Jobs Board'}, {id: 49, name: 'PlayStation'}, {id: 50, name: 'Reception(limited hours)'}, {id: 51, name: 'Towels Not Included'}, {id: 52, name: 'WiFi'}, {id: 53, name: 'Hot Tub'}, {id: 54, name: 'Wake-up calls'}, {id: 55, name: 'Express check-in / out'}, {id: 56, name: 'Room Service(24 hours)'}
#   ]
end
