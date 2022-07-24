open OUnit2
open Lib.Ins_sort

let test1 = "ins_sort" >:: fun _ -> assert_equal (ins_sort []) []
let test2 = "ins_sort" >:: fun _ -> assert_equal (ins_sort [ 1 ]) [ 1 ]
let test3 = "ins_sort" >:: fun _ -> assert_equal (ins_sort [ 3; 1 ]) [ 1; 3 ]
let test4 = "ins_sort" >:: fun _ -> assert_equal (ins_sort [ 1; 3 ]) [ 1; 3 ]

let test5 =
  "ins_sort" >:: fun _ ->
  assert_equal (ins_sort [ 5; 3; 8; 1; 7; 4 ]) [ 1; 3; 4; 5; 7; 8 ]

let tests = "all_tests" >::: [ test1; test2; test3; test4; test5 ]
