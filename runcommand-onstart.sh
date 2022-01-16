#!/bin/sh
script_full_path=$(dirname "$0")
"${script_full_path}/execute_runcommand_scripts.sh" runcommand-onstart "$@"
