open OUnit2
open Lib.Make_eki_list
open Lib.Dijkstra

let test1 =
  "dijkstra" >:: fun _ ->
  assert_equal
    (dijkstra "shibuya" "gokokuji")
    {
      namae = "護国寺";
      saitan_kyori = 9.8;
      temae_list =
        [ "護国寺"; "江戸川橋"; "飯田橋"; "市ヶ谷"; "麹町"; "永田町"; "青山一丁目"; "表参道"; "渋谷" ];
    }

let test2 =
  "dijkstra" >:: fun _ ->
  assert_equal
    (dijkstra "myogadani" "meguro")
    {
      namae = "目黒";
      saitan_kyori = 12.7000000000000028;
      temae_list =
        [
          "目黒";
          "白金台";
          "白金高輪";
          "麻布十番";
          "六本木一丁目";
          "溜池山王";
          "永田町";
          "麹町";
          "市ヶ谷";
          "飯田橋";
          "後楽園";
          "茗荷谷";
        ];
    }

let tests = "all_tests" >::: [ test1; test2 ]
