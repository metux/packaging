#!/bin/bash

scriptname=`basename "$0"`

case "$scriptname" in
	build-*)
		PACKAGE="${scriptname##build-}"
	;;
	*)
		echo "cannot guess package name from script name" >&2
		exit 1
	;;
esac

./scripts/wksp build-dpkg "${PACKAGE}"
