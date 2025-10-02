program main_program
  use climatetools
  real :: c, f

  c = 25.0
  f = c_to_f(c)
  print *, '25 Celsius is', f, 'Fahrenheit'

  f = 77.0
  c = f_to_c(f)
  print *, '77 Fahrenheit is', c, 'Celsius'
end program main_program
