open Lib.Fac

let kekka = fac 0 = 1 && fac 1 = 1 && fac 4 = 24 && fac 10 = 3628800
let () = print_int (if kekka then 1 else 0)
