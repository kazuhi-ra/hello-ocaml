open OUnit2
open Practices.Sum_tree
open Practices.Tree_depth

let tree1 = Empty
let tree2 = Leaf 3
let tree3 = Node (tree1, 4, tree2)
let tree4 = Node (tree2, 5, tree3)
let test1 = "tree_depth" >:: fun _ -> assert_equal (tree_depth tree1) 0
let test2 = "tree_depth" >:: fun _ -> assert_equal (tree_depth tree2) 0
let test3 = "tree_depth" >:: fun _ -> assert_equal (tree_depth tree3) 1
let test4 = "tree_depth" >:: fun _ -> assert_equal (tree_depth tree4) 2
let tests = "all_tests" >::: [ test1; test2; test3; test4 ]
