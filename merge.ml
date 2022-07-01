let rec merge lst1 lst2 =
  match (lst1, lst2) with
  | [], [] -> []
  | [], first :: rest -> lst2
  | first :: rest, [] -> lst1
  | first1 :: rest1, first2 :: rest2 ->
      if first1 < first2 then first1 :: merge rest1 lst2
      else first2 :: merge lst1 rest2
;;

merge [] [] = [];;
merge [] [ 1 ] = [ 1 ];;
merge [ 1 ] [] = [ 1 ];;
merge [ 1; 2 ] [] = [ 1; 2 ];;
merge [ 1; 3 ] [ 2; 4 ] = [ 1; 2; 3; 4 ];;
merge [ 2; 4 ] [ 1; 3 ] = [ 1; 2; 3; 4 ];;
merge [ 1; 4 ] [ 1; 3 ] = [ 1; 1; 3; 4 ]
