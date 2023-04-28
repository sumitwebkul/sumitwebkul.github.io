#!/usr/bin/env sh

# abort on errors
set -e

# build
npm run build

# navigate into the build output directory
cd src/.vuepress/dist

# if you are deploying to a custom domain
# echo 'testdocs.sum.com' > CNAME

git init
git add -A
git commit -m 'Deploy docs to GitHub'

git push -f git@github.com:sumitwebkul/testvuedocs.git master

cd -
