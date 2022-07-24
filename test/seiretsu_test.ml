open OUnit2
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

let test1 = "seiretsu" >:: fun _ -> assert_equal (seiretsu []) []

let test2 =
  "seiretsu" >:: fun _ ->
  assert_equal (seiretsu ekimei_list)
    [
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

let tests = "all_tests" >::: [ test1; test2 ]
