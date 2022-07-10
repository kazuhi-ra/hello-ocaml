open Lib.Make_eki_list
open Lib.Ekimei

let ekimei_list =
  [
    { kanji = "池袋"; kana = "いけぶくろ"; romaji = "ikebukuro"; shozoku = "丸ノ内線" };
    { kanji = "新大塚"; kana = "しんおおつか"; romaji = "shinotsuka"; shozoku = "丸ノ内線" };
    { kanji = "茗荷谷"; kana = "みょうがだに"; romaji = "myogadani"; shozoku = "丸ノ内線" };
    { kanji = "後楽園"; kana = "こうらくえん"; romaji = "korakuen"; shozoku = "丸ノ内線" };
    {
      kanji = "本郷三丁目";
      kana = "ほんごうさんちょうめ";
      romaji = "hongosanchome";
      shozoku = "丸ノ内線";
    };
    { kanji = "御茶ノ水"; kana = "おちゃのみず"; romaji = "ochanomizu"; shozoku = "丸ノ内線" };
  ]

let test1 = make_eki_list [] = []

let test2 =
  make_eki_list ekimei_list
  = [
      { namae = "池袋"; saitan_kyori = infinity; temae_list = [] };
      { namae = "新大塚"; saitan_kyori = infinity; temae_list = [] };
      { namae = "茗荷谷"; saitan_kyori = infinity; temae_list = [] };
      { namae = "後楽園"; saitan_kyori = infinity; temae_list = [] };
      { namae = "本郷三丁目"; saitan_kyori = infinity; temae_list = [] };
      { namae = "御茶ノ水"; saitan_kyori = infinity; temae_list = [] };
    ]

let kekka = test1 && test2
let () = print_string (if kekka then " Success" else "Failed")
