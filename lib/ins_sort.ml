let rec insert lst element =
  match lst with
  | [] -> [ element ]
  | first :: rest ->
      if first > element then element :: lst else first :: insert rest element

let rec ins_sort lst =
  match lst with [] -> [] | first :: rest -> insert (ins_sort rest) first
