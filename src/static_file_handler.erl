-module(static_file_handler).
-behavior(cowboy_handler).

-export([init/2]).

init(Req, State) ->
	{ok, Req, State}.
