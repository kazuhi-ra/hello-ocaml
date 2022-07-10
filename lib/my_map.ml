let rec my_map fn lst =
  match lst with [] -> [] | first :: rest -> fn first :: my_map fn rest

let x2 x = x * 2
let fn = my_map x2 [ 3; 8; 9 ]
