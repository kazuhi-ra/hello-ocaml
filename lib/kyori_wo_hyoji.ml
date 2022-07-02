open Romaji_to_kanji
open Get_ekikan_kyori
open Ekimei

let kyori_wo_hyoji romaji_ekimei1 romaji_ekimei2 ekikan_list =
  let kanji_ekimei1 = romaji_to_kanji romaji_ekimei1 global_ekimei_list in
  let kanji_ekimei2 = romaji_to_kanji romaji_ekimei2 global_ekimei_list in
  let ekikan_kyori = get_ekikan_kyori kanji_ekimei1 kanji_ekimei2 ekikan_list in
  if kanji_ekimei1 = "" then romaji_ekimei1 ^ " という駅は存在しません"
  else if kanji_ekimei2 = "" then romaji_ekimei2 ^ " という駅は存在しません"
  else if ekikan_kyori = infinity then
    kanji_ekimei1 ^ "と" ^ kanji_ekimei2 ^ "はつながっていません"
  else
    kanji_ekimei1 ^ "から" ^ kanji_ekimei2 ^ "までは "
    ^ string_of_float ekikan_kyori
    ^ " キロです"
