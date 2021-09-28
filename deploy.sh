#!/usr/bin/env sh

# abort on errors

# build
npm  run build -prod

# navigate into the build output directory
cd dist

git init
git add -A
git commit -m 'deploy'



git push -f  https://github.com/lStevenmCT/viewsoft.git master:gh-pages

cd ..

chmod +x  dist/

cp -rf dist/ ../viewsoftd

cd -