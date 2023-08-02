# frozen_string_literal: true

module Rooney
  class Configuration
    attr_accessor :api_header, :api_key, :api_url

    def initialize
      @api_header = nil
      @api_key    = nil
      @api_url    = nil
    end
  end
end
