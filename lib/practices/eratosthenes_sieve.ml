let eratosthenes_sieve n =
  (* nからmまでの配列 *)
  let rec enumerate n m =
    if m = n then [ n ] else enumerate n (m - 1) @ [ m ]
  in
  let init_lst = enumerate 2 n in
  let remove_x_no_baisu x lst = List.filter (fun v -> v mod x <> 0) lst in
  let rec main lst =
    match lst with
    | [] -> []
    | first :: rest -> first :: main (remove_x_no_baisu first rest)
  in
  main init_lst
