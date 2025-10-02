# Chapter 8: Capstone Project – Build Your Own Mini Climate Model 🌍💡

Congratulations! You’ve made it to **Chapter 8**, the final chapter of *Fortran & MPI for Climate Modeling*. 🎉

Now it’s time to bring everything together into a **Capstone Project** where you’ll:

* Write real Fortran code
* Use MPI for parallelism
* Simulate or analyze something climate-related

---

## 🎯 Project Options (Choose One or More)

### 🌡️ Option A: 2D Heat Diffusion with MPI

Build a 2D grid model that simulates heat flow over time using finite differences.

* Use MPI to divide the grid between processes
* Exchange ghost cells each timestep
* Plot results using Python or `ncview`

### 📊 Option B: ICON Output Analyzer

Write a Fortran program to:

* Open a NetCDF file from ICON
* Compute domain-average temperature and precipitation
* Compare with results from Python (`xarray`) for validation

### ⚡ Option C: Hybrid MPI + OpenMP Solver

Take a loop-heavy numerical kernel (e.g., Laplace solver) and:

* Use MPI across processes
* Use OpenMP threads inside each rank
* Measure speedup vs serial version

---

## ✅ What You Should Submit

* `README.md` explaining your project and results
* Fortran source code
* Any input or output data (e.g. NetCDF, text files)
* Optional: Python scripts for visualization or checking results
* A short PDF or Markdown report with:

  * What you built
  * How MPI was used
  * Any graphs or performance numbers

---

## 🧠 Suggested File Structure

```
capstone_project/
├── src/
│   ├── heat_solver.f90
│   └── mpi_wrapper.f90
├── data/
│   └── initial_conditions.txt
├── output/
│   └── final_state.txt
├── plot/
│   └── visualize.py
├── report.md
└── README.md
```

---

## 🛠️ Tools You Can Use

* Fortran: `gfortran`, `mpif90`
* NetCDF: `netcdf-fortran`, `ncdump`, `nco`
* Python (optional): `matplotlib`, `xarray`, `cartopy`

---

## 🏁 How to Get Started

1. Choose a project idea from above
2. Create a GitHub repo or folder for it
3. Reuse and adapt code from previous chapters
4. Start small — test on a 2x2 grid or one time step
5. Add one feature at a time: parallelism, input/output, timing...

---

## 🧑‍🔬 This Is What Real Scientists Do

Your capstone is more than a learning exercise — it's a real scientific coding project. You can:

* Publish it on GitHub
* Share it in a blog post
* Use it as part of your portfolio

🌟 You're now ready to work on real climate models like ICON with confidence.

---

## 🎉 Final Message

You started with zero Fortran and MPI. Now you:

* Write modular Fortran code
* Run MPI programs on many cores
* Understand how climate models parallelize the Earth

This is just the beginning. Keep exploring, building, and sharing. The scientific HPC world needs more experts like you. 💻🌍

---
