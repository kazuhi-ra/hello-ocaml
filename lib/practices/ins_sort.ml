let rec insert lst n =
  match lst with
  | [] -> [ n ]
  | first :: rest ->
      if first < n then first :: insert rest n else n :: first :: rest

let rec ins_sort lst =
  match lst with [] -> [] | first :: rest -> insert (ins_sort rest) first
