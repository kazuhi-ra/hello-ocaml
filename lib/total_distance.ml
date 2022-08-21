type distance_t = { kyori : float; total : float }

let total_distance lst =
  let rec hojo lst total0 =
    match lst with
    | [] -> []
    | first :: rest ->
        { kyori = first.kyori; total = total0 +. first.kyori }
        :: hojo rest (total0 +. first.kyori)
  in
  hojo lst 0.
