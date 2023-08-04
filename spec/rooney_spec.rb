# frozen_string_literal: true

RSpec.describe Rooney do
  it "is valid" do
    expect(described_class).to be_a(Module)
  end

  it "has a version number" do
    expect(Rooney::VERSION).not_to be_nil
  end

  describe ".configuration" do
    let(:config_value) { "placeholder_value" }

    before do
      described_class.configure do |config|
        config.api_header = config_value
        config.api_key    = config_value
        config.api_url    = config_value
      end
    end

    it "has a valid api_url" do
      expect(described_class.api_url).to eq config_value
    end

    it "has a valid api_key" do
      expect(described_class.api_key).to eq config_value
    end

    it "has a valid api_header" do
      expect(described_class.api_header).to eq config_value
    end
  end
end
