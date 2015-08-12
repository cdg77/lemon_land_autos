class Vehicle 
  define_method(:initialize) do |make, model, year|
    @year = year
    @model = model
    @make = make
  end

  define_method(:age) do
    current_year = Time.new().year()
    current_year.-(@year)
  end
end
