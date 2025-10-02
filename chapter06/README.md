# Chapter 6: Intermediate MPI – Communication and Performance 🚀

Welcome to **Chapter 6** of *Fortran & MPI for Climate Modeling*! In the last chapter, you learned how to run programs on multiple processors. Now, we dive deeper into MPI with **collective communication**, **non-blocking sends**, and **performance profiling**.

This is what makes climate models like ICON scale across hundreds or even thousands of cores.

---

## 🎯 What You'll Learn

* Use `MPI_Bcast`, `MPI_Scatter`, and `MPI_Gather`
* Send/receive data without blocking (non-blocking communication)
* Profile and time your parallel programs

---

## 📣 Step 1: Broadcasting with `MPI_Bcast`

Send one value from **rank 0** to **all other processes**.

```fortran
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
```

---

## 📦 Step 2: Scatter and Gather

Distribute pieces of an array across ranks (scatter), then collect results back (gather).

```fortran
program scatter_gather
  use mpi
  integer :: rank, size, ierr
  integer :: full_data(4), part_data

  call MPI_Init(ierr)
  call MPI_Comm_rank(MPI_COMM_WORLD, rank, ierr)
  call MPI_Comm_size(MPI_COMM_WORLD, size, ierr)

  if (rank == 0) full_data = (/10, 20, 30, 40/)
  call MPI_Scatter(full_data, 1, MPI_INTEGER, part_data, 1, MPI_INTEGER, 0, MPI_COMM_WORLD, ierr)

  part_data = part_data * 2  ! Modify

  call MPI_Gather(part_data, 1, MPI_INTEGER, full_data, 1, MPI_INTEGER, 0, MPI_COMM_WORLD, ierr)

  if (rank == 0) print *, 'Gathered:', full_data

  call MPI_Finalize(ierr)
end program scatter_gather
```

---

## 🧵 Step 3: Non-Blocking Send/Receive

Instead of waiting, you can start sending and keep doing other work.

```fortran
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
```

---

## ⏱️ Step 4: Performance Timing

Use `MPI_Wtime()` to measure how long code takes.

```fortran
real :: t_start, t_end
t_start = MPI_Wtime()
! ... run something ...
t_end = MPI_Wtime()
print *, 'Time:', t_end - t_start, 'seconds'
```

You can also try profiling tools like `gprof`, `Score-P`, or `mpiP`.

---

## ✅ Exercises

1. Modify `scatter_gather` to compute the sum of array values after doubling.
2. Replace `MPI_Send` with `MPI_Isend` in your previous example and compare timing.
3. Try adding timers to your ICON experiment and analyze which parts are slow.

---

## 📁 Files in This Chapter

```
chapter06/
├── broadcast_example.f90
├── scatter_gather.f90
├── nonblocking.f90
└── timing_example.f90 (your own)
```

---

## ⏭️ Coming Next: ICON-Specific MPI Walkthroughs

We’ll look directly inside ICON source code and trace MPI calls, halo exchanges, and how domains are divided.

You’re now ready to study the internals of real climate models! 🌍🧵

---
