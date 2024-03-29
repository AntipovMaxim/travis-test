export GIT_COMMITTER_EMAIL="travis@travis"
export GIT_COMMITTER_NAME="Travis CI"

echo "$GITHUB_SECRET_TOKEN" ---- token

git config --add remote.origin.fetch +refs/heads/*:refs/remotes/origin/* || exit

git fetch --all || exit

git checkout master || exit

git merge --no-ff "$TRAVIS_COMMIT" || exit

git push "https://$GITHUB_SECRET_TOKEN@github.com/martmax/travis-test.git"
