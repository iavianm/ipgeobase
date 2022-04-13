# frozen_string_literal: true

require 'happymapper'

module Geobase
  class Ipgeobase
    include HappyMapper

    tag 'query'
    element :city, String
    element :country, String
    element :countryCode, String
    element :lat, Float
    element :lon, Float
  end

  HOST = "http://ip-api.com/xml/"

  def self.lookup(ip)
    uri = Addressable::URI.parse("#{HOST + ip}")
    xmlfile = Net::HTTP.get(uri)
    Ipgeobase.parse(xmlfile)
  end
end
