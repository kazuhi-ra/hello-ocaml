let rec reverse lst =
  match lst with [] -> [] | first :: rest -> reverse rest @ [ first ]
