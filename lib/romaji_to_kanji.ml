open Ekimei

let rec romaji_to_kanji romaji eki =
  match eki with
  | [] -> ""
  | first :: rest ->
      if romaji = first.romaji then first.kanji else romaji_to_kanji romaji rest
