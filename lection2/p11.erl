-module(p11).

-export([encode_modified/1]).

encode_modified([{Num, H}, H | T]) ->
    encode_modified([{Num + 1, H} | T]);
encode_modified([{Num, H} | T]) ->
    [{Num, H} | encode_modified(T)];
encode_modified([H, H | T]) ->
    encode_modified([{2, H} | T]);
encode_modified([H | T]) -> [H | encode_modified(T)];
encode_modified([]) -> [].
