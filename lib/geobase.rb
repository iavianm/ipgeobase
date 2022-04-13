# frozen_string_literal: true

require 'happymapper'

class Geobase
  include HappyMapper

    tag 'query'
    element :city, String
    element :country, String
    element :countryCode, String
    element :lat, Float
    element :lon, Float
end
