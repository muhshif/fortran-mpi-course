# Notes on MPI Usage in ICON-CLM

## 📦 Key Files
- `mo_communication.f90` — handles sending/receiving fields
- `mo_parallel_config.f90` — MPI rank configuration
- `mo_dyn_iconam.f90` — dynamics core using MPI communication

## 🧵 Halo Exchanges
- `exchange_halo` and `update_ghost_cells` are used to exchange edge cell data.
- Each MPI rank updates its ghost zones with neighbors' values.

## 🧠 Tips
- Use `print *, 'Rank:', rank` in subroutines to trace execution.
- Run with `mpirun -np 4` to see how multiple ranks interact.
