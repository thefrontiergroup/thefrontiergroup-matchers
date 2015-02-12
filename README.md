# The Frontier Group: Matchers

A collection of Rspec matchers to share across TFG projects.

## Installation

Add this line to your application's Gemfile:

    gem 'thefrontiergroup-matchers', git: 'git@github.com:thefrontiergroup/thefrontiergroup-matchers.git'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install thefrontiergroup-matchers

## Existing matchers

### Flash Messages

```ruby
it { is_expected.to set_flash(:notice) }
it { is_expected.to set_flash(:alert).to('foobar') }
it { is_expected.not_to set_flash(:notice).to(/not/) }
```

### Pagination (based on gem [kaminari](https://github.com/amatsuda/kaminari))

```ruby
specify { expect(users).to be_paginated }
```

### Order

```ruby
it { is_expected.to order(archived_user).after(unarchived_user) }
```

### Response Status

```ruby
it { is_expected.to be_bad_request }
it { is_expected.to be_forbidden }
it { is_expected.to be_not_found }
it { is_expected.to be_unauthorised }
it { is_expected.to be_unprocessable_entity }
it { is_expected.to be_internal_server_error }
```

## Contributing

1. Fork it ( https://github.com/[my-github-username]/thefrontiergroup-matchers/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
