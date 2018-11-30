#!/bin/bash -eux

npx webpack --profile --json > stats.json
echo "See stats.json for result."
