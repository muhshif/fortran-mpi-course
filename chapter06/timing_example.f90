program timing_example
  use mpi
  real :: t_start, t_end
  integer :: ierr

  call MPI_Init(ierr)
  t_start = MPI_Wtime()

  call sleep(2)  ! Simulate some work taking 2 seconds

  t_end = MPI_Wtime()
  print *, 'Elapsed time:', t_end - t_start, 'seconds'

  call MPI_Finalize(ierr)
end program timing_example
