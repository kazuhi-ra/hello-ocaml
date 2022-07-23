open OUnit2
open Lib.Hyoji
open Lib.Ekimei

let ekimei1 =
  { kanji = "茗荷谷"; kana = "みょうがだに"; romaji = "myogadani"; shozoku = "丸ノ内線" }

let ekimei2 =
  { kanji = "渋谷"; kana = "しぶや"; romaji = "shibuya"; shozoku = "銀座線" }

let ekimei3 =
  { kanji = "大手町"; kana = "おおてまち"; romaji = "otemachi"; shozoku = "千代田線" }

let test1 =
  "echo string" >:: fun _ -> assert_equal (hyoji ekimei1) "丸ノ内線、茗荷谷（みょうがだに）"

let test2 =
  "echo string" >:: fun _ -> assert_equal (hyoji ekimei2) "銀座線、渋谷（しぶや）"

let test3 =
  "echo string" >:: fun _ -> assert_equal (hyoji ekimei3) "千代田線、大手町（おおてまち）"

let tests = "all_tests" >::: [ test1; test2; test3 ]
