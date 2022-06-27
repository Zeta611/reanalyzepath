%start main

%token <int> NUM
%token EOF
%type <Lang.syntax> main

%%

main: NUM EOF { Lang.Const($1) }
;
%%
