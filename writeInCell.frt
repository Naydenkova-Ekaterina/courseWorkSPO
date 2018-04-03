
: write-word
  repeat
       over over 
       c@ swap c! 
       1 + swap 1 + swap 
       dup c@ not
  until ;
