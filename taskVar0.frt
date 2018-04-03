: collatz 
	repeat 
		dup dup 2 % 
		if 3 * 1 + 
		else 2 / 
		then dup . ."  " 
		dup 1 = 
		if 1 
		else 0 
		then 
	until ; 
