type tree_t = Empty | Leaf of int | Node of tree_t * int * tree_t

let tree1 = Empty
let tree2 = Leaf 3
let tree3 = Node (tree1, 4, tree2)
let tree4 = Node (tree2, 5, tree3)

let rec sum_tree tree =
  match tree with
  | Empty -> 0
  | Leaf n -> n
  | Node (tree1, n, tree2) -> sum_tree tree1 + n + sum_tree tree2
