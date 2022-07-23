open OUnit2
open Lib.Kyori_wo_hyoji

let test1 =
  "kyori_wo_hyoji" >:: fun _ ->
  assert_equal
    (kyori_wo_hyoji "myougadani" "shinotsuka")
    "myougadani という駅は存在しません"

let test2 =
  "kyori_wo_hyoji" >:: fun _ ->
  assert_equal (kyori_wo_hyoji "myogadani" "shinotsuka") "茗荷谷から新大塚までは 1.2 キロです"

let test3 =
  "kyori_wo_hyoji" >:: fun _ ->
  assert_equal (kyori_wo_hyoji "myogadani" "ikebukuro") "茗荷谷と池袋はつながっていません"

let test4 =
  "kyori_wo_hyoji" >:: fun _ ->
  assert_equal (kyori_wo_hyoji "tokyo" "ootemachi") "ootemachi という駅は存在しません"

let test5 =
  "kyori_wo_hyoji" >:: fun _ ->
  assert_equal (kyori_wo_hyoji "tokyo" "otemachi") "東京から大手町までは 0.6 キロです"

let tests = "all_tests" >::: [ test1; test2; test3; test4; test5 ]
