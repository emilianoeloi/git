DEVIATION=5
START=$(($(gdate +%s%N)/1000000))
$4
END=$(($(gdate +%s%N)/1000000))
DIFF=$(( $END - $START - $DEVIATION ))
echo "$1 [$3] | It took $DIFF miliseconds to $2."
