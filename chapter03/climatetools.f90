module climatetools
contains

  function c_to_f(celsius) result(fahrenheit)
    real, intent(in) :: celsius
    real :: fahrenheit
    fahrenheit = 9.0 / 5.0 * celsius + 32.0
  end function c_to_f

  function f_to_c(fahrenheit) result(celsius)
    real, intent(in) :: fahrenheit
    real :: celsius
    celsius = (fahrenheit - 32.0) * 5.0 / 9.0
  end function f_to_c

end module climatetools
