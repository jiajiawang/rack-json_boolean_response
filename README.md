# Rack::JsonBooleanResponse

A rack middle that converts ruby boolean value(true/false) to integer(1/0) in
json response.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'rack-json_boolean_reponse', git: 'git://github.com/jiajiawang/rack-json_boolean_response.git'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install rack-json_boolean_response

## Usage

In your `config/application.rb` file add:

    require 'rack/json_boolean_response'

And, within the config block:

    config.middleware.use Rack::JSONBooleanResponse

## Contributing

1. Fork it ( https://github.com/[my-github-username]/rack-json_boolean_response/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
