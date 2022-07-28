open OUnit2
open Lib.Make_eki_list
open Lib.Koushin

let eki1 = { namae = "池袋"; saitan_kyori = infinity; temae_list = [] }

let eki2 = { namae = "新大塚"; saitan_kyori = 1.2; temae_list = [ "新大塚"; "茗荷谷" ] }

let eki3 = { namae = "茗荷谷"; saitan_kyori = 0.; temae_list = [ "茗荷谷" ] }

let eki4 = { namae = "後楽園"; saitan_kyori = infinity; temae_list = [] }
let lst = [ eki1; eki2; eki3; eki4 ]
let test1 = "koushin" >:: fun _ -> assert_equal (koushin eki2 []) []

let test2 =
  "koushin" >:: fun _ ->
  assert_equal (koushin eki2 lst)
    [
      { namae = "池袋"; saitan_kyori = 3.0; temae_list = [ "池袋"; "新大塚"; "茗荷谷" ] };
      eki2;
      eki3;
      eki4;
    ]

let tests = "all_tests" >::: [ test1; test2 ]
