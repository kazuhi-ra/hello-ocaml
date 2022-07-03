open Lib.Power

let kekka = power 3 0 = 1 && power 3 1 = 3 && power 3 2 = 9 && power 3 3 = 27
let () = print_int (if kekka then 1 else 0)
