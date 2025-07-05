# CarBrand Class

The `CarBrand` class is a subclass of the `Car` class. It represents a specific car brand with additional attributes for brand name and country of origin.

## initialize method

The `initialize` method is the constructor for the `CarBrand` class. It initializes the `brand_name` and `country` attributes specific to the car brand, while also calling the `initialize` method of the superclass `Car` to initialize the common car attributes.

```ruby
def initialize(brand_name:, country:, **car_attrs)
  super(**car_attrs)
  @brand_name = brand_name
  @country = country
end
```

- `brand_name:` and `country:` are required keyword arguments that are specific to the car brand.
- The `**car_attrs` parameter allows for additional car attributes that are common among all cars to be passed in.

## full_info method

The `full_info` method returns a string that includes the brand name, country, and the common car attributes using the `info` method from the superclass `Car`.

```ruby
def full_info
  "Brand: #{@brand_name} (#{@country}) | #{info}"
end
```

- It constructs and returns a string with the brand name, country in parentheses, and the common car attributes obtained from the `info` method.