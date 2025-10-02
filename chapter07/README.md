# Chapter 7: MPI in ICON-CLM – Inside the Climate Model 🌀

Welcome to **Chapter 7** of *Fortran & MPI for Climate Modeling*! You now understand Fortran and MPI basics. In this chapter, we dive into the **real-world use of MPI inside ICON-CLM** — the climate model you work with.

We’ll explore how ICON uses domain decomposition, halo exchanges, and message passing to simulate the Earth efficiently across many processors.

---

## 🎯 What You'll Learn

* How ICON-CLM splits the global grid across MPI ranks
* Where MPI is used in ICON's Fortran source code
* How halo exchanges and ghost cells work
* How to trace data flow across ranks

---

## 🌍 Step 1: Domain Decomposition in ICON

ICON uses a **cubed-sphere grid** broken into **patches, tiles, and cells**. Each MPI process is responsible for a part of the domain.

📌 For example:

* Rank 0 → patch 1
* Rank 1 → patch 2
* ... and so on

This is done so different regions of the Earth can be processed in parallel.

---

## 🔍 Step 2: Finding MPI in ICON Code

ICON is written in **modular Fortran**, and MPI is used deep inside.

### Common files to explore:

```
src/atm_dyn_iconam/mo_dyn_iconam.f90
src/share/mo_communication.f90
src/share/mo_parallel_config.f90
```

### Things to search for:

* `MPI_Send`, `MPI_Recv`, `MPI_Isend`, `MPI_Irecv`
* `comm_rank`, `comm_size`
* `init_communication`, `exchange_data`

Use `grep` or an IDE to look for those calls.

---

## 🧵 Step 3: Halo Exchange Example

Each MPI process owns its local grid, but needs data from neighbors. This is where **halo exchange** happens.

For example, temperature near the border of a patch depends on values from adjacent patches.

ICON handles this with routines like:

* `exchange_halo`
* `update_ghost_cells`
* `init_halo_setup`

---

## 🧪 Try It Yourself

1. Open the file `mo_communication.f90`
2. Find a subroutine like `exchange_data`
3. Add a `print *, 'Rank', rank, 'sending data to neighbor'`
4. Recompile and run a small ICON test case with 2-4 MPI ranks

📌 Watch how MPI processes print their activity — this helps you trace **who talks to who**.

---

## 📦 Files in This Chapter

```
chapter07/
├── trace_icon_patch.f90   (your custom tracer)
├── notes_on_icon_mpi.md   (explains halo + MPI layout)
└── grep_mpi_icon.sh        (helper script to explore MPI usage)
```

---

## 🧠 Why This Matters

This chapter connects your MPI skills to the real model. You now:

* Understand ICON’s parallel layout
* Know where to add diagnostics
* Can debug or modify real ICON components

This is a huge step toward real scientific computing.

---

## ⏭️ Coming Next: Capstone Project

Time to bring it all together — Fortran + MPI + climate modeling in your own mini simulation! 🌡️🌐

---
