program mpi_reduce
  use mpi
  integer :: rank, size, ierr
  integer :: local_val, global_sum

  call MPI_Init(ierr)
  call MPI_Comm_rank(MPI_COMM_WORLD, rank, ierr)
  call MPI_Comm_size(MPI_COMM_WORLD, size, ierr)

  local_val = rank + 1  ! Each rank contributes its number (1, 2, 3, ...)

  call MPI_Reduce(local_val, global_sum, 1, MPI_INTEGER, MPI_SUM, 0, MPI_COMM_WORLD, ierr)

  if (rank == 0) then
    print *, 'Total sum from all ranks:', global_sum
  end if

  call MPI_Finalize(ierr)
end program mpi_reduce
