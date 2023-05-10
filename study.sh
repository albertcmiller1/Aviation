dir=$1

#dir=manouvers
dir=pattern_work

# find the number of files in the manouvers directory 
numfiles=`ls -1 $dir | wc -l`

# find a random int between 1 and the number of files in the manouvers directory 
randnum=$((1 + $RANDOM % $numfiles))

# use sed and the random number to grab the random file 
file=$(ls -1 $dir | sed -n "$randnum"p)

echo "$dir ---> $file" && sleep 3
echo 
echo 
echo 

cat $dir/$file 
