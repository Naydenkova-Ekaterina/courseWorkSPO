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
