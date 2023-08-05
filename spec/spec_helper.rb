# frozen_string_literal: true

require "simplecov"
SimpleCov.start

require "simplecov-cobertura"
SimpleCov.formatter = SimpleCov::Formatter::CoberturaFormatter

require "dotenv/load"
Dotenv.require_keys("API_KEY", "API_URL", "API_HEADER")

require "rooney"

RSpec.configure do |config|
  # Enable flags like --only-failures and --next-failure
  config.example_status_persistence_file_path = ".rspec_status"

  # Disable RSpec exposing methods globally on `Module` and `main`
  config.disable_monkey_patching!

  # Configure the RSpec to only accept the new exptect syntax
  config.expect_with :rspec do |c|
    c.syntax = :expect
  end
end
