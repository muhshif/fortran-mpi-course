# 🌀 Fortran & MPI for Climate Modeling: A Beginner-Friendly Course (fortran-mpi-course)

Welcome to the official repository for **"Learning Fortran & MPI for Climate Modeling"**, a hands-on course designed for atmospheric scientists, climate researchers, and students who want to gain practical programming skills in scientific computing.

🌍 **No prior coding experience required.** We start from the basics and build up to real-world applications, including parallel programming and exploring the structure of models like ICON-CLM.

---

## 📘 What You Will Learn

| Chapter | Topic                        | Key Concepts                                |
| ------- | ---------------------------- | ------------------------------------------- |
| 1       | Getting Started with Fortran | Writing your first Fortran code             |
| 2       | Loops, Arrays, and Control   | `do` loops, arrays, `if`, `select`          |
| 3       | Functions and Subroutines    | Code reuse with modular programming         |
| 4       | Files and Data Structures    | File I/O, derived types (e.g. weather data) |
| 5       | Intro to MPI                 | Run your code on multiple processors        |
| 6       | Communicating with MPI       | `MPI_Send`, `MPI_Recv`, `MPI_Reduce`, etc.  |
| 7       | Real MPI in ICON-CLM         | Parallelism in climate models               |
| 8       | Capstone Project             | Build your own mini model or tool           |

Each chapter includes:

* 🧪 Sample Fortran programs
* 📝 Practice exercises
* 📄 README walkthroughs
* 🎯 Real-world scientific relevance

---

## 🛠️ Tools You'll Use

* `gfortran` — Fortran compiler
* `OpenMPI` — MPI library for parallel programming
* `NetCDF` (optional) — for climate data formats
* `make`, `fpm`, or `cmake` — to compile code
* `Python + xarray` — for optional post-processing

---

## 💾 Repository Structure

```
fortran-mpi-course/
├── chapter01/       # Getting started
├── chapter02/       # Arrays and loops
├── chapter03/       # Subroutines and modular code
├── chapter04/       # Files and types
├── chapter05/       # MPI basics
├── chapter06/       # MPI communication
├── chapter07/       # ICON-CLM MPI internals
├── chapter08/       # Capstone project
└── README.md        # Course overview (this file)
```

---

## 📚 Why Learn This?

Climate models like **ICON-CLM**, **WRF**, and **ECHAM** are all written in Fortran and use **MPI** to run on supercomputers. By learning Fortran + MPI, you’ll be able to:

* Read and modify model code
* Understand diagnostics and domain decomposition
* Build your own simulation tools
* Contribute meaningfully to research projects

---

## 🧑‍💻 Who Made This?

This course was created by a postdoctoral researcher in atmospheric sciences, as part of a personal learning and teaching initiative. All content is free to use, adapt, and share.

If you'd like to contribute or suggest additions, feel free to open a pull request or issue!

---

Happy modeling! ☁️☀️🌧️
