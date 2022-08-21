open Seiretsu
open Ekimei
open Ekikan
open Romaji_to_kanji
open Make_initial_eki_list
open Dijkstra_main
open Make_eki_list

let dijkstra romaji_kiten romaji_shuten =
  let uniq_ekimei_list = seiretsu global_ekimei_list in
  let kanji_kiten = romaji_to_kanji romaji_kiten uniq_ekimei_list in
  let kanji_shuten = romaji_to_kanji romaji_shuten uniq_ekimei_list in
  let initial_eki_list = make_initial_eki_list uniq_ekimei_list kanji_kiten in
  let calculated_eki_list = dijkstra_main initial_eki_list global_ekikan_list in
  List.find (fun x -> x.namae = kanji_shuten) calculated_eki_list
