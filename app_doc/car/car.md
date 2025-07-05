## Overview
The `Car` class is designed to represent a car object with attributes such as model, year, and engine type. It provides a method to display information about the car.

## initialize method
The `initialize` method is the constructor for the `Car` class. It takes in three parameters (`model`, `year`, `engine_type`) and initializes the instance variables `@model`, `@year`, and `@engine_type` with the values passed in.

```ruby
def initialize(model:, year:, engine_type:)
  @model = model
  @year = year
  @engine_type = engine_type
end
```

## info method
The `info` method returns a string containing information about the car, including the model, year, and engine type.

```ruby
def info
  "Model: #{@model}, Year: #{@year}, Engine: #{@engine_type}"
end
```