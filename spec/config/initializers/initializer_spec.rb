# frozen_string_literal: true

require "spec_helper"

RSpec.describe Rooney::Configuration do
  describe "basic configuration assignment" do
    before(:each) do
      Rooney.configure do |config|
        config.api_header = "x-apisports-key"
        config.api_key = "12345678901234567890"
        config.api_url = "https://v3.football.api-sports.io/"
      end
    end

    it { expect(Rooney.api_header).to eq "x-apisports-key" }
    it { expect(Rooney.api_key).to eq "12345678901234567890" }
    it { expect(Rooney.api_url).to eq "https://v3.football.api-sports.io/" }
  end
end
