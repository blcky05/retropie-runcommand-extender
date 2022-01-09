#!/bin/sh
file_name=$1
shift
find . -name "${file_name}-*.sh" -exec sh -c "{} $@" \;
