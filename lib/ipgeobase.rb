# frozen_string_literal: true

require_relative "ipgeobase/version"
require_relative "ipgeobase/geobase"

require "addressable/uri"
require "net/http"

module Ipgeobase
  class Error < StandardError; end

  def self.lookup(ip)
    uri = Addressable::URI.parse("http://ip-api.com/xml/#{ip}")
    xmlfile = Net::HTTP.get(uri)
    Geobase.parse(xmlfile)
  end
end
