open Lib.Ekimei

let rec romaji_to_kanji romaji global_ekimei_list =
  match global_ekimei_list with
  | [] -> ""
  | first :: rest ->
      if first.romaji = romaji then first.kanji else romaji_to_kanji romaji rest

let () = print_string (romaji_to_kanji "asakusa" global_ekimei_list)
