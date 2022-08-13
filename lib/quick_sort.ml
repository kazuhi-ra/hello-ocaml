let rec quick_sort lst =
  let take n lst p = List.filter (fun item -> p item n) lst in
  let take_less n lst = take n lst ( < ) in
  let take_greater n lst = take n lst ( > ) in
  let take_equal n lst = take n lst ( = ) in
  match lst with
  | [] -> []
  | first :: rest ->
      quick_sort (take_less first rest)
      @ take_equal first lst
      @ quick_sort (take_greater first rest)
