open Lib.Kyori_wo_hyoji
open Lib.Ekikan

let test1 =
  kyori_wo_hyoji "myougadani" "shinotsuka" global_ekikan_list
  = "myougadani という駅は存在しません"

let test2 =
  kyori_wo_hyoji "myogadani" "shinotsuka" global_ekikan_list
  = "茗荷谷から新大塚までは 1.2 キロです"

let test3 =
  kyori_wo_hyoji "myogadani" "ikebukuro" global_ekikan_list = "茗荷谷と池袋はつながっていません"

let test4 =
  kyori_wo_hyoji "tokyo" "ootemachi" global_ekikan_list
  = "ootemachi という駅は存在しません"

let test5 =
  kyori_wo_hyoji "tokyo" "otemachi" global_ekikan_list = "東京から大手町までは 0.6 キロです"

let kekka = test1 && test2 && test3 && test4 && test5
let () = print_int (if kekka then 1 else 0)
