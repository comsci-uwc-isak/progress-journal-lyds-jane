How to create a Bash script that automaticall creates files and folders
==

The code below shows how to run this task. The **key** is to remember that commands in the Terminal also run in the Bash script.

```.sh

#!/bin/bash

#This program demonstrates how to create files/folders


echo "Creating the folder"
mkdir test

echo "Creating 100 files inside the folder"
cd test

for (( f=1; f<=100; f++ ))
do
        echo "Creating file number #$f"
        echo "This is file $f" > file_$f.txt
done
echo "Task completed"

```

Files are created using the command `echo`
