RSpec.describe :sqrt do
  it 'return correct value' do
    expect(Math.sqrt(4)).to eq 2
    expect(Math.sqrt(3.5).round(1)).to be > 1.8
  end
end

# można też tak jak poniżej jeżeli testujemy całą klase Math
RSpec.describe Math do
  describe '.sqrt' do
    context 'when argument is natural number' do
      it 'calculates proper square root for natural numbers' do
        expect(Math.sqrt(4)).to eq 2
      end
    end
    context 'when argument is real number' do
      it 'calculates proper square root for real numbers' do
        expect(Math.sqrt(3.5)).to be > 1.8
      end
    end
  end
# to już jest dodatkowy test żeby pokazać, że mozna pisać kilka it'ów i i kilka describe
  describe '.log2' do
    it 'calculates proper logarith base 2' do
      expect(Math.log2(1)).to eq 0.0
      expect(Math.log2(2)).to eq 1.0
    end
  end
end
