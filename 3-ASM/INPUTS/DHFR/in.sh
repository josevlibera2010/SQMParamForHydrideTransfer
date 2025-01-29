#!/bin/bash -f

if [ -f group_file ];
then
  rm group_file
fi

N=$1
DIR=$2
PARM=$3

echo "N REPLICAS  = $N"
for i in `seq 1 $N`
do
  sed "s/XXXXX/$RANDOM/g" XTB.in > $i.in
  echo "-O -rem 0 -i ${DIR}/$i.in -o ${DIR}/$i.out -c ${DIR}/${i}_.ncrst -r ${DIR}/$i.ncrst -x ${DIR}/$i.nc -inf ${DIR}/$i.mdinfo -p ${DIR}/${PARM}" >> group_file
done

echo " Done."
