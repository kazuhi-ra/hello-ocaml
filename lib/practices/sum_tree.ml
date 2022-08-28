type 'a tree = Empty | Leaf of 'a | Node of 'a tree * 'a * 'a tree

let rec sum_tree tree =
  match tree with
  | Empty -> 0
  | Leaf n -> n
  | Node (tree1, n, tree2) -> sum_tree tree1 + n + sum_tree tree2
