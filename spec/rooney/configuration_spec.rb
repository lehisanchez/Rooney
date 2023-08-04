# frozen_string_literal: true

RSpec.describe Rooney::Configuration do
  subject(:described_module) { Rooney }

  let(:api_key_value) { "123" }
  let(:api_url_value) { "https://example.com" }
  let(:api_header_value) { "api-header-example" }

  before do
    described_module.configure do |config|
      config.api_key = api_key_value
      config.api_url = api_url_value
      config.api_header = api_header_value
    end
  end

  it { expect(described_class).to be_a(Module) }

  it "is expected to set api_key" do
    expect(described_module.api_key).to eq api_key_value
  end

  it "is expected to set api_url" do
    expect(described_module.api_url).to eq api_url_value
  end

  it "is expected to set api_header" do
    expect(described_module.api_header).to eq api_header_value
  end
end
