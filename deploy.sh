npm run build
cd dist
git init
git add -A
git commit -m 'deploy'
git push -f git@github.com:victor-ivanov-ivt20-2/my_personal_site.git master:gh-pages
