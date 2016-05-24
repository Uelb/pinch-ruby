Pinch
=================

## Installation

To install this gem, simply type :
`gem install pinch-api`

You can also add it to a gemfile :
`gem 'pinch-api'`

Finally, if you wish to use the head version, you can specify the github master branch :
`gem pinch-api, github: 'Inchdev/pinch-ruby'`

## Configuration
There is 2 different ways of authenticating yourself, either from an initializer file :
```ruby
# config/initializers/pinch.rb
require 'pinch'
Pinch::Configuration.x_api_token = 'MY_API_KEY'
# or the recommended way
Pinch::Configuration.x_api_token = ENV['PINCH_API_KEY']
```

Or directly before you want to perform a query :
```ruby
require 'pinch'
pinch = Pinch::PinchClient.new(x_api_token: "MY_API_KEY", x_api_email: "myemail@example.com")
```

## Usage
For further documentation, please refer to [the documentation website](http://doc-company.inchbase.com/?ruby)
