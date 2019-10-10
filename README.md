# `dhall-grafana`

`dhall-grafana` contains [Dhall][dhall-lang] bindings to [Grafana][grafana],
so you can generate Grafana dashboards from Dhall expressions.  This will let
you easily typecheck, template and modularize your Grafana dashboards.

# Requirements

- docker
- docker-compose

# Getting started

    $ docker-compose -f docker/docker-compose.yml up --build

Then visit http://localhost:3000 and see the generated dashboards.

[dhall-lang]: https://github.com/dhall-lang/dhall-lang
[grafana]: https://grafana.com/
