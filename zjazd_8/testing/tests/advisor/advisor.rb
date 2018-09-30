class Advisor
  def initialize(weather_service)
    @weather_service = weather_service
  end

  def clothes
    if @weather_service.precipitation > 40
      :raincoat
    elsif @weather_service.temperature > 20
      :t_shirt
    else
      :jacket
    end
  end
end
