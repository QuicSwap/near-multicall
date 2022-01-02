#!/bin/bash
set -e

yarn test "**/admins*/" $@ # pass along any CLI flags, such as `--verbose`
yarn test "**/tokens*/" $@
yarn test "**/nearAPI*/" $@


# To run only one test file:
#    npm run test "**/main*"         # matches test files starting with "main"
#    npm run test "**/whatever/**/*" # matches test files in the "whatever" directory

# To run only one test:
#    npm run test -- -m "root sets*" # matches tests with titles starting with "root sets"
#    yarn test -m "root sets*"       # same thing using yarn instead of npm, see https://yarnpkg.com/
