open OUnit2
open Lib.Saitan_wo_bunri
open Lib.Make_eki_list

let eki1 = { namae = "池袋"; saitan_kyori = infinity; temae_list = [] }

let eki2 = { namae = "新大塚"; saitan_kyori = 1.2; temae_list = [ "新大塚"; "茗荷谷" ] }

let eki3 = { namae = "茗荷谷"; saitan_kyori = 0.; temae_list = [ "茗荷谷" ] }

let eki4 = { namae = "後楽園"; saitan_kyori = infinity; temae_list = [] }
let lst = [ eki1; eki2; eki3; eki4 ]

let test1 =
  "saitan_wo_bunri" >:: fun _ ->
  assert_equal (saitan_wo_bunri lst) (eki3, [ eki1; eki2; eki4 ])

let tests = "all_tests" >::: [ test1 ]
