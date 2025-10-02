program use_station
  use station_mod
  type(WeatherStation) :: station

  station%id = 'STN001'
  station%temperature = 26.5
  station%humidity = 75.0

  print *, 'Station:', station%id
  print *, 'Temp:', station%temperature
  print *, 'Humidity:', station%humidity
end program use_station
