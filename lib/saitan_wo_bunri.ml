open Make_eki_list

let rec fold_right fn lst init =
  match lst with
  | [] -> init
  | first :: rest -> fn first (fold_right fn rest init)

let saitan_wo_bunri eki_list =
  let init_eki = { namae = ""; saitan_kyori = infinity; temae_list = [] } in
  fold_right
    (fun current (result_eki, result_eki_lst) ->
      if result_eki = init_eki then (current, [])
      else if current.saitan_kyori < result_eki.saitan_kyori then
        (current, result_eki :: result_eki_lst)
      else (result_eki, current :: result_eki_lst))
    eki_list (init_eki, [])
(* match eki_list with
   | [] -> ({ namae = ""; saitan_kyori = infinity; temae_list = [] }, [])
   | first :: rest ->
       let bunri_eki, bunri_list = saitan_wo_bunri rest in
       if bunri_eki.namae = "" then (first, [])
       else if first.saitan_kyori < bunri_eki.saitan_kyori then
         (first, bunri_eki :: bunri_list)
       else (bunri_eki, first :: bunri_list) *)
