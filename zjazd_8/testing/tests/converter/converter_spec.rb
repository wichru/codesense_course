require_relative './converter'

RSpec.describe Converter do
  let(:converter) { Converter.new }
  let(:fetcher) { instance_double(Fetcher) }

  before do
    allow(Fetcher).to receive(:new).and_return(fetcher)
    allow(fetcher).to receive(:fetch).with(:usd).and_return(fetched_currency)
  end

  describe '#convert_to_currency' do
    let(:result) { converter.convert_to_currency(100, :usd) }
    context 'when currency exists' do
      let(:fetched_currency) { 3.6334 }
      it 'returns proper value' do
        expect(result).to eq 27.522430781086587
      end
    end
    context 'when currency does not exist' do
      let(:fetched_currency) { nil }
      it 'returns proper value' do
        expect(result).to eq nil
      end
    end
  end
end
