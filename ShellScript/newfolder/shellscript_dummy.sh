#!/bin/bash

if [ ! -f $1 ]
then
echo "#!/bin/bash"> $1
fi

while [ 1 ];
do
vi $1
`chmod +x $1`
./$1
read vinoth
done
exit 0  
