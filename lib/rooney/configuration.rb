# frozen_string_literal: true

module Rooney
  module Configuration
    attr_accessor(
      :api_header,
      :api_url,
      :api_key
    ).freeze

    def configure
      yield self
    end

    def self.extended(base)
      base.set_default_configuration
    end

    def set_default_configuration
      self.api_header = nil
      self.api_key    = nil
      self.api_url    = nil
    end
  end
end
