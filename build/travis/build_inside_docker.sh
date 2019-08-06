#!/bin/bash

if [[ $- = *x* ]]; then
    opt_x=-x
else
    opt_x=+x
fi

prog=${0##*/}
progdir=${0%%/*}

fail () {
    set +x
    echo "$prog:" "$@" >&2
    exit 1
}


# vim:et:sw=4:sts=4:ts=8
