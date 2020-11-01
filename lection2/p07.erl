-module(p07).

-export([flatten/1]).

flatten([H | T]) when is_list(H) ->
    flatten(H) ++ flatten(T);
flatten([H | T]) -> [H | flatten(T)];
flatten([]) -> [].
