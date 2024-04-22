# 1D Chaos Investigation 

## Overview

This repository contains scripts for modeling one-dimensional chaos and exploring different behaviors for various recursive equations. The scripts included in this project perform trajectory simulations, bifurcation analysis, and logistics mapping.

## Usage

To run the scripts, ensure that the shell script `run_shell.sh` is executable. Then, execute the following command:

```bash
./run_shell.sh
```

This shell script iterates through different values of parameters and runs the corresponding Fortran programs. The results are saved in the data/ directory.

## Scripts

- trajectory.sh: Generates simple trajectories for the given equations and parameter values.
- bifurcation.sh: Performs bifurcation analysis for the specified range of parameter values.
- chaos-trajectory-diff: Computes differences in chaos trajectories.
- chaos-fx-population: Generates population distributions for the specified recursive equation and parameter values.
- chaos-recursive: Runs a recursive relation for a specified number of steps.
- chaos-fx-composition: Computes compositions of functions for the given recursive equation and number of iterations.
- chaos-fixed-r-bifurcation-exp: Performs bifurcation analysis for a fixed value of r and exponential recursive equation.
- chaos-bifurcation-exp: Performs bifurcation analysis for the specified range of r values and exponential recursive equation.
- chaos-fx-exp: Generates function plots for the exponential recursive equation.
- chaos-fx-composition-exp: Computes compositions of functions for the exponential recursive equation.
- chaos-recursive-exp: Runs a recursive relation for a specified number of steps for the exponential recursive equation.
- chaos-bifurcation-sin: Performs bifurcation analysis for the sine recursive equation.

## Visualization

For visualization and plotting of results, refer to the Jupyter Notebook `Plots.ipynb`.

## Contact

For inquiries or further information, please contact vikentiy.pashuk@gmail.com.

## Notes

Ensure that the shell script `run_shell.sh` is executable.  
The user can modify the parameters and equations in the shell script to explore different scenarios.  
Use the `make` command before executing the shell script to compile the Fortran programs.  
