# car_brand.rb
require_relative 'car'

class CarBrand < Car
  attr_accessor :brand_name, :country

  def initialize(brand_name:, country:, **car_attrs)
    super(**car_attrs)
    @brand_name = brand_name
    @country = country
  end

  def full_info
    "Brand: #{@brand_name} (#{@country}) | #{info}"
  end
end
