#! /bin/bash

set -e
set -o pipefail

function usage {
	echo "Usage: $0 <HOST> <DIR>" >&2
}

HOST="$1"
if [ -z "$HOST" ]; then
	usage
	exit 1
fi
shift

DIR="$1"
if [ -z "$DIR" ]; then
	usage
	exit 1
fi
shift

rsync -av setup/ "$HOST":"$DIR"/setup
rsync -av config/ "$HOST":"$DIR"/config
