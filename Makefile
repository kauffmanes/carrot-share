PROJECT = carrot
PROJECT_DESCRIPTION = New project
PROJECT_VERSION = 0.1.0

DEPS = cowboy
dep_cowboy_commit = 2.2.2

DEP_PLUGINS = cowboy

.PHONY: release clean-release

release: clean-release all projects
	relx -o rel/$(PROJECT)

clean-release: clean-projects
	rm -rf rel/$(PROJECT)

include erlang.mk
