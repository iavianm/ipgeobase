# frozen_string_literal: true

require "test_helper"

class TestIpgeobase < Minitest::Test
  def test_that_it_has_a_version_number
    refute_nil ::Ipgeobase::VERSION
  end

  def setup
    test_file = File.new('test/test_8888.xml')
    stub_request(:get, "http://ip-api.com/xml/8.8.8.8").and_return(status: 200, body: test_file)
  end

  def test_it_does_something_useful
    ip_data = Ipgeobase.lookup("8.8.8.8")
    assert_equal "Ashburn", ip_data.city
    assert_equal "United States", ip_data.country
    assert_equal "US", ip_data.countryCode
    assert_equal 39.03, ip_data.lat
    assert_equal -77.5, ip_data.lon
  end
end
