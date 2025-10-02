program mpi_barrier
  use mpi
  integer :: rank, ierr
  real :: start_time, end_time

  call MPI_Init(ierr)
  call MPI_Comm_rank(MPI_COMM_WORLD, rank, ierr)

  call MPI_Barrier(MPI_COMM_WORLD)  ! Wait for all ranks here
  start_time = MPI_Wtime()

  print *, 'Hello from rank', rank

  call MPI_Barrier(MPI_COMM_WORLD)  ! Wait again
  end_time = MPI_Wtime()

  if (rank == 0) then
    print *, 'Total time taken:', end_time - start_time, 'seconds'
  end if

  call MPI_Finalize(ierr)
end program mpi_barrier
