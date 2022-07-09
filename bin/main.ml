open Lib.Zenkashiki

let kekka =
  zenkashiki 0 = 3
  && zenkashiki 1 = 5
  && zenkashiki 2 = 9
  && zenkashiki 3 = 17
  && zenkashiki 4 = 33

let () = print_int (if kekka then 1 else 0)
