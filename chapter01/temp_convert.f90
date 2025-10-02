program temp_convert
  real :: c, f
  print *, 'Enter temperature in Celsius:'
  read *, c
  f = 9.0 / 5.0 * c + 32.0
  print *, 'Temperature in Fahrenheit:', f
end program temp_convert
