-module(mapql).

-export([find/2, make_query/1]).


find(M, Q) ->
    find_internal(M, Q).



find_internal(M, []) ->
    M;
find_internal(M, [<<"*">> | Rest]) ->
    [FirstValue | _] = maps:values(M),
    find_internal(FirstValue, Rest);
find_internal(M, [Key | Rest]) ->
    Val = maps:get(Key, M),
    find_internal(Val, Rest).


make_query(Q) ->
    [convert_token(T) || T <- string:tokens(Q, ".")].


convert_token(T) when is_list(T) ->
    list_to_binary(T).
