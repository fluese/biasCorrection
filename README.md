# Inhomogeneity correction using SPM in bash
This is a script to run SPM12's inhomogeneity correction from bash. This is done by running MATLAB in -nodisplay mode. Two scripts are included to process 
* a single file
* an entire BIDS structured folder

## Instructions
It is essential to point to SPM12's tissue probability model. Please change the path in preproc.m on line 19 accordingly.

Parameters for the inhomogeneity correction can be changed in preproc.m as well.

## Functionalities
Beyond inhomogeneity correction the script allows to create a brainmask based on the WM, GM, and CSF segmentation created alongside the correction process.

## Version
Version 1.0 (02.03.2022)

## Contact
Falk Luesebrink (falk dot luesebrink at ovgu dot de)
