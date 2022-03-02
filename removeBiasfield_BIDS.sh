#!/bin/bash
procPath=$1

echo ""
echo "------------------------------------------------------------------------------"
echo "| Performing bias field correction using SPM12"
echo "------------------------------------------------------------------------------"

find "${procPath}" -name "*T1w.nii.gz" > "${procPath}"/files.txt

# Better create a loop in matlab which reads in files.txt for processing -> will not open up a new instance of matlab everytime.
# Otherwise use GNU parallel to parallelize the bias field correction

while IFS= read files
do
	# Create a backup of the file before running bias field correction
	fname=$(echo "${files}" | cut -f 1 -d '.')
	cp "${files}" "${fname}"_backup.nii.gz
	matlab -nosplash -nodisplay -r "preproc('"${files}"'); exit;"
done < "${procPath}"/files.txt
