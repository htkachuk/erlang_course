-module(p10).

-export([encode/1]).

encode([{Num, H}, H | T]) -> encode([{Num + 1, H} | T]);
encode([{Num, H} | T]) -> [{Num, H} | encode(T)];
encode([H | T]) -> encode([{1, H} | T]);
encode([]) -> [].
