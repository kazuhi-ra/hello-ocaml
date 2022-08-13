open Make_eki_list

let shokika eki_list kiten_kanji =
  List.map
    (fun eki ->
      if eki.namae = kiten_kanji then
        { namae = eki.namae; saitan_kyori = 0.; temae_list = [ eki.namae ] }
      else eki)
    eki_list
