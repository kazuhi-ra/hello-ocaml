let rec my_filter lst fn =
  match lst with
  | [] -> []
  | first :: rest ->
      if fn first then first :: my_filter rest fn else my_filter rest fn
