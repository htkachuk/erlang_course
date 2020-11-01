-module(p14).

-export([duplicate/1]).

duplicate(Input) -> duplicate(Input, []).

duplicate([], Output) -> Output;
duplicate([H | T], Output) ->
    duplicate(T, Output ++ [H, H]).
