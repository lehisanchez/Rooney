# frozen_string_literal: true

RSpec.describe Rooney::Configuration do
  subject(:described_module) { Rooney }

  let(:api_key)    { ENV["API_KEY"] }
  let(:api_url)    { ENV["API_URL"] }
  let(:api_header) { ENV["API_HEADER"] }

  before do
    described_module.configure do |config|
      config.api_key    = api_key
      config.api_url    = api_url
      config.api_header = api_header
    end
  end

  it "is expected to be configurable", :aggregate_failures do
    expect(described_module.api_key).to eq api_key
    expect(described_module.api_url).to eq api_url
    expect(described_module.api_header).to eq api_header
  end
end
