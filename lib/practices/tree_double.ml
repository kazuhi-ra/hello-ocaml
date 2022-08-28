open Sum_tree

let rec tree_double tree =
  match tree with
  | Empty -> Empty
  | Leaf x -> Leaf (x * 2)
  | Node (tree1, x, tree2) -> Node (tree_double tree1, x * 2, tree_double tree2)
