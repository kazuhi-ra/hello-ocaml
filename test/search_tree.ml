open OUnit2
open Practices.Search_tree

let tree1 = Empty
let tree2 = Leaf 3
let tree3 = Node (Leaf 1, 2, Leaf 3)
let tree4 = Node (Empty, 7, Leaf 9)
let tree5 = Node (tree3, 6, tree4)
let test1 = "search_tree" >:: fun _ -> assert_equal (search_tree tree1 3) false
let test2 = "search_tree" >:: fun _ -> assert_equal (search_tree tree2 3) true
let test3 = "search_tree" >:: fun _ -> assert_equal (search_tree tree2 4) false
let test4 = "search_tree" >:: fun _ -> assert_equal (search_tree tree5 6) true
let test5 = "search_tree" >:: fun _ -> assert_equal (search_tree tree5 2) true
let test6 = "search_tree" >:: fun _ -> assert_equal (search_tree tree5 1) true
let test7 = "search_tree" >:: fun _ -> assert_equal (search_tree tree5 4) false
let test8 = "search_tree" >:: fun _ -> assert_equal (search_tree tree5 7) true
let test9 = "search_tree" >:: fun _ -> assert_equal (search_tree tree5 8) false

let tests =
  "all_tests"
  >::: [ test1; test2; test3; test4; test5; test6; test7; test8; test9 ]
