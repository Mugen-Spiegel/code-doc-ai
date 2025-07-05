# CarBrand Class

The CarBrand class is a subclass of the Car class and is used to represent a specific car brand. It includes attributes for the brand name and country of origin.

## initialize method

The initialize method is a special method in Ruby that is called when a new object of the class is created. In this case, the initialize method takes in arguments for the brand name, country, and any additional car attributes. It then calls the initialize method of the parent class (Car) using the super keyword and initializes the brand_name and country attributes of the CarBrand class.

```ruby
def initialize(brand_name:, country:, **car_attrs)
  super(**car_attrs)
  @brand_name = brand_name
  @country = country
end
```

## full_info method

The full_info method is a custom method defined in the CarBrand class that returns a string containing the brand name, country, and other car attributes. It calls the info method from the parent class (Car) to include additional car information.

```ruby
def full_info
  "Brand: #{@brand_name} (#{@country}) | #{info}"
end
```