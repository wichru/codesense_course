class BetterAdvisor
  def clothes
    if weather_service.precipitation > 40
      :raincoat
    elsif weather_service.temperature > 20
      :t_shirt
    else
      :jacket
    end
  end

  private

  def weather_service
    @weather_service ||= WeatherService.new
  end
end
