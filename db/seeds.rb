require "csv"

CSV.foreach('db/facility.csv') do |row|
  Facility.create(
    :id => row[0], :facilityname => row[1]
  )
end