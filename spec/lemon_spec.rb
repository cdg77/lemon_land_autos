require('rspec')
require ('lemon')

describe(Vehicle) do
  describe("#age") do
    it("returns the vehicles age") do
      test_vehicle = Vehicle.new("Toyota", "Prius", 2000)
      expect(test_vehicle.age()).to(eq(15))
    end
  end

  describe('#worth_buying?') do
    it('returns true if the vehicle is not american made and older than 15 years old') do
      test_vehicle = Vehicle.new('Toyota', 'Prius', 2000)
      expect(test_vehicle.worth_buying?()).to(eq(true))
    end
  end

  # describe("#make") do
  #   it("returns the make of the vehicle") do
  #     test_vehicle = Vehicle.new("Toyota", "Prius", 2000)
  #     test_vehicle.save()
  #   end
  # end

  describe("#save") do
    it("adds a vehicle to the array of saved vehicles") do
      test_vehicle = Vehicle.new("Toyota", "Prius", 2000)
      test_vehicle.save()
      expect(Vehicle.all()).to(eq([test_vehicle]))
    end
  end
end
