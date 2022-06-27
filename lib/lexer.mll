{
  open Parser
}

rule token = parse
  | ['0'-'9']+ as n { NUM (int_of_string n) }
  | eof {EOF}