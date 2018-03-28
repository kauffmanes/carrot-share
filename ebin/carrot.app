{application, 'carrot', [
	{description, "New project"},
	{vsn, "0.1.0"},
	{modules, ['carrot_app','carrot_sup','hello_handler']},
	{registered, [carrot_sup]},
	{applications, [kernel,stdlib,cowboy]},
	{mod, {carrot_app, []}},
	{env, []}
]}.