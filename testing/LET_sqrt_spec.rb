RSpec.describe Math do
  describe "sqrt" do
    let(:result) { Math.sqrt(number) }

    context "when number is natural" do
      let(:number) { 2 }

      it "calculates proper square root" do
        expect(result).to eq 2
      end
    end

    context "when argument is real number" do
      let(:number) { 3.5 }

      it "calculates proper square root" do
        expect(result).to be > 1.8
      end
    end
  end
end
