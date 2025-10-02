# Chapter 3: Reusing Code with Functions, Subroutines, and Modules

Welcome to **Chapter 3** of our *Fortran & MPI for Climate Modeling* course! 🧪 This chapter helps you write **clean, reusable code** using **functions**, **subroutines**, and **modules** — just like real climate models (like ICON-CLM) do.

---

## 🎯 What You'll Learn

* What functions and subroutines are
* How to pass inputs and get outputs
* The difference between a function and a subroutine
* How to group reusable code into modules

These tools help you organize your programs like a scientist 🧑‍🔬.

---

## ⚙️ Step 1: What is a Function?

A **function** is a small program that takes something in ➜ gives something back.

### ✅ Example: Square of a Number

```fortran
function square(n) result(sq)
  integer, intent(in) :: n
  integer :: sq
  sq = n * n
end function square
```

You can now use `square(4)` to get `16`.

---

## 🔧 Step 2: What is a Subroutine?

A **subroutine** is like a function, but it can do more than just return one value. It can change many things.

### ✅ Example: Calculate Mean and Std Dev

```fortran
subroutine stats(arr, mean, std)
  real, intent(in) :: arr(:)
  real, intent(out) :: mean, std
  integer :: n
  n = size(arr)
  mean = sum(arr)/n
  std = sqrt(sum((arr - mean)**2)/n)
end subroutine stats
```

---

## 📦 Step 3: Grouping with Modules

Instead of putting all code in one file, we group our tools into a **module** and use it when needed.

### ✅ Example: MathTools Module

```fortran
module mathtools
contains
  function square(n) result(sq)
    integer, intent(in) :: n
    integer :: sq
    sq = n * n
  end function square
end module mathtools
```

### ✅ Using a Module

```fortran
program use_module
  use mathtools
  print *, '5 squared is', square(5)
end program use_module
```

---

## ✅ Your Exercises

1. Write a function `cube(x)` that returns the cube of a number.
2. Write a subroutine that takes an array and returns the min and max.
3. Create a module `climatetools` with useful weather functions.
4. Write a main program that uses your module.

---

## 📁 Files You Should Have

```
chapter03/
├── square_function.f90
├── stats_subroutine.f90
├── mathtools.f90
├── use_module.f90
├── climatetools.f90 (your own)
└── main_program.f90 (your own)
```

---

## 🧠 Why This Matters

Climate models like ICON use hundreds of **modules** and **subroutines** to keep their code clean and manageable.

If you understand this chapter, you're ready to:

* Explore real model files
* Create building blocks for your own tools

