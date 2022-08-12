let rec fold_right f lst init =
  match lst with
  | [] -> init
  | first :: rest -> f first (fold_right f rest init)

let sum lst =
  (* match lst with [] -> 0 | first :: rest -> first + sum rest *)
  let fn n m = n + m in
  fold_right fn lst 0

let length lst =
  (* match lst with [] -> 0 | _ :: rest -> 1 + length rest *)
  let fn _ m = 1 + m in
  fold_right fn lst 0

let append lst1 lst2 =
  (* match lst1 with [] -> lst2 | first :: rest -> first :: append rest lst2 *)
  let fn l1 l2 = l1 :: l2 in
  fold_right fn lst1 lst2
