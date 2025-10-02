program mpi_send_recv
  use mpi
  integer :: rank, ierr, message, status(MPI_STATUS_SIZE)

  call MPI_Init(ierr)
  call MPI_Comm_rank(MPI_COMM_WORLD, rank, ierr)

  if (rank == 0) then
    message = 42
    call MPI_Send(message, 1, MPI_INTEGER, 1, 0, MPI_COMM_WORLD, ierr)
  else if (rank == 1) then
    call MPI_Recv(message, 1, MPI_INTEGER, 0, 0, MPI_COMM_WORLD, status, ierr)
    print *, 'Rank 1 received:', message
  end if

  call MPI_Finalize(ierr)
end program mpi_send_recv
