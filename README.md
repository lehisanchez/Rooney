# Rooney

[![CI Status](https://github.com/lehisanchez/rooney/actions/workflows/main.yml/badge.svg)](https://github.com/lehisanchez/rooney) [![Ruby Style Guide](https://img.shields.io/badge/code_style-rubocop-brightgreen.svg)](https://github.com/rubocop-hq/rubocop) [![codecov](https://codecov.io/gh/lehisanchez/rooney/branch/main/graph/badge.svg?token=4AJH6KYRYU)](https://codecov.io/gh/lehisanchez/rooney)

## Installation

Add this to your Gemfile:

    gem 'rooney'

and run `bundle install`.

## Configuration

Create an initializer file:

    touch config\initializers\rooney.rb

Copy and paste the following code into the initializer file:

```ruby
# config/initializers/rooney.rb
Rooney.configure do |config|
  config.api_header = ''
  config.api_key    = ''
  config.api_url    = ''
end
```


#### API Request Headers

The API is configured to work with only the headers listed below:

- x-rapidapi-host
- x-rapidapi-key
- x-apisports-key

Example:

    config.api_header = 'x-apisports-key'

#### API Key

Store your API-KEY in an environment variable or as a Rails secret:

    config.api_header = ENV["API_KEY"]

or

    config.api_header = Rails.application.credentials.api[:api_key]

#### API Base URL

The API is configured to work with only the urls listed below:

- https://api-football-v1.p.rapidapi.com/v3/
- https://v3.football.api-sports.io/

Example:

    config.api_url = 'https://v3.football.api-sports.io/'
