-module(carrot_app).
-behaviour(application).

-export([start/2]).
-export([stop/1]).

start(_Type, _Args) ->
	% Dispatch = cowboy_router:compile([
	%   {'_', [{"/", hello_handler, []}]}
	% ]),

	Dispatch = cowboy_router:compile([
		{'_', [priv_file, carrot, "static/index.html"]}
	]),
	{ok, _} = cowboy:start_clear(my_http_listener,
	  [{port, 8080}],
	  #{env => #{dispatch => Dispatch}}
	),
	carrot_sup:start_link().

stop(_State) ->
	ok.
