# frozen_string_literal: true

require "simplecov"
SimpleCov.start

require "simplecov-cobertura"
SimpleCov.formatter = SimpleCov::Formatter::CoberturaFormatter

RSpec.describe Rooney do
  it "has a version number" do
    expect(Rooney::VERSION).not_to be nil
  end
end
