## Overview
The `Car` class is used to represent a car object with attributes such as model, year, and engine type. It has an `initialize` method to set the initial values for these attributes and an `info` method to return a formatted string with the car's information.

## initialize method
The `initialize` method is a special method in Ruby that gets called when a new object of the class is created. It takes three parameters - `model`, `year`, and `engine_type`, and assigns them to instance variables `@model`, `@year`, and `@engine_type` respectively.

```ruby
def initialize(model:, year:, engine_type:)
  @model = model
  @year = year
  @engine_type = engine_type
end
```

## info method
The `info` method returns a formatted string with the car's information including model, year, and engine type. It accesses the instance variables `@model`, `@year`, and `@engine_type` to construct the string.

```ruby
def info
  "Model: #{@model}, Year: #{@year}, Engine: #{@engine_type}"
end
```

## attr_accessor
The `attr_accessor` method is a Ruby shortcut for defining getter and setter methods for instance variables. In this case, it defines getter and setter methods for `model`, `year`, and `engine_type`, allowing us to access and modify these attributes outside the class.

```ruby
attr_accessor :model, :year, :engine_type
```