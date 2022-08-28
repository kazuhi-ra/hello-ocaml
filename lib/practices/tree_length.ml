open Sum_tree

let rec tree_length tree =
  match tree with
  | Empty -> 0
  | Leaf _ -> 1
  | Node (tree1, _, tree2) -> 1 + tree_length tree1 + tree_length tree2
