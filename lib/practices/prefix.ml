let rec add_to_each i lst_of_lst =
  match lst_of_lst with
  | [] -> []
  | head_lst :: rest_lst -> (i :: head_lst) :: add_to_each i rest_lst

let rec prefix lst =
  match lst with
  | [] -> []
  | first :: rest -> [ first ] :: add_to_each first (prefix rest)
