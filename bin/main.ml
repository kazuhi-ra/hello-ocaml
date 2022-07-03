open Lib.Sum_of_square

let kekka = sum_of_square 0 = 0 && sum_of_square 1 = 1 && sum_of_square 4 = 30
let () = print_int (if kekka then 1 else 0)
