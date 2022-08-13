open OUnit2
open Lib.Quick_sort

let test1 = "quick_sort" >:: fun _ -> assert_equal (quick_sort []) []
let test2 = "quick_sort" >:: fun _ -> assert_equal (quick_sort [ 1 ]) [ 1 ]

let test3 =
  "quick_sort" >:: fun _ -> assert_equal (quick_sort [ 1; 2 ]) [ 1; 2 ]

let test4 =
  "quick_sort" >:: fun _ -> assert_equal (quick_sort [ 2; 1 ]) [ 1; 2 ]

let test5 =
  "quick_sort" >:: fun _ ->
  assert_equal (quick_sort [ 5; 4; 9; 8; 2; 3 ]) [ 2; 3; 4; 5; 8; 9 ]

let test6 =
  "quick_sort" >:: fun _ -> assert_equal (quick_sort [ 1; 1 ]) [ 1; 1 ]

let tests = "all_tests" >::: [ test1; test2; test3; test4; test5; test6 ]
