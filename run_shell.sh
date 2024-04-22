#!/bin/bash

for r in 0.24 0.26 0.5 0.74 0.748 0.83; do
# Loop over the values of x_initial
for x in 0.9 0.6 0.4 0.2; do
    echo "Simple trajecotries for x=4.0*r*x*(1.0-x) and r=${r} and x=${x}:"
    # Run the Fortran program with the current values of r and x
    ./chaos-trajectory "$r" "$x" > data/"chaos_r${r}_x${x}.dat"

    # Echo the output file name
    echo "Output saved to: chaos_r${r}_x${x}.dat"
done
done

echo "Running the bifurcation code for x=4.0*r*x*(1.0-x) and 0.7<r<1"
./chaos-bifurcation > data/bifurcation.dat
echo "Output saved to: bifurcation.dat"

echo "Running the chaos trajectory differences for x=4.0*r*x*(1.0-x)"
./chaos-trajectory-diff

for r in 0.7 0.77 0.85 0.875 0.888 0.892; do
echo "Running the code to generate for f(x)=4.0*r*x*(1.0-x) and r=${r}"
    ./chaos-fx-population "$r" > data/"fx_${r}.dat"
    echo "Output saved to: data/fx_${r}.dat"
done

for r_value in 0.7 0.85 0.875; do
    echo "Running recursive relation for x=4.0*r*x*(1.0-x) and 40 steps with x=0.9 and r=$r_value"
    ./chaos-recursive "$r_value" > data/"iterations_r_${r_value}.dat"
    echo "The results are in data/iterations_r_${r_value}.dat"
done

# Iterate over different values of r
for r in 0.7 0.77 0.85 0.875 0.888; do
    # Iterate over different values of num
    for num in 1 2 3 4 8; do
        echo "Running f(f(x)) f(x)=4.0*r*x*(1.0-x) for r = $r and num_iterations = $num"
        ./chaos-fx-composition $r $num > data/f2_test_${r}_${num}.dat
        echo "Results are in data/f2_test_${r}_${num}.dat"
    done
done

for r in 1.5 2 2.7; do
echo "Running the bifurcation code for x=x*exp(r *(1.0-x)) and r=${r}"
./chaos-fixed-r-bifurcation-exp "$r" > data/"bifurcation_exp_${r}.dat"
echo "Output saved to: data/bifurcation_exp_${r}.dat"
done

echo "Running the bifurcation code for x=x*exp(r *(1.0-x)) for 1.8<r<4"
./chaos-bifurcation-exp > data/"bifurcation_exp.dat"
echo "Output saved to: data/bifurcation_exp.dat"


for r in 1.5 2 2.7; do
    echo "Running the code to generate f(x) for r=${r} and f(x)=x*exp(r *(1.0-x))"
    ./chaos-fx-exp "$r" > data/"fx_exp_${r}.dat"
    echo "Output saved to: data/fx_exp_${r}.dat"
done

# Iterate over different values of r
for r in 1.5 2 2.4 2.7; do
    # Iterate over different values of num
    for num in 1 2 3 4 8; do
        echo "Running f(f(x)) for for f(x)=x*exp(r *(1.0-x)), r = $r and num_iterations = $num"
        ./chaos-fx-composition-exp $r $num > data/fx_exp_${r}_${num}.dat
        echo "Results are in data/fx_exp_${r}_${num}.dat"
    done
done

for r_value in 1.5 2 2.4 2.7; do
    echo "Running recursive relation for 60 steps for f(x)=x*exp(r *(1.0-x)) with x=0.4 and r=$r_value"
    ./chaos-recursive-exp "$r_value" > data/"iterations_exp_r_${r_value}.dat"
    echo "The results are in data/iterations_exp_r_${r_value}.dat"
done

echo "Running the bifurcation code for x=rsin(x*pi) for x=0.4 and 1.8<r<4"
./chaos-bifurcation-sin > data/"bifurcation_sin.dat"
echo "Output saved to: data/bifurcation_sin.dat"

echo "For visualization refer to the jupyter notebook plot Plots.ipynb"





