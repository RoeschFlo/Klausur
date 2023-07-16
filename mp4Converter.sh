#!/bin/bash
#
#Author: Rösch Florian
#Name: mp4Converter / B.6 Videofiles_konvertieren
#Date:07.14.2023 (m.d.y)
#This script converts wmv files to mp4. You can use wildcards if you know the name of the file
#not exactly. If the file already exists or cant be found you will get an error message and a exit 
#value of 1

# Function to check if a file is already in mp4 format
is_mp4() {
  local file="$1"
  if [[ "$file" == *.mp4 ]]; then
    return 0
  else
    return 1
  fi
}

# Function to convert video files to mp4 format
convert_to_mp4() {
  if is_mp4 "$1"; then
    echo "Warning: $1 is already an mp4 file. Skipping..."
  else
    echo "Converting $1 to $newname..."
    # Replace the following line with the actual conversion command using ffmpeg
    #echo "ffmpeg -i \"$oldname\" \"$newname\""
    ffmpeg -i $1 $newname
    found_file=true
  fi
}


oldname="$1"
newname="${oldname%.*}.mp4"
found_file=false

# Check if one arguments was provided
if [ ! "$#" -eq 1 ]; then
  echo "Wrong number of Parameter."
  exit 1
fi

# Enable nullglob for auto-completion
shopt -s nullglob

# Loop through each argument (wildcard) and find matching files
for wildcard in "$@"; do
  # Find files matching the wildcard pattern
  matching_files=(./*"$wildcard"*)

  # Check if any files exist with the specified wildcard
  if [ ! ${#matching_files[@]} -eq 0 ]; then

    # Iterate through the matching files
    for file in "${matching_files[@]}"; do
      # Check if the file exists and is a regular file
      if [ -f "$file" ]; then
        echo "File found: $file"
        # Files get converted
        convert_to_mp4 "$file"
        
      fi
    done
  fi
done


if [[ $found_file == false ]]; then
     echo "No files found for conversion" ; exit 1
fi

exit 0
