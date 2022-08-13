open Get_ekikan_kyori
open Make_eki_list
open Ekikan

(* let koushin1 p q =
   let ekikan_kyori = get_ekikan_kyori p.namae q.namae global_ekikan_list in
   if ekikan_kyori = infinity then q
   else
     let new_saitan_kyori = p.saitan_kyori +. ekikan_kyori in
     if new_saitan_kyori >= q.saitan_kyori then q
     else
       {
         namae = q.namae;
         saitan_kyori = new_saitan_kyori;
         temae_list = q.namae :: p.temae_list;
       } *)

let koushin eki eki_lst =
  List.map
    (fun q ->
      let ekikan_kyori =
        get_ekikan_kyori eki.namae q.namae global_ekikan_list
      in
      if ekikan_kyori = infinity then q
      else
        let new_saitan_kyori = eki.saitan_kyori +. ekikan_kyori in
        if new_saitan_kyori >= q.saitan_kyori then q
        else
          {
            namae = q.namae;
            saitan_kyori = new_saitan_kyori;
            temae_list = q.namae :: eki.temae_list;
          })
    eki_lst
