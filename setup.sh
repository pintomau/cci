#! /bin/bash

# exit if any error occurs, error on usage of undefined variables
# https://explainshell.com/explain?cmd=set+-eu
set -eu

main() {

    echo "initiate pipenv environment and dependencies"    
    pipenv sync
    echo

    echo "copy chromedriver to pipenv path"
    chrome_path="$($(pipenv --venv)/Scripts/chromedriver-path)"
    cp "$chrome_path/chromedriver" "$(pipenv --venv)/Scripts"
    echo

    echo "install @salesforce/cli globally"
    npm i -g @salesforce/cli
    echo

    echo "You can now run \`pipenv shell\` to have access to all dependencies"

}

main
