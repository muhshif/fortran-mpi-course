program temp_if
  real :: temp
  temp = 26.5

  if (temp > 25.0) then
    print *, 'It''s hot!'
  else
    print *, 'It''s cool.'
  end if
end program temp_if
