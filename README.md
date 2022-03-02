# Inhomogeneity correction using SPM in bash
This is a script to run SPM12's inhomogeneity correction from bash. This is done by running MATLAB in -nodisplay mode. Two scripts are included to process 
* a single file
* an entire BIDS structured folder

## Software needed
* MATLAB
* SPM12

## Instructions
Add the folder to your MATLAB path. Please change the path in preproc.m on line 19 to point to the tissue probability model of SPM, accordingly.

Parameters for the inhomogeneity correction can be changed at the beginning of preproc.m as well. Parameters include:
* FWHM
* Regularization
* Sampling distance
* Writing of segmentation files to disk
* Creation of a brain mask

Details on what the parameters do are given in "biasCorrection.m".

## How to use
* Follow the instructions.
* (For convienece) Add the included bash scripts to your $PATH variable
* To process a single file run:
  * "removeBiasfield.sh \<full path to your NIfTI file\>"
* To process an entire BIDS folder run:
  * "removeBiasfield.sh \<full path to your BIDS folder\>"

## Output
Data will be output in the folder were the input is stored. The suffix "_biasCorrected" will be added.

The WM, GM, and CSF segmentation follow the typical SPM nomenclature using the prefix "c1_", "c2", and "c3_", respectively.

For the brain mask the suffix "_brainmask" will be added.
  
## Version
Version 1.0 (02.03.2022)

## Contact
Falk Luesebrink (falk dot luesebrink at ovgu dot de)
