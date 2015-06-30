#!/bin/bash

set -e

rm -f vendorize-issue
rm -fr vendor
git checkout .
vendorize github.com/dmac/vendorize-issue github.com/dmac/vendorize-issue/vendor
go build
