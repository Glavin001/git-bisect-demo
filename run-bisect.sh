#!/usr/bin/env bash
set -e

FIRST_COMMIT=$(git rev-list --max-parents=0 HEAD)

cp ./check-test.sh ./check-test-outside.sh

git bisect start HEAD $FIRST_COMMIT --

git bisect run ./check-test-outside.sh

git diff HEAD^

git bisect reset
