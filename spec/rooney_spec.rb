# frozen_string_literal: true

RSpec.describe Rooney do
  it { expect(described_class).to be_a(Module) }

  it "is expected to have a version number" do
    expect(Rooney::VERSION).to eq "0.2.0"
  end
end
