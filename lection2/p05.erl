-module(p05).

-export([reverse/1]).

reverse(I) -> reverse(I, []).

reverse([], O) -> O;
reverse([H | T], O) -> reverse(T, [H | O]).
