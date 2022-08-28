type 'a binary_search_tree_t =
  | Empty
  | Leaf of 'a
  | Node of 'a binary_search_tree_t * 'a * 'a binary_search_tree_t

let rec search_tree tree n =
  match tree with
  | Empty -> false
  | Leaf x -> n = x
  | Node (left_tree, x, right_tree) ->
      if x = n then true
      else if n < x then search_tree left_tree n
      else search_tree right_tree n
