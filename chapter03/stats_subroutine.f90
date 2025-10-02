subroutine stats(arr, mean, std)
  real, intent(in) :: arr(:)
  real, intent(out) :: mean, std
  integer :: n
  n = size(arr)
  mean = sum(arr)/n
  std = sqrt(sum((arr - mean)**2)/n)
end subroutine stats
