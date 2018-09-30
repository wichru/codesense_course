require_relative "./converter"

RSpec.describe Converter do
  let(:converter) { Converter.new(currencies) }

  describe "#convert_to_currency" do
    let(:result) { converter.convert_to_currency(100, :usd) }

    context "when currency exists" do
      let(:currencies) { { usd: 3.6334 } }

      it "returns proper value" do
        expect(result).to eq 27.522430781086587
      end
    end

    context "when currency does not exist" do
      let(:currencies) { { eur: 4.2772 } }

      it "returns proper value" do
        expect(result).to eq nil
      end
    end
  end

  describe "#add_currency"  do
      before do
        converter.add_currency(currency, value)
      end

      let(:currency) { :chf }

      context "when currency is not present yet" do
        let(:currencies) { { usd: 3.6334 } }
        let(:value) { 3.7501 }

        it 'adds currency' do
          expect(currencies).to eq(usd: 3.6334, chf: 3.7501)
        end
      end

      context "when currency is already present" do
        let(:currencies) { { chf: 3.6334 } }
        let(:value) { 4.2123 }

        it 'reassigns currency' do
          expect(currencies).to eq(chf: 4.2123)
        end
      end
    end
  end
