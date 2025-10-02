program read_data
  real :: temps(3)
  integer :: i
  open(unit=11, file='temps.txt', status='old')
  do i = 1, 3
    read(11, *) temps(i)
  end do
  close(11)
  print *, 'Temperatures:', temps
end program read_data
