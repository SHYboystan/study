
# 当发生错误时中止脚本
set -e

# 构建
pnpm run build

# cd 到构建输出的目录下
cd dist

git init
git add -A
git commit -m 'deploy'

# 部署到 https://<shyboystan>.github.io/<REPO>
git push -f git@github.com/SHYboystan/study.git master:vue-h5
#git push -f git@github.com:<shyboystan>/<REPO>.git master:gh-pages

cd -

