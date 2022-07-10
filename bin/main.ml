open Lib.Compose

let add3 x = x + 3
let times2 x = x * 2
let test1 = (compose times2 add3) 4 = 14
let kekka = test1
let () = print_string (if kekka then " Success" else "Failed")
