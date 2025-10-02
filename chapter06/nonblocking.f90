program nonblocking
  use mpi
  integer :: rank, ierr, send_val, recv_val
  integer :: req_send, req_recv, stat(MPI_STATUS_SIZE)

  call MPI_Init(ierr)
  call MPI_Comm_rank(MPI_COMM_WORLD, rank, ierr)

  if (rank == 0) then
    send_val = 77
    call MPI_Isend(send_val, 1, MPI_INTEGER, 1, 0, MPI_COMM_WORLD, req_send, ierr)
  else if (rank == 1) then
    call MPI_Irecv(recv_val, 1, MPI_INTEGER, 0, 0, MPI_COMM_WORLD, req_recv, ierr)
    call MPI_Wait(req_recv, stat, ierr)
    print *, 'Rank 1 got', recv_val
  end if

  call MPI_Finalize(ierr)
end program nonblocking
