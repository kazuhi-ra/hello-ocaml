open OUnit2
open Lib.Romaji_to_kanji
open Lib.Ekimei

let test1 =
  "romaji_to_kanji" >:: fun _ ->
  assert_equal (romaji_to_kanji "myogadani" global_ekimei_list) "茗荷谷"

let test2 =
  "romaji_to_kanji" >:: fun _ ->
  assert_equal (romaji_to_kanji "shibuya" global_ekimei_list) "渋谷"

let test3 =
  "romaji_to_kanji" >:: fun _ ->
  assert_equal (romaji_to_kanji "otemachi" global_ekimei_list) "大手町"

let tests = "all_tests" >::: [ test1; test2; test3 ]
