let rec insert lst n =
  match lst with
  | [] -> [ n ]
  | first :: rest -> if first > n then n :: lst else first :: insert rest n

let rec ins_sort lst =
  match lst with [] -> [] | first :: rest -> insert (ins_sort rest) first

let rec append lst1 lst2 =
  match lst1 with [] -> lst2 | first :: rest -> first :: append rest lst2

let rec merge lst1 lst2 =
  match lst1 with [] -> lst2 | _ -> ins_sort (append lst1 lst2)
;;

merge [] [] = [];;
merge [ 1 ] [] = [ 1 ];;
merge [] [ 1 ] = [ 1 ];;
merge [ 1; 2 ] [] = [ 1; 2 ];;
merge [ 1; 3 ] [ 2; 4 ] = [ 1; 2; 3; 4 ];;
merge [ 2; 4 ] [ 1; 3 ] = [ 1; 2; 3; 4 ];;
merge [ 1; 4 ] [ 1; 3 ] = [ 1; 1; 3; 4 ]
