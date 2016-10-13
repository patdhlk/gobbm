#!/bin/sh

set -e

TOOL=gobbm

## Make a temp dir
tempdir=$(mktemp -d update-${TOOL}-deps.XXXXXX)

## Set paths
export GOPATH="$(pwd)/${tempdir}"
export PATH="${GOPATH}/bin:${PATH}"
cd $tempdir

## Get Vault
mkdir -p src/github.com/patdhlk
cd src/github.com/hashicorp
echo "Fetching ${TOOL}..."
git clone https://github.com/patdhlk/${TOOL}
cd ${TOOL}

## Clean out earlier vendoring
rm -rf Godeps vendor

## Get govendor
go get github.com/kardianos/govendor

## Init
govendor init

## Fetch deps
echo "Fetching deps, will take some time..."
govendor fetch +missing

echo "Done; to commit run \n\ncd ${GOPATH}/src/github.com/patdhlk/${TOOL}\n"
