#!/bin/bash

echo "New test cases"

echo "Testing for padding"
echo "oneringtorulethema" > /dev/vault0
echo $(cat /dev/vault0)

echo "Testing for empty device read"
./VCT /dev/vault0
echo $(cat /dev/vault0)

echo "Testing for writing again"
echo "gotta catch them all" > /dev/vault0
echo $(cat /dev/vault0)
echo $(cat /dev/vault0)

