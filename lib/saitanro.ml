open Make_eki_list

let rec shokika eki_list kiten =
  match eki_list with
  | [] -> []
  | first :: rest ->
      if first.namae = kiten then
        { namae = first.namae; saitan_kyori = 0.; temae_list = [ first.namae ] }
        :: rest
      else first :: shokika rest kiten
