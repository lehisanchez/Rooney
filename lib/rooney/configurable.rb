# frozen_string_literal: true

module Rooney
  module Configurable
    def configuration
      @configuration ||= Configuration.new
    end

    def configure
      yield(configuration)
    end
  end
end
