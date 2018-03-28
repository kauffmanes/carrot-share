-module(hello_handler).
-behavior(cowboy_handler).

-export([init/2]).

init(Req0, State) ->
	%% send a 200 OK reply with a content header
	Req = cowboy_req:reply(200,
	    #{<<"content-type">> => <<"text/plain">>},
	    <<"Hello Erlang!">>,
	    Req0	
	),
	{ok, Req, State}.
