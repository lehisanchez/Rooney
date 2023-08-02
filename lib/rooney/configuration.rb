# frozen_string_literal: true

module Rooney
  # Allow configuration of the api header parameter, api-key, and base url
  module Configuration
    attr_accessor :api_header, :api_key, :api_url

    def configure
      yield self
    end
  end
end
