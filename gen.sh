#!/bin/sh
mkdir -p dashboards
dhall-to-json --pretty --file examples/simple.dhall --output dashboards/simple.json
dhall-to-json --pretty --file examples/prometheus.dhall --output dashboards/prometheus.json
