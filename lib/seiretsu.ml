open Ekimei

let rec insert lst element =
  match lst with
  | [] -> [ element ]
  | first :: rest ->
      if first.kana > element.kana then element :: lst
      else first :: insert rest element

let rec sorted_ekimei_lst ekimei_lst =
  match ekimei_lst with
  | [] -> []
  | first :: rest -> insert (sorted_ekimei_lst rest) first

let rec seiretsu ekimei_lst =
  match sorted_ekimei_lst ekimei_lst with
  | [] -> []
  | first :: second :: rest ->
      if first.kana = second.kana then first :: seiretsu rest
      else first :: second :: seiretsu rest
  | [ element ] -> [ element ]
