# Car Class

The `Car` class is designed to represent a car object with attributes such as model, year, and engine type.

## initialize method

The `initialize` method is the constructor method of the class that is called when a new `Car` object is created. It takes three parameters `model`, `year`, and `engine_type` and assigns them to the instance variables `@model`, `@year`, and `@engine_type`.

```ruby
def initialize(model:, year:, engine_type:)
  @model = model
  @year = year
  @engine_type = engine_type
end
```

## info method

The `info` method returns a string containing information about the car, including its model, year, and engine type.

```ruby
def info
  "Model: #{@model}, Year: #{@year}, Engine: #{@engine_type}"
end
```

## attr_accessor

The `attr_accessor` method is a Ruby shortcut for creating getter and setter methods for instance variables. In this case, it creates getter and setter methods for `model`, `year`, and `engine_type`.

```ruby
attr_accessor :model, :year, :engine_type
```