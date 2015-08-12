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

end
