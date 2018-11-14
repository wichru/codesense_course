RSpec.describe Math do
  describe 'sqrt' do
    context 'when number is natural' do
      it 'calculates proper square root for natural numbers' do
        expect(Math.sqrt(4)).to eq 2
      end
    end

    context 'when argument is real number' do
      it "calculates proper square root for real numbers" do
        expect(Math.sqrt(3.5)).to be > 1.8
      end
    end
  end
end

RSpec.describe :sqrt do
  it 'correct math formula from square number' do
    expect(Math.sqrt(4)).to eq 2
  end

  it 'calculates proper square root for real number' do
    expect(Math.sqrt(3.5)).to be > 1.8
  end
end
