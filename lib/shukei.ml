type gakusei_t = { tensuu : int; namae : string; seiseki : string }

let rec shukei lst =
  match lst with
  | [] -> (0, 0, 0, 0)
  | first :: rest -> (
      let a, b, c, d = shukei rest in
      match first.seiseki with
      | "A" -> (a + 1, b, c, d)
      | "B" -> (a, b + 1, c, d)
      | "C" -> (a, b, c + 1, d)
      | _ -> (a, b, c, d + 1))
;;

shukei [] = (0, 0, 0, 0);;
shukei [ { tensuu = 70; namae = "kazuhira"; seiseki = "A" } ] = (0, 1, 0, 0)
