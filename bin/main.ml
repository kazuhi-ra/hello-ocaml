open Lib.Ekimei
open Lib.Seiretsu

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

let test1 =
  ekimei_insert []
    { kanji = "茗荷谷"; kana = "みょうがだに"; romaji = "myogadani"; shozoku = "丸ノ内線" }
  = [
      { kanji = "茗荷谷"; kana = "みょうがだに"; romaji = "myogadani"; shozoku = "丸ノ内線" };
    ]

let test2 =
  ekimei_insert
    [
      { kanji = "池袋"; kana = "いけぶくろ"; romaji = "ikebukuro"; shozoku = "丸ノ内線" };
      {
        kanji = "御茶ノ水";
        kana = "おちゃのみず";
        romaji = "ochanomizu";
        shozoku = "丸ノ内線";
      };
      {
        kanji = "新大塚";
        kana = "しんおおつか";
        romaji = "shinotsuka";
        shozoku = "丸ノ内線";
      };
      {
        kanji = "本郷三丁目";
        kana = "ほんごうさんちょうめ";
        romaji = "hongosanchome";
        shozoku = "丸ノ内線";
      };
      { kanji = "茗荷谷"; kana = "みょうがだに"; romaji = "myogadani"; shozoku = "丸ノ内線" };
    ]
    { kanji = "後楽園"; kana = "こうらくえん"; romaji = "korakuen"; shozoku = "丸ノ内線" }
  = [
      { kanji = "池袋"; kana = "いけぶくろ"; romaji = "ikebukuro"; shozoku = "丸ノ内線" };
      {
        kanji = "御茶ノ水";
        kana = "おちゃのみず";
        romaji = "ochanomizu";
        shozoku = "丸ノ内線";
      };
      { kanji = "後楽園"; kana = "こうらくえん"; romaji = "korakuen"; shozoku = "丸ノ内線" };
      {
        kanji = "新大塚";
        kana = "しんおおつか";
        romaji = "shinotsuka";
        shozoku = "丸ノ内線";
      };
      {
        kanji = "本郷三丁目";
        kana = "ほんごうさんちょうめ";
        romaji = "hongosanchome";
        shozoku = "丸ノ内線";
      };
      { kanji = "茗荷谷"; kana = "みょうがだに"; romaji = "myogadani"; shozoku = "丸ノ内線" };
    ]

let test3 = seiretsu [] = []

let test4 =
  seiretsu ekimei_list
  = [
      { kanji = "池袋"; kana = "いけぶくろ"; romaji = "ikebukuro"; shozoku = "丸ノ内線" };
      {
        kanji = "御茶ノ水";
        kana = "おちゃのみず";
        romaji = "ochanomizu";
        shozoku = "丸ノ内線";
      };
      { kanji = "後楽園"; kana = "こうらくえん"; romaji = "korakuen"; shozoku = "丸ノ内線" };
      {
        kanji = "新大塚";
        kana = "しんおおつか";
        romaji = "shinotsuka";
        shozoku = "丸ノ内線";
      };
      {
        kanji = "本郷三丁目";
        kana = "ほんごうさんちょうめ";
        romaji = "hongosanchome";
        shozoku = "丸ノ内線";
      };
      { kanji = "茗荷谷"; kana = "みょうがだに"; romaji = "myogadani"; shozoku = "丸ノ内線" };
    ]

let kekka = test1 && test2 && test3 && test4
let () = print_string (if kekka then " Success" else "Failed")
