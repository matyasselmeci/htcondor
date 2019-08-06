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

[[ -e $progdir/env.sh ]] && source "$progdir/env.sh"

mv bld_external bld_external_ubuntu
mv bld_external_rhel bld_external

yum -y install epel-release
yum -y install ${RHEL_DEPENDENCIES[@]}
yum -y install python36-devel boost169-devel boost169-static
cmake ${CMAKE_OPTIONS[@]}

# vim:et:sw=4:sts=4:ts=8
