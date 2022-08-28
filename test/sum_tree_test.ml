open OUnit2
open Practices.Sum_tree

let tree1 = Empty
let tree2 = Leaf 3
let tree3 = Node (tree1, 4, tree2)
let tree4 = Node (tree2, 5, tree3)
let test1 = "sum_tree" >:: fun _ -> assert_equal (sum_tree tree1) 0
let test2 = "sum_tree" >:: fun _ -> assert_equal (sum_tree tree2) 3
let test3 = "sum_tree" >:: fun _ -> assert_equal (sum_tree tree3) 7
let test4 = "sum_tree" >:: fun _ -> assert_equal (sum_tree tree4) 15
let tests = "all_tests" >::: [ test1; test2; test3; test4 ]
