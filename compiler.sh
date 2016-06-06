START=$(($(gdate +%s%N)/1000000))
time $3
END=$(($(gdate +%s%N)/1000000))
DIFF=$(( $END - $START ))
echo "$1 | It took $DIFF miliseconds to $2"
