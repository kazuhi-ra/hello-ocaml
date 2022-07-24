open OUnit2
open Lib.Shokika
open Lib.Make_eki_list

let eki_list =
  [
    { namae = "池袋"; saitan_kyori = infinity; temae_list = [] };
    { namae = "新大塚"; saitan_kyori = infinity; temae_list = [] };
    { namae = "茗荷谷"; saitan_kyori = infinity; temae_list = [] };
    { namae = "後楽園"; saitan_kyori = infinity; temae_list = [] };
    { namae = "本郷三丁目"; saitan_kyori = infinity; temae_list = [] };
    { namae = "御茶ノ水"; saitan_kyori = infinity; temae_list = [] };
  ]

let test1 = "shokika" >:: fun _ -> assert_equal (shokika [] "茗荷谷") []

let test2 =
  "shokika" >:: fun _ ->
  assert_equal
    (shokika eki_list "茗荷谷")
    [
      { namae = "池袋"; saitan_kyori = infinity; temae_list = [] };
      { namae = "新大塚"; saitan_kyori = infinity; temae_list = [] };
      { namae = "茗荷谷"; saitan_kyori = 0.; temae_list = [ "茗荷谷" ] };
      { namae = "後楽園"; saitan_kyori = infinity; temae_list = [] };
      { namae = "本郷三丁目"; saitan_kyori = infinity; temae_list = [] };
      { namae = "御茶ノ水"; saitan_kyori = infinity; temae_list = [] };
    ]

let tests = "all_tests" >::: [ test1; test2 ]
