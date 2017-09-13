# mapql
Simple utility to query maps

usage
-----

```erlang
(mapql@127.0.0.1)1> Q = mapql:make_query("abc.*.1").
[<<"abc">>,<<"*">>,<<"1">>]
(mapql@127.0.0.1)2> M = #{<<"def">> => 1, <<"abc">> => #{anything => #{<<"2">> => abc, <<"1">> => it_works}}}.
#{<<"abc">> =>
      #{anything => #{<<"1">> => it_works,<<"2">> => abc}},
  <<"def">> => 1}
(mapql@127.0.0.1)3> mapql:find(M, Q).
it_works
(mapql@127.0.0.1)4>
```
