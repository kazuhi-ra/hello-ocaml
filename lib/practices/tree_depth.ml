open Sum_tree

let rec tree_depth tree =
  match tree with
  | Empty -> 0
  | Leaf _ -> 0
  | Node (tree1, _, tree2) -> 1 + Int.max (tree_depth tree1) (tree_depth tree2)
