
class Vehicle
    attr_accessor :engine, :doors, :stiring
end

vehicle1 = Vehicle.new()
vehicle1.engine = "German engine"
vehicle1.doors = "Chineese doors"
vehicle1.stiring = "made in Italy"

vehicle2 = Vehicle.new()
vehicle2,engine = "Thaiwan made"
vehicle2.doors = "made in Pakistan"
vehicle2.stiring = "Tesla product"

puts vehicle2.engine