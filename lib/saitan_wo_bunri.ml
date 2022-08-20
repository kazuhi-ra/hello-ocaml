open Make_eki_list

let rec saitan_wo_bunri eki_list =
  match eki_list with
  | [] -> ({ namae = ""; saitan_kyori = infinity; temae_list = [] }, [])
  | first :: rest ->
      let bunri_eki, bunri_list = saitan_wo_bunri rest in
      if bunri_eki.namae = "" then (first, [])
      else if first.saitan_kyori < bunri_eki.saitan_kyori then
        (first, bunri_eki :: bunri_list)
      else (bunri_eki, first :: bunri_list)
