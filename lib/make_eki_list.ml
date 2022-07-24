open Ekimei

type eki_t = { namae : string; saitan_kyori : float; temae_list : string list }

let rec make_eki_list ekimei_list =
  match ekimei_list with
  | [] -> []
  | first :: rest ->
      { namae = first.kanji; saitan_kyori = infinity; temae_list = [] }
      :: make_eki_list rest
