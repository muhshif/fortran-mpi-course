! MPI wrapper to initialize and finalize MPI safely
module mpi_wrapper
  use mpi
  implicit none
  integer :: rank, size, ierr

contains

  subroutine init_mpi()
    call MPI_Init(ierr)
    call MPI_Comm_rank(MPI_COMM_WORLD, rank, ierr)
    call MPI_Comm_size(MPI_COMM_WORLD, size, ierr)
  end subroutine init_mpi

  subroutine finalize_mpi()
    call MPI_Finalize(ierr)
  end subroutine finalize_mpi

end module mpi_wrapper
