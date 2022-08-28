open Search_tree

let rec insert_tree tree n =
  match tree with
  | Empty -> Leaf n
  | Leaf x ->
      if n = x then tree
      else if n < x then Node (Leaf n, x, Empty)
      else Node (Empty, x, Leaf n)
  | Node (left_tree, x, right_tree) ->
      if x = n then tree
      else if n < x then Node (insert_tree left_tree n, x, right_tree)
      else Node (left_tree, x, insert_tree right_tree n)
