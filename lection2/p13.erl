-module(p13).

-export([decode/1]).

decode([H | T]) -> p12:decode(H, []) ++ decode(T);
decode([]) -> [].
