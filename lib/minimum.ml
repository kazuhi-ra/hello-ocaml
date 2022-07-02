let rec minimum lst =
  match lst with
  | [] -> max_int
  | first :: rest ->
      let min_rest = minimum rest in
      if first < min_rest then first else min_rest
;;

minimum [] = max_int;;
minimum [ 1 ] = 1;;
minimum [ 8; 9; 61; 2; 3 ] = 2
