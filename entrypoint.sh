#!/bin/sh
# Docker entrypoint script.

./prod/rel/beton/bin/beton eval Beton.Release.migrate

./prod/rel/beton/bin/beton start