require_relative "better_advisor"
require_relative "weather_service"

RSpec.describe BetterAdvisor do
  let(:better_advisor)         { BetterAdvisor.new }
  let(:weather_service) { instance_double(WeatherService, precipitation: precipitation, temperature: temperature) }

  before do
    allow(WeatherService).to receive(:new).and_return(weather_service)
  end

  describe "#clothes" do
    context "for a cold rainy day" do
      let(:precipitation) { 80 }
      let(:temperature)   { 13 }

      it "suggests raincoat" do
        expect(better_advisor.clothes).to eq :raincoat
      end
    end

    context "for a warm, dry day"
    let(:precipitation) { 10 }
    let(:temperature) { 30 }

    it "suggests t-shirt" do
      expect(better_advisor.clothes).to eq :t_shirt
    end
  end
end
