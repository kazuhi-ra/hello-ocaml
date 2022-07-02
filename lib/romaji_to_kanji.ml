open Ekimei

let rec romaji_to_kanji romaji global_ekimei_list =
  match global_ekimei_list with
  | [] -> ""
  | first :: rest ->
      if first.romaji = romaji then first.kanji else romaji_to_kanji romaji rest
