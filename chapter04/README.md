# Chapter 4: Working with Files and Custom Data Types

Welcome to **Chapter 4** of *Fortran & MPI for Climate Modeling*! In this chapter, you’ll learn how to **save your simulation results**, **read data from files**, and **define your own data structures** — just like in real scientific models.

These are essential skills for handling climate data, especially when working with outputs like temperature grids or weather station records.

---

## 🎯 What You’ll Learn

* How to write output to a text file
* How to read input from a text file
* How to define and use your own data type (called a *derived type*)

---

## 💾 Step 1: Writing to a File

Let’s save some numbers to a text file.

### ✅ Example: Save Rainfall Data

```fortran
program save_data
  real :: rainfall(3) = (/ 5.5, 2.0, 8.1 /)
  integer :: i
  open(unit=10, file='rainfall.txt', status='unknown')
  do i = 1, 3
    write(10, *) 'Day', i, ':', rainfall(i)
  end do
  close(10)
end program save_data
```

This creates a file called `rainfall.txt` like:

```
 Day 1 : 5.5
 Day 2 : 2.0
 Day 3 : 8.1
```

---

## 📖 Step 2: Reading from a File

### ✅ Example: Read Temperatures from File

Suppose you have a file `temps.txt` with:

```
10.5
12.1
14.3
```

You can read it:

```fortran
program read_data
  real :: temps(3)
  integer :: i
  open(unit=11, file='temps.txt', status='old')
  do i = 1, 3
    read(11, *) temps(i)
  end do
  close(11)
  print *, 'Temperatures:', temps
end program read_data
```

---

## 🌦️ Step 3: Defining Your Own Type

This is like making a custom object (e.g. a weather station record).

### ✅ Example: WeatherStation Type

```fortran
module station_mod
  type :: WeatherStation
    character(len=20) :: id
    real :: temperature, humidity
  end type WeatherStation
end module station_mod
```

### ✅ Use It:

```fortran
program use_station
  use station_mod
  type(WeatherStation) :: station

  station%id = 'STN001'
  station%temperature = 26.5
  station%humidity = 75.0

  print *, 'Station:', station%id
  print *, 'Temp:', station%temperature
  print *, 'Humidity:', station%humidity
end program use_station
```

---

## ✅ Your Exercises

1. Create a file called `rain.txt` and write 7 days of data into it.
2. Write a program that reads 5 values from `wind.txt` and prints the average.
3. Define a type called `GridCell` with temperature, pressure, and humidity. Print its values.

---

## 📁 Files in This Chapter

```
chapter04/
├── save_data.f90
├── read_data.f90
├── station_mod.f90
├── use_station.f90
├── rain.txt (your output file)
├── temps.txt (used for testing)
└── wind.txt (for exercise)
```

---

## ⏭️ Coming Next: MPI Begins!

In Chapter 5, you’ll start learning how to **run your programs on multiple cores using MPI**. This is where climate modeling becomes high-performance. 🖥️🚀

---
