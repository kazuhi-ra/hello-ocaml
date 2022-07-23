open Ekikan

let rec get_ekikan_kyori ekimei1 ekimei2 ekikan_list =
  match ekikan_list with
  | [] -> infinity
  | first :: rest ->
      if
        (first.kiten = ekimei1 && first.shuten = ekimei2)
        || (first.kiten = ekimei2 && first.shuten = ekimei1)
      then first.kyori
      else get_ekikan_kyori ekimei1 ekimei2 rest
