#!/bin/bash
# While loop examples.

# counter index
i=0
# start while-loop while index < 10
while [ $i -le 10 ]; do
	# print the index
	echo i:$i
	# increment counter
	((i+=1))
# finish loop
done

# until loop, similar to before, check final value
j=0
until [ $j -ge 10 ]; do
	echo j:$j
	((j+=1))
done