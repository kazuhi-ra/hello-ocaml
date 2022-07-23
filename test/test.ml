open OUnit2

let all_tests =
  "all_tests" >::: [ Hyoji_test.tests; Romaji_to_kanji_test.tests ]

let () = run_test_tt_main all_tests
