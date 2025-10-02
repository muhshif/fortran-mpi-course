program broadcast_example
  use mpi
  integer :: rank, size, ierr, root, value

  call MPI_Init(ierr)
  call MPI_Comm_rank(MPI_COMM_WORLD, rank, ierr)

  root = 0
  if (rank == root) value = 123

  call MPI_Bcast(value, 1, MPI_INTEGER, root, MPI_COMM_WORLD, ierr)

  print *, 'Rank', rank, 'received value', value

  call MPI_Finalize(ierr)
end program broadcast_example
