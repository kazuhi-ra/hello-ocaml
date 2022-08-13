let divisor n =
  let rec enumerate n = if n = 1 then [ 1 ] else n :: enumerate (n - 1) in
  List.filter (fun x -> n mod x = 0) (enumerate n)

let perfect n =
  let sum = List.fold_right ( + ) (divisor n) 0 in
  n * 2 = sum
