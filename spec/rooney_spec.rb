# frozen_string_literal: true

RSpec.describe Rooney do
  it "is valid" do
    expect(described_class).to be_a(Module)
  end

  it "has a version number" do
    expect(Rooney::VERSION).not_to be nil
  end
end
