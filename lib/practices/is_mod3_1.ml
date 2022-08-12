let is_mod3_1 n = n mod 3 = 1

let rec filter_mod3_1 lst =
  match lst with
  | [] -> []
  | first :: rest ->
      if is_mod3_1 first then first :: filter_mod3_1 rest
      else filter_mod3_1 rest
