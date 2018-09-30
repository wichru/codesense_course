require_relative "./hypotenuse_length"

RSpec.describe :hypotenuse_length do
  it "returns correct value" do
    expect(hypotenuse_length(3, 4)).to eq 5.0
    expect(hypotenuse_length(4, 3)).to eq 5.0
    expect(hypotenuse_length(6, 8)).to eq 10.0
  end
end

RSpec.describe :sqrt do
  it "calculates proper square root for natural numbers" do
    expect(Math.sqrt(4)).to eq 2
  end

  it "calculates proper square root for real numbers" do
    expect(Math.sqrt(3.5)).to be > 1.8
  end
end
