

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'credit_cards_validator'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install credit_cards_validator
and require it in your file or terminal.
## Usage

You only need to do this: 

    ValidateCard.card_number_validate(number) 

if you want to get the brand name you only need to do this:

    ValidateCard.brand_name(number)

and then you will get card brand name like this...

    :master_card

You can use:

    ValidateCard.brand_name(number).to_s.tr("_"," ").capitalize
     
and you will get humanized name. It will return false for invalid numbers!

Current Card Brand Names:

    Master Card, Visa, Diners Club, JCB, American Express, Discover

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[MatheusHH]/credit_card_validator.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
