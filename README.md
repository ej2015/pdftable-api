# Pdftable::Api
[![Build Status](https://travis-ci.org/ej2015/pdftable-api.svg?branch=master)](https://travis-ci.org/ej2015/pdftable-api)
[![Maintainability](https://api.codeclimate.com/v1/badges/1cbdaca4ce5f83a9d898/maintainability)](https://codeclimate.com/github/ej2015/pdftable-api/maintainability)
[![CodeFactor](https://www.codefactor.io/repository/github/ej2015/pdftable-api/badge)](https://www.codefactor.io/repository/github/ej2015/pdftable-api)
A little client for pdftables.com API
## Installation

Add this line to your application's Gemfile:

```ruby
gem 'pdftable-api'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install pdftable-api

## Usage

```
## set your key in an initializer
Pdftable.configure do |p|
  p.key = 'abcde'
end

## initialize the client
client = Pdftable.client

## get to work
client.remaining_pages
client.convert(file, format: 'xml')

```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/pdftable-api.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

