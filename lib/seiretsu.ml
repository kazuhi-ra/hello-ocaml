open Ekimei

let rec ekimei_insert eki_list eki =
  match eki_list with
  | [] -> [ eki ]
  | first :: rest ->
      if first.kana < eki.kana then first :: ekimei_insert rest eki
      else eki :: eki_list

let rec ins_sort_by_kana eki_list =
  match eki_list with
  | [] -> []
  | first :: rest -> ekimei_insert (ins_sort_by_kana rest) first

let rec seiretsu eki_list =
  match ins_sort_by_kana eki_list with
  | [] -> []
  | first :: second :: rest ->
      if first.kana = second.kana then first :: seiretsu rest
      else first :: second :: seiretsu rest
  | [ first ] -> [ first ]
