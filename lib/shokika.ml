open Make_eki_list

let rec shokika eki_list kiten_kanji =
  match eki_list with
  | [] -> []
  | first :: rest ->
      if first.namae = kiten_kanji then
        { namae = first.namae; saitan_kyori = 0.; temae_list = [ first.namae ] }
        :: rest
      else first :: shokika rest kiten_kanji
