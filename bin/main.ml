open Lib.Koushin1
open Lib.Make_eki_list

let eki1 = { namae = "池袋"; saitan_kyori = infinity; temae_list = [] }

let eki2 = { namae = "新大塚"; saitan_kyori = 1.2; temae_list = [ "新大塚"; "茗荷谷" ] }

let eki3 = { namae = "茗荷谷"; saitan_kyori = 0.; temae_list = [ "茗荷谷" ] }

let eki4 = { namae = "後楽園"; saitan_kyori = infinity; temae_list = [] }
let test1 = koushin1 eki3 eki1 = eki1
let test2 = koushin1 eki3 eki2 = eki2
let test3 = koushin1 eki3 eki3 = eki3

let test4 =
  koushin1 eki3 eki4
  = { namae = "後楽園"; saitan_kyori = 1.8; temae_list = [ "後楽園"; "茗荷谷" ] }

let test5 =
  koushin1 eki2 eki1
  = { namae = "池袋"; saitan_kyori = 3.0; temae_list = [ "池袋"; "新大塚"; "茗荷谷" ] }

let test6 = koushin1 eki2 eki2 = eki2
let test7 = koushin1 eki2 eki3 = eki3
let test8 = koushin1 eki2 eki4 = eki4
let kekka = test1 && test2 && test3 && test4 && test5 && test6 && test7 && test8
let () = print_string (if kekka then " Success" else "Failed")
