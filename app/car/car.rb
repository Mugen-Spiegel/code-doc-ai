# car.rb

class Car
  attr_accessor :model, :year, :engine_type

  def initialize(model:, year:, engine_type:)
    @model = model
    @year = year
    @engine_type = engine_type
  end

  def info
    "Model: #{@model}, Year: #{@year}, Engine: #{@engine_type}"
  end
end
