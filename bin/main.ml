open Lib.Get_ekikan_kyori
open Lib.Ekikan

let test1 = get_ekikan_kyori "茗荷谷" "新大塚" global_ekikan_list = 1.2
let test2 = get_ekikan_kyori "茗荷谷" "池袋" global_ekikan_list = infinity
let test3 = get_ekikan_kyori "東京" "大手町" global_ekikan_list = 0.6
let () = print_int (if test1 && test2 && test3 then 1 else 0)
