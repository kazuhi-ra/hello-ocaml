let rec fold_right f lst init =
  match lst with
  | [] -> init
  | first :: rest -> f first (fold_right f rest init)

let sum lst = fold_right (fun n m -> n + m) lst 0
let length lst = fold_right (fun _ m -> 1 + m) lst 0
let append lst1 lst2 = fold_right (fun l1 l2 -> l1 :: l2) lst1 lst2
