module station_mod
  type :: WeatherStation
    character(len=20) :: id
    real :: temperature, humidity
  end type WeatherStation
end module station_mod
