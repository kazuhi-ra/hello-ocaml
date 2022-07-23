open OUnit2
open Lib.Get_ekikan_kyori
open Lib.Ekikan

let test1 =
  "get_ekikan_kyori" >:: fun _ ->
  assert_equal (get_ekikan_kyori "茗荷谷" "新大塚" global_ekikan_list) 1.2

let test2 =
  "get_ekikan_kyori" >:: fun _ ->
  assert_equal (get_ekikan_kyori "茗荷谷" "池袋" global_ekikan_list) infinity

let test3 =
  "get_ekikan_kyori" >:: fun _ ->
  assert_equal (get_ekikan_kyori "東京" "大手町" global_ekikan_list) 0.6

let tests = "all_tests" >::: [ test1; test2; test3 ]
