let rec insert lst n =
  match lst with
  | [] -> [ n ]
  | first :: rest ->
      if first > n then n :: first :: rest else first :: insert rest n
;;

insert [] 8 = [ 8 ];;
insert [ 2 ] 1 = [ 1; 2 ];;
insert [ 1; 2; 8; 9 ] 5 = [ 1; 2; 5; 8; 9 ]

let rec ins_sort lst =
  match lst with [] -> [] | first :: rest -> insert (ins_sort rest) first
;;

ins_sort [] = [];;
ins_sort [ 1 ] = [ 1 ];;
ins_sort [ 2; 1 ] = [ 1; 2 ];;
ins_sort [ 1; 2; 3 ] = [ 1; 2; 3 ];;
ins_sort [ 8; 3; 1; 9; 6 ] = [ 1; 3; 6; 8; 9 ]
