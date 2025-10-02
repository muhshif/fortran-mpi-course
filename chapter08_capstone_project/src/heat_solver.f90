! 2D Heat Diffusion Solver (MPI)
program heat_solver
  use mpi
  implicit none
  integer :: ierr, rank, size

  call MPI_Init(ierr)
  call MPI_Comm_rank(MPI_COMM_WORLD, rank, ierr)
  call MPI_Comm_size(MPI_COMM_WORLD, size, ierr)

  print *, 'Running 2D heat solver on rank', rank, 'of', size

  ! Placeholder for heat diffusion logic

  call MPI_Finalize(ierr)
end program heat_solver
