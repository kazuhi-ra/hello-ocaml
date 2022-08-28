open OUnit2
open Practices.Sum_tree
open Practices.Tree_length

let tree1 = Empty
let tree2 = Leaf 3
let tree3 = Node (tree1, 4, tree2)
let tree4 = Node (tree2, 5, tree3)
let test1 = "tree_length" >:: fun _ -> assert_equal (tree_length tree1) 0
let test2 = "tree_length" >:: fun _ -> assert_equal (tree_length tree2) 1
let test3 = "tree_length" >:: fun _ -> assert_equal (tree_length tree3) 2
let test4 = "tree_length" >:: fun _ -> assert_equal (tree_length tree4) 4
let tests = "all_tests" >::: [ test1; test2; test3; test4 ]
