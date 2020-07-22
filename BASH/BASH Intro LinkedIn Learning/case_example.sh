#!/bin/bash
# Switch-Case example.

# test 
a="turnip"
# test conditions
case $a in
	# in cat? then print feline
	cat) echo "Feline";;
	# in bee? then print insect
	bee) echo "insect";;
	# in either dog or puppy then print canine
	dog|puppy) echo "Canine";; 
	# all other cases
	*) echo "Not sure!";;
esac