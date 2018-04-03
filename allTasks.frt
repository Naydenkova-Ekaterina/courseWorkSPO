: parity 2 % ;

: prime
 dup 0 < if
	drop 0
else 
	dup 4 < if drop 1
		else
		0 swap 
		dup 2 / 2 do
			dup r@ %
			if else swap 1 + swap 
			then 
		loop
		drop
		0 = if 1 else 0
		then 
then ;

: writeInCell
	cell% allot
	dup
	rot swap
	! 
;

: write-word
  repeat
       over over 
       c@ swap c! 
       1 + swap 1 + swap 
       dup c@ not
  until ;

: concatenate
  over count over count 
  1 + + allot
  rot over >r 
  write-word
  drop swap 
  write-word 
  drop 0 swap 
  c! r> ;

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


