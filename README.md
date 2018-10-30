# DatabaseConsistency

[![Build Status](https://travis-ci.org/djezzzl/database_consistency.svg?branch=master)](https://travis-ci.org/djezzzl/database_consistency)
[![Gem Version](https://badge.fury.io/rb/database_consistency.svg)](https://badge.fury.io/rb/database_consistency)

The main goal of the project is to provide an easy way to check the consistency of the 
database constraints with the application validations.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'database_consistency', group: :development, require: false
```

And then execute:

```bash
bundle install
```

Or install it yourself as:

```bash
gem install database_consistency
```

## Usage

In the root directory of your Rails project run `bundle exec database_consistency`. 
To get a full output run `LOG_LEVEL=DEBUG bundle exec database_consistency`.

## How it works?

Right now, we only check the consistency from the application validations perspective. 
We iterate over all validators and check their consistency with the database constraints. 

### PresenceComparator

This comparator is used for *PresenceValidator*.

| allow_nil/allow_blank/if/unless | database | status |
| :-----------------------------: | :------: | :----: |
| at least one provided           | required | fail   |
| at least one provided           | optional | ok     |
| all missed                      | required | ok     |
| all missed                      | optional | fail   |  

## Development

After checking out the repo, run `bundle install` to install dependencies. Then, run `bundle exec rspec` to run the tests.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, 
update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git 
tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

[Bug reports](https://github.com/djezzzl/database_consistency/issues) and [pull requests](https://github.com/djezzzl/database_consistency/pulls) are welcome on GitHub. 
This project is intended to be a safe, welcoming space for collaboration, and contributors are expected 
to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## Code of Conduct

Everyone interacting in the *DatabaseConsistency* project’s codebases, issue trackers, chat rooms 
and mailing lists is expected to 
follow the [code of conduct](CODE_OF_CONDUCT.md).

## Changelog

*DatabaseConsistency*'s changelog is available [here](CHANGELOG.md).

## Copyright

Copyright (c) Evgeniy Demin. See [LICENSE.txt](LICENSE.txt) for further details.
