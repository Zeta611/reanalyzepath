open Reanalyzepath

let test_input = Parser.main Lexer.token (Lexing.from_channel stdin)
let unused = 4
let () = match test_input with Lang.Const n -> print_endline (string_of_int n)
