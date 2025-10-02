program scatter_gather
  use mpi
  integer :: rank, size, ierr
  integer :: full_data(4), part_data

  call MPI_Init(ierr)
  call MPI_Comm_rank(MPI_COMM_WORLD, rank, ierr)
  call MPI_Comm_size(MPI_COMM_WORLD, size, ierr)

  if (rank == 0) full_data = (/10, 20, 30, 40/)
  call MPI_Scatter(full_data, 1, MPI_INTEGER, part_data, 1, MPI_INTEGER, 0, MPI_COMM_WORLD, ierr)

  part_data = part_data * 2

  call MPI_Gather(part_data, 1, MPI_INTEGER, full_data, 1, MPI_INTEGER, 0, MPI_COMM_WORLD, ierr)

  if (rank == 0) print *, 'Gathered:', full_data

  call MPI_Finalize(ierr)
end program scatter_gather
