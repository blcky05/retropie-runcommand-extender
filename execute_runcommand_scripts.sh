#!/bin/sh
script_full_path=$(dirname "$0")
file_name=$1
shift
find ${script_full_path} -name "${file_name}-*.sh" -exec sh -c "{} $@" \;
