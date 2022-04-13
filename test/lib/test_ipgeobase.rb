# frozen_string_literal: true

require "test_helper"

class TestIpgeobase < Minitest::Test
  GOOGLE_IP = "8.8.8.8"

  def test_that_it_has_a_version_number
    refute_nil ::Ipgeobase::VERSION
  end

  def setup
    test_file = File.new('test/fixtures/files/test_8888.xml')
    stub_request(:get, "#{Ipgeobase::HOST + GOOGLE_IP}").and_return(status: 200, body: test_file)
  end

  def test_it_does_something_useful
    ip_data = Ipgeobase.lookup("#{GOOGLE_IP}")
    assert_equal "Ashburn", ip_data.city
    assert_equal "United States", ip_data.country
    assert_equal "US", ip_data.countryCode
    assert_equal 39.03, ip_data.lat
    assert_equal -77.5, ip_data.lon
  end
end
