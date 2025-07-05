## Overview
The `CarBrand` class is a subclass of `Car` and is used to represent a specific car brand. It includes attributes for the brand name and country of origin, as well as methods to display the full information about the brand.

## initialize method
The `initialize` method is used to create a new instance of the `CarBrand` class. It takes in parameters for the brand name, country, and any additional car attributes. It then calls the `initialize` method of the superclass `Car` to initialize the inherited attributes.

```ruby
def initialize(brand_name:, country:, **car_attrs)
  super(**car_attrs)
  @brand_name = brand_name
  @country = country
end
```

## full_info method
The `full_info` method returns a string that includes the brand name, country of origin, and additional information about the car. It calls the `info` method from the superclass `Car` to get the additional information.

```ruby
def full_info
  "Brand: #{@brand_name} (#{@country}) | #{info}"
end
```