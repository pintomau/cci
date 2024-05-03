#! /bin/bash

# exit if any error occurs, error on usage of undefined variables
# https://explainshell.com/explain?cmd=set+-eu
set -eu

main() {

    # sync local env with Pipfile.lock
    # requires pipenv
    pipenv sync

    # install cf shell globally
    # requires npm
    npm i -g @salesforce/cli

}

main
