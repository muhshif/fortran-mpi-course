! Example code stub to trace ICON MPI rank and patch assignment
program trace_icon_patch
  use mpi
  implicit none
  integer :: rank, size, ierr

  call MPI_Init(ierr)
  call MPI_Comm_rank(MPI_COMM_WORLD, rank, ierr)
  call MPI_Comm_size(MPI_COMM_WORLD, size, ierr)

  print *, 'MPI rank:', rank, 'of', size, 'running patch ID: [mock_patch_id]'

  call MPI_Finalize(ierr)
end program trace_icon_patch
