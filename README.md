# Matador

Matador is a gem designed to give you atmospheric data for the exact spot you choose, such as temperature, humidity, barometric pressure, wind speed and direction, and visibility.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'matadore'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install matador

## Usage

Using Matadore is fairly simple. It asks for your location, for which you can give is an exact address or simply a zip code. Then it will ask you what sort of data you are looking to acquire about that location. For the time-being your choices are "wind," "pressure," "temp," "humidity", and "visibility."

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/abadfish/matadore. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
