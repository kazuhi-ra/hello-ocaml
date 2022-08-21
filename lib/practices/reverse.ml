let reverse lst =
  let rec rev lst result =
    match lst with [] -> result | first :: rest -> rev rest (first :: result)
  in
  rev lst []
(* match lst with
   | [] -> []
   | first :: rest ->
     (reverse rest) @ [first] *)
