let rec insert lst n =
  match lst with
  | [] -> [ n ]
  | first :: rest ->
      if first < n then first :: insert rest n else n :: first :: rest
;;

insert [] 3 = [ 3 ];;
insert [ 1 ] 3 = [ 1; 3 ];;
insert [ 3 ] 1 = [ 1; 3 ];;
insert [ 1; 2; 3; 4; 8; 9 ] 5 = [ 1; 2; 3; 4; 5; 8; 9 ]
