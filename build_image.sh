#!/usr/bin/env sh

export GO15VENDOREXPERIMENT=1
godep save
unset GO15VENDOREXPERIMENT
docker build -t snowflake .
rm -rf Godeps
rm -rf vendor
