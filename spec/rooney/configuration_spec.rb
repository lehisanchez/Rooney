# frozen_string_literal: true

RSpec.describe Rooney do
  describe ".configuration" do
    subject(:configuration) { described_class.configuration }

    let(:api_header)  { "api-header-param" }
    let(:api_key)     { "xxxxxxxxxxxxxxxx" }
    let(:api_url)     { "https://api.com/" }

    before do
      described_class.configure do |config|
        config.api_header = api_header
        config.api_key    = api_key
        config.api_url    = api_url
      end
    end

    it "returns the provided api_header" do
      expect(configuration.api_header).to eq(api_header)
    end

    it "returns the provided api_key" do
      expect(configuration.api_key).to eq(api_key)
    end

    it "returns the provided api_url" do
      expect(configuration.api_url).to eq(api_url)
    end
  end
end
