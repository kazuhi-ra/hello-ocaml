open Ekimei

type eki_t = { namae : string; saitan_kyori : float; temae_list : string list }

let make_initial_eki_list ekimei_list kiten_kanji =
  List.map
    (fun ekimei ->
      if ekimei.kanji = kiten_kanji then
        {
          namae = ekimei.kanji;
          saitan_kyori = 0.;
          temae_list = [ ekimei.kanji ];
        }
      else { namae = ekimei.kanji; saitan_kyori = infinity; temae_list = [] })
    ekimei_list
