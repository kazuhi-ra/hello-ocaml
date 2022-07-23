open Romaji_to_kanji
open Get_ekikan_kyori
open Ekimei
open Ekikan

let kyori_wo_hyoji ekimei_romaji1 ekimei_romaji2 =
  let ekimei_kanji1 = romaji_to_kanji ekimei_romaji1 global_ekimei_list in
  let ekimei_kanji2 = romaji_to_kanji ekimei_romaji2 global_ekimei_list in
  if ekimei_kanji1 = "" then ekimei_romaji1 ^ " という駅は存在しません"
  else if ekimei_kanji2 = "" then ekimei_romaji2 ^ " という駅は存在しません"
  else
    let ekikan_kyori =
      get_ekikan_kyori ekimei_kanji1 ekimei_kanji2 global_ekikan_list
    in
    if ekikan_kyori = infinity then
      ekimei_kanji1 ^ "と" ^ ekimei_kanji2 ^ "はつながっていません"
    else
      ekimei_kanji1 ^ "から" ^ ekimei_kanji2 ^ "までは "
      ^ string_of_float ekikan_kyori
      ^ " キロです"
