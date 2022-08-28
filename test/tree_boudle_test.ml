open OUnit2
open Practices.Sum_tree
open Practices.Tree_double

let tree1 = Empty
let tree2 = Leaf 3
let tree3 = Node (tree1, 4, tree2)
let tree4 = Node (tree2, 5, tree3)
let test1 = "tree_double" >:: fun _ -> assert_equal (tree_double tree1) Empty
let test2 = "tree_double" >:: fun _ -> assert_equal (tree_double tree2) (Leaf 6)

let test3 =
  "tree_double" >:: fun _ ->
  assert_equal (tree_double tree3) (Node (Empty, 8, Leaf 6))

let test4 =
  "tree_double" >:: fun _ ->
  assert_equal (tree_double tree4) (Node (Leaf 6, 10, Node (Empty, 8, Leaf 6)))

let tests = "all_tests" >::: [ test1; test2; test3; test4 ]
