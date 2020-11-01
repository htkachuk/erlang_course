-module(p12).

-export([decode/2, decode_modified/1]).

decode({1, H}, L) -> [H | L];
decode({Num, H}, L) -> decode({Num - 1, H}, [H | L]).

decode_modified([H | T]) when is_tuple(H) ->
    decode(H, []) ++ decode_modified(T);
decode_modified([H | T]) -> [H | decode_modified(T)];
decode_modified([]) -> [].
