# frozen_string_literal: true

require "net/http"
require "json"

module Rooney
  def initialize
    yield(self)
  end

  class Request
    BASE_URL = Rooney.configuration.api_url || "https://api.example.com"
  end
end
