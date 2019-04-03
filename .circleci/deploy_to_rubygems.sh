VERSION=$(git describe --tags | sed -e 's/^v//')
git config user.email "2687752+NA070@users.noreply.github.com"
git config user.name "2687752+NA070"

# Update version.rb
sed -i -e "s/VERSION = \"[0-9]\{1,\}.[0-9]\{1,\}.[0-9]\{1,\}\"/VERSION = \"$VERSION\"/" lib/release_test_nao/version.rb
git diff
git checkout master
git add lib/release_test_nao/version.rb
git commit -m "Version $VERSION"

# Build and release gem
gem build release_test_nao.gemspec
gem push "release_test_nao-$VERSION.gem"

# Push to master
git push origin master