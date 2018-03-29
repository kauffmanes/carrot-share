-module(carrot_app).
-behaviour(application).

-export([start/2]).
-export([stop/1]).

start(_Type, _Args) ->

	Dispatch = cowboy_router:compile([
	  {'_', [
	  	{"/", cowboy_static, {priv_dir, carrot, ""}}
	  ]}
	]),
	{ok, _} = cowboy:start_clear(http,
	  [{port, 8080}],
	  #{env => #{dispatch => Dispatch},
	  	middlewares => [cowboy_router, cowboy_handler]
	  }
	),
	carrot_sup:start_link().

stop(_State) ->
	ok.