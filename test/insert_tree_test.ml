open OUnit2
open Practices.Search_tree
open Practices.Insert_tree

let tree1 = Empty
let tree2 = Leaf 3
let tree3 = Node (Leaf 1, 2, Leaf 3)
let tree4 = Node (Empty, 7, Leaf 9)
let tree5 = Node (tree3, 6, tree4)

let test1 =
  "tree_length" >:: fun _ -> assert_equal (insert_tree Empty 3) (Leaf 3)

let test2 =
  "tree_length" >:: fun _ ->
  assert_equal (insert_tree (Leaf 3) 2) (Node (Leaf 2, 3, Empty))

let test3 =
  "tree_length" >:: fun _ -> assert_equal (insert_tree (Leaf 3) 3) (Leaf 3)

let test4 =
  "tree_length" >:: fun _ ->
  assert_equal (insert_tree (Leaf 3) 4) (Node (Empty, 3, Leaf 4))

let test5 =
  "tree_length" >:: fun _ ->
  assert_equal (insert_tree tree5 4)
    (Node (Node (Leaf 1, 2, Node (Empty, 3, Leaf 4)), 6, Node (Empty, 7, Leaf 9)))

let tests = "all_tests" >::: [ test1; test2; test3; test4; test5 ]
