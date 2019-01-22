#!/usr/bin/env bash
#
set -x;
# set -e;
# set -o pipefail;
#

# Move to APP
if [ -d ../cakephp/app ]; then
  cd ../cakephp/app
fi

if [ "$CODECOVERAGE" == '1' ]; then
  cd Plugin/$PLUGIN_NAME

  bash <(curl -sSL https://codecov.io/bash)
fi
