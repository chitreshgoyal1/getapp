# Dev Help - Author Chitresh Goyal

## How to build gem?
After enhancement or updation in code just run:
$ bundle exec exe/getapp
$ make install

## How to run code?
```for CSV file
$ getapp read <url:string> <is_header:boolean>
$ getapp read "feed-products/newwebsite.csv" true
```
```for json file
$ getapp softwareadvice <url:string>
$ getapp softwareadvice "feed-products/softwareadvice.json"
```
```for yaml file
$ getapp capterra <url:string>
$ getapp capterra "feed-products/capterra.yaml"
```

# Getapp

Welcome to your new gem! In this directory, you'll find the files you need to be able to package up your Ruby library into a gem. Put your Ruby code in the file `lib/getapp`. To experiment with that code, run `bin/console` for an interactive prompt.

TODO: Delete this and the text above, and describe your gem

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'getapp'
```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install getapp

## Usage

TODO: Write usage instructions here

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and the created tag, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/getapp. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [code of conduct](https://github.com/[USERNAME]/getapp/blob/master/CODE_OF_CONDUCT.md).

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the Getapp project's codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/[USERNAME]/getapp/blob/master/CODE_OF_CONDUCT.md).
