program mpi_hello
  use mpi
  integer :: ierr, rank, size

  call MPI_Init(ierr)
  call MPI_Comm_rank(MPI_COMM_WORLD, rank, ierr)
  call MPI_Comm_size(MPI_COMM_WORLD, size, ierr)

  print *, 'Hello from rank', rank, 'of', size

  call MPI_Finalize(ierr)
end program mpi_hello
