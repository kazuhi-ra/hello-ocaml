open Ekikan
open Make_eki_list
open Get_ekikan_kyori

let koushin1 p q =
  let ekikan_kyori = get_ekikan_kyori p.namae q.namae global_ekikan_list in
  if ekikan_kyori = infinity then q
  else if p.saitan_kyori +. ekikan_kyori < q.saitan_kyori then
    {
      namae = q.namae;
      saitan_kyori = p.saitan_kyori +. ekikan_kyori;
      temae_list = q.namae :: p.temae_list;
    }
  else q
