# frozen_string_literal: true

require "spec_helper"

RSpec.describe Rooney::Configuration do
  describe "basic configuration assignment" do
    before(:each) do
      Rooney.configure do |config|
        config.header = "header-value"
        config.api_key = "1234567890"
        config.base_url = "https://example.com/"
      end
    end

    it { expect(Rooney.header).to eq "header-value" }
    it { expect(Rooney.api_key).to eq "1234567890" }
    it { expect(Rooney.base_url).to eq "https://example.com/" }
  end
end
