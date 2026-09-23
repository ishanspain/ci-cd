set -e

# git pull
# npm i
# npm test
# npm build

echo "pull backend changes"
echo "install packages"
echo "run tests"
echo "then build"

pm2 restart aigalaxy
