# Ipgeobase

The gem contains a lookup ('8.8.8.8') method that takes an IP address and returns a metadata object.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'ipgeobase'
```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install ipgeobase

## Usage

ip_data = Ipgeobase.lookup('8.8.8.8')  
ip_data.city # Ashburn  
ip_data.country # United States  
ip_data.countryCode # US  
ip_data.lat # 39.03  
ip_data.lon # -77.5

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake test` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and the created tag, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/iavianm/ipgeobase.
