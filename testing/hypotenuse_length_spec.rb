require './hypotenuse_length'

RSpec.describe :hypotenuse_length do
  it "returns value from math formula" do
    expect(hypotenuse_length(3,4)).to eq 5.0
    expect(hypotenuse_length(4,3)).to eq 5.0
    expect(hypotenuse_length(6,8)).to eq 10.0
  end
end
