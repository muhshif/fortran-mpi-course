# Chapter 2: Loops, Arrays, and Control Statements

Welcome to Chapter 2 of the **Fortran & MPI for Climate Modeling** course! This chapter helps you do repeated tasks, store climate data, and make decisions — just like a real climate model does internally.

---

## 🚀 What You'll Learn

* `do` loops to repeat actions (like simulating multiple days)
* Arrays to store temperature, rainfall, and more
* `if` and `select case` to make logical decisions

---

## 🧪 Example Programs

Included in this folder:

### ✅ loop_example.f90

```fortran
program loop_example
  integer :: i
  do i = 1, 5
    print *, 'Day', i
  end do
end program loop_example
```

### ✅ temp_array.f90

```fortran
program temp_array
  real :: temps(5)
  integer :: i

  do i = 1, 5
    temps(i) = 15.0 + i  ! Simulated temperature data
  end do

  print *, 'Temperatures:'
  print *, temps
  print *, 'Max:', maxval(temps)
  print *, 'Mean:', sum(temps)/5
end program temp_array
```

### ✅ temp_if.f90

```fortran
program temp_if
  real :: temp
  temp = 26.5

  if (temp > 25.0) then
    print *, 'It''s hot!'
  else
    print *, 'It''s cool.'
  end if
end program temp_if
```

---

## ✅ Your Exercises

1. Create an array of rainfall values and print the total rainfall.
2. Write a program to print all even numbers from 1 to 50.
3. Make a 7-day temperature array and use `if` to label each day as hot/cold.

---

## 📁 Folder Contents

```text
chapter02/
├── loop_example.f90
├── temp_array.f90
├── temp_if.f90
└── rainfall_total.f90  ← Your custom exercise (start from scratch!)
```

---

## 🧠 Tip

Use loops and arrays any time you need to simulate climate variables over multiple steps — for example:

* Time steps in a forecast
* Grid points in a domain
* Days, hours, months, etc.

---
