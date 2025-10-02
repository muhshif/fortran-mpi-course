program temp_array
  real :: temps(5)
  integer :: i

  do i = 1, 5
    temps(i) = 15.0 + i  ! Simulated temperature data
  end do

  print *, 'Temperatures:'
  print *, temps
  print *, 'Max:', maxval(temps)
  print *, 'Mean:', sum(temps)/5
end program temp_array
