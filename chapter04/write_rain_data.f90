program write_rain_data
  real :: rain(7) = (/ 3.2, 5.1, 0.0, 1.5, 7.3, 4.0, 2.9 /)
  integer :: i

  open(unit=12, file='rain.txt', status='unknown')
  do i = 1, 7
    write(12, *) 'Day', i, ':', rain(i)
  end do
  close(12)
end program write_rain_data
