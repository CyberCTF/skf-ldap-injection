#!/bin/sh
# A wrong login is checked against the LDAP directory.
set -e
H=http://web:5000
curl -fsS -d "username=probe&password=probe" "$H/login" | grep -q "Wrong identity provided."
