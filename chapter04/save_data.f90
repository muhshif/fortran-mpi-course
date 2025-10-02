program save_data
  real :: rainfall(3) = (/ 5.5, 2.0, 8.1 /)
  integer :: i
  open(unit=10, file='rainfall.txt', status='unknown')
  do i = 1, 3
    write(10, *) 'Day', i, ':', rainfall(i)
  end do
  close(10)
end program save_data
