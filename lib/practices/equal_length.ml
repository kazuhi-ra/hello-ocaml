let rec equal_length lst1 lst2 =
  match (lst1, lst2) with
  | [], [] -> true
  | [], _ -> false
  | _, [] -> false
  | _ :: rest1, _ :: rest2 -> equal_length rest1 rest2
