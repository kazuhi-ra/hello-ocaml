open Sum_tree

let rec tree_map f tree =
  match tree with
  | Empty -> Empty
  | Leaf x -> Leaf (f x)
  | Node (tree1, x, tree2) -> Node (tree_map f tree1, f x, tree_map f tree2)
