type nengou_t =
  | Meiji of int
  | Taisho of int
  | Showa of int
  | Heisei of int
  | Reiwa of int

let nenrei birth_nengou current_nengou =
  let nengou_to_seireki n =
    match n with
    | Meiji x -> x + 1867
    | Taisho x -> x + 1911
    | Showa x -> x + 1925
    | Heisei x -> x + 1988
    | Reiwa x -> x + 2018
  in
  nengou_to_seireki current_nengou - nengou_to_seireki birth_nengou

let x = nenrei (Heisei 8) (Reiwa 4)
