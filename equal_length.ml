let rec equal_length lst1 lst2 =
  match (lst1, lst2) with
  | [], [] -> true
  | [], first :: rest -> false
  | first :: rest, [] -> false
  | first1 :: rest1, first2 :: rest2 -> equal_length rest1 rest2
