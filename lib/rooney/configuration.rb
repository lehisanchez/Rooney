# frozen_string_literal: true

module Rooney
  # Allow configuration of API-HEADER, API-KEY, API-BASE-URL
  module Configuration
    attr_accessor :header, :api_key, :base_url

    def configure
      yield self
    end
  end
end
