type tree_t = Empty | Leaf of int | Node of tree_t * int * tree_t

let rec sum_tree tree =
  match tree with
  | Empty -> 0
  | Leaf n -> n
  | Node (tree1, n, tree2) -> sum_tree tree1 + n + sum_tree tree2
