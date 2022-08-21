let rec fold_right f lst init =
  match lst with
  | [] -> init
  | first :: rest -> f first (fold_right f rest init)

let rec fold_left f init lst =
  match lst with [] -> init | first :: rest -> fold_left f (f first init) rest
