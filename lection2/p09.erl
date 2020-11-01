-module(p09).

-export([pack/1]).

pack([[H | T2], H | T]) -> pack([[H, H | T2] | T]);
pack([H, H | T]) -> pack([[H, H] | T]);
pack([H | T]) when is_list(H) -> [H | pack(T)];
pack([H | T]) -> [[H] | pack(T)];
pack([]) -> [].
