-module(p15).

-export([replicate/2]).

replicate(Input, Num) -> replicate(Input, Num, []).

replicate([], _, Output) -> Output;
replicate([H | T], Num, Output) ->
    replicate(T, Num, Output ++ replicate_elem(H, Num, [])).

replicate_elem(_, 0, L) -> L;
replicate_elem(H, Num, L) ->
    replicate_elem(H, Num - 1, [H | L]).
