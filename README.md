# sph_matlab: A MATLAB code for SPH simulations
 
This is a collection of MATLAB files for SPH simulations.

The code is mainly based on the corresponding FORTRAN code contained in:
[1] Liu GR, Liu MB (2003) Smoothed particle hydrodynamics: a meshfree
    particle method. World Scientific, Singapore.

If there are any problems or bugs, feel free to email me at Marco.Sutti (at) unige.ch


## I) Version History

- Ver 1, 11 July 2021: initial release.


## II) Contents

- eos: contains the equations of state for ideal gas and artificial water.
- examples: contains parameters and data for the 1D shock tube and the
            2D shear cavity problems.
- postprocessing: contains utilities for plotting and visualizing data.
- results: contains the matfiles generated by *Driver_SPH.m*.
- utilities: contains all the core functions for the SPH simulations.
- videos: contains videos of the simulations.


## III) Installation and Usage

No installation is required. Simply use the *Driver_SPH.m* to perform an
SPH simulation. The results of the simulations will be saved into matfiles
in the results folder. 
The script *Driver_Animation.m* can be used to generate a video of 
the simulation. The script *Driver_Shocktube_Profiles.m* generates the 
profile plots for the shock tube example.


## IV) License

Code written by me is GPL licensed.
