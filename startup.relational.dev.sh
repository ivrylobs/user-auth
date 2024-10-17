#!/usr/bin/env bash
set -e

/opt/wait-for-it.sh db:3306
/opt/wait-for-it.sh maildev:1025
npm run migration:run
npm run seed:run:relational
npm run start:prod
