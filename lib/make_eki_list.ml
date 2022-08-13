open Ekimei

type eki_t = { namae : string; saitan_kyori : float; temae_list : string list }

let make_eki_list ekimei_list =
  List.map
    (fun eki -> { namae = eki.kanji; saitan_kyori = infinity; temae_list = [] })
    ekimei_list
