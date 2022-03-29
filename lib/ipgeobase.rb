# frozen_string_literal: true

require_relative "ipgeobase/version"
require_relative "geobase"

require "addressable/uri"
require "net/http"

module Ipgeobase
  HOST = "http://ip-api.com/xml/"

  def self.lookup(ip)
    uri = Addressable::URI.parse("#{HOST + ip}")
    xmlfile = Net::HTTP.get(uri)
    Geobase.parse(xmlfile)
  end
end
