# frozen_string_literal: true

require_relative "rooney/version"
require_relative "rooney/configuration"

module Rooney
  extend Configuration
  class Error < StandardError; end
  # Your code goes here...
end
