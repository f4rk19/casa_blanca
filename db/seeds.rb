require "csv"

CSV.foreach('db/countries.csv') do |r|
  Nationality.create(
    :id => r[0], :countryname => r[1]
  )
end

CSV.foreach('db/facility.csv') do |row|
  Facility.create(
    :id => row[0], :facilityname => row[1]
  )
end
