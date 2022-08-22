#!/bin/sh

DN=$(dirname $0)
REPO=$(cd $DN/.. && pwd)

mkdir -p $REPO/data/cell
mkdir -p $REPO/data/code
