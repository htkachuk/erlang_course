-module(p06).

-export([is_palindrome/1]).

is_palindrome(I) -> p05:reverse(I) == I.
