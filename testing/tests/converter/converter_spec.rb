require_relative "converter"

RSpec.describe Converter do
  let(:converter) { Converter.new }
  let(:fetcher) { instance_double(Fetcher) }

  before do
    allow(Fetcher).to receive(:new).and_return(fetcher)
    allow(fetcher).to receive(:fetch).with(:usd).and_return(fetched_rate)
  end

  describe ".convert_to_currency" do
    let(:result) { converter.convert_to_currency(100, :usd) }
    context "when currency rate exist" do
      let(:fetched_rate) { 3.6334 }

      it "returns proper value for currency" do
        expect(result).to eq 27.522430781086587
      end
    end

    context "when currency rate doesn't exist" do
      let(:fetched_rate) { nil }

      it "returns nil" do
        expect(result).to eq nil
      end
    end
  end

  describe ".convert_to_pln" do
    let(:result) { converter.convert_to_pln(100, :usd) }
    context "when currency rate exist" do
      let(:fetched_rate) { 0.263365 }

      it "convert to pln" do
        expect(result).to eq 26.3365
      end
    end
  end
end
