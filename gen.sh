#!/bin/sh
mkdir -p dashboards
dhall-to-json --pretty --file simple.dhall --output dashboards/simple.json
dhall-to-json --pretty --file prometheus.dhall --output dashboards/prometheus.json
