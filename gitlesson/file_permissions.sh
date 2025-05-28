#!/bin/bash

file=$1
if [ -z $file ]; then
echo "Invalid argument, please provide file name"
echo "USAGE: $0 [FILE_NAME]"
exit
fi

if [ -f $file ]; then
chmod 744 $file
else
touch $file
echo '#!/bin/bash' > $file
chmod 744 $file
fi