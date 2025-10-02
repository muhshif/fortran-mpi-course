program rainfall_total
  real :: rainfall(7)  ! 7 days of rainfall
  real :: total
  integer :: i

  ! Assign rainfall values (in mm)
  rainfall = (/ 5.0, 12.3, 0.0, 8.1, 4.4, 10.0, 3.2 /)

  total = sum(rainfall)

  print *, 'Total rainfall this week:', total, 'mm'
end program rainfall_total
