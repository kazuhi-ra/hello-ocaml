open Saitan_wo_bunri
open Koushin

let rec dijkstra_main eki_lst ekikan_lst =
  if eki_lst = [] then []
  else
    let saitan_eki, rest_eki_lst = saitan_wo_bunri eki_lst in
    let koushined_rest_eki_lst = koushin saitan_eki rest_eki_lst ekikan_lst in
    saitan_eki :: dijkstra_main koushined_rest_eki_lst ekikan_lst
