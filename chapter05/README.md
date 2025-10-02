# Chapter 5: Introduction to MPI – Run Your Code on Many Cores 🧵🖥️

Welcome to **Chapter 5** of *Fortran & MPI for Climate Modeling*! In this chapter, we enter the exciting world of **parallel programming** using **MPI (Message Passing Interface)**.

MPI is how climate models like **ICON** run across hundreds or thousands of processors. You’ll now learn how to make your Fortran programs run faster by using more than one core — even on your laptop.

---

## 🎯 What You’ll Learn

* What MPI is and why we need it
* How to compile and run MPI programs
* How to get the number of processes and each process’s rank
* How to send messages between processes

---

## 🧠 What is MPI?

> MPI lets programs **run on multiple processors** and **talk to each other**.

In climate models, each processor might simulate a chunk of the planet — and they **exchange data** with their neighbors.

---

## ⚙️ Step 1: Compile & Run an MPI Program

You’ll need MPI installed (use `OpenMPI` or `MPICH`).

### ✅ Install (Ubuntu):

```bash
sudo apt install openmpi-bin libopenmpi-dev
```

### ✅ Compile with mpif90:

```bash
mpif90 mpi_hello.f90 -o mpi_hello
```

### ✅ Run with 4 processes:

```bash
mpirun -np 4 ./mpi_hello
```

---

## ✨ Step 2: Your First MPI Program

```fortran
program mpi_hello
  use mpi
  integer :: ierr, rank, size

  call MPI_Init(ierr)
  call MPI_Comm_rank(MPI_COMM_WORLD, rank, ierr)
  call MPI_Comm_size(MPI_COMM_WORLD, size, ierr)

  print *, 'Hello from rank', rank, 'of', size

  call MPI_Finalize(ierr)
end program mpi_hello
```

🧪 This prints something like:

```
 Hello from rank 0 of 4
 Hello from rank 1 of 4
 Hello from rank 2 of 4
 Hello from rank 3 of 4
```

Each process runs the same program, but has a **different rank** (ID).

---

## 📨 Step 3: Send and Receive Messages

```fortran
program mpi_send_recv
  use mpi
  integer :: rank, size, ierr, tag, status(MPI_STATUS_SIZE)
  integer :: message

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
```

---

## ✅ Your Exercises

1. Modify `mpi_hello.f90` to print a unique message from each rank
2. Use `MPI_Reduce` to sum 1 number from each rank and print the total from rank 0
3. Add `MPI_Barrier` and measure how long the program waits

---

## 📁 Files in This Chapter

```
chapter05/
├── mpi_hello.f90
├── mpi_send_recv.f90
├── mpi_reduce.f90 (your exercise)
└── mpi_barrier.f90 (your exercise)
```

---

## 🧠 Why It Matters

MPI is what makes supercomputing possible. If you want to:

* Run simulations faster
* Understand ICON’s parallel layout
* Analyze climate output from multiple cores

...you need to know MPI. This is where you become a real climate computing expert.

---

## ⏭️ Coming Next: Advanced MPI & Performance Tuning

You’ll learn `MPI_Reduce`, `MPI_Bcast`, and `non-blocking` communication. We'll also introduce basic profiling.

---
