# find the number of files in the manouvers directory 
numfiles=`ls -1 manouvers | wc -l`

# find a random int between 1 and the number of files in the manouvers directory 
randnum=$((1 + $RANDOM % $numfiles))

# use sed and the random number to grab the random file 
file=$(ls -1 manouvers | sed -n "$randnum"p)

cat manouvers/$file 
