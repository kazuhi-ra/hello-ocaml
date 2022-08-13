open OUnit2

let all_tests =
  "all_tests"
  >::: [
         Hyoji_test.tests;
         Romaji_to_kanji_test.tests;
         Get_ekikan_kyori_test.tests;
         Kyori_wo_hyoji_test.tests;
         Make_eki_list_test.tests;
         Shokika_test.tests;
         Ins_sort_test.tests;
         Seiretsu_test.tests;
         Koushin_test.tests;
         Make_initial_eki_list_test.tests;
         Quick_sort_test.tests;
       ]

let () = run_test_tt_main all_tests
