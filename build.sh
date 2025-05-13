#!/bin/bash

appName="PanIndex"
builtAt="$(date +'%F %T %z')"
goVersion=$(go version | sed 's/go version //')
gitAuthor="LoveDoLove <github.com/LoveDoLove>"
gitCommit=$(git log --pretty=format:"%h" -1)
version=$(git describe --long --tags --dirty --always)

ldflags="\
-w -s \
-X 'github.com/px-org/PanIndex/module.BUILD_TIME=$builtAt' \
-X 'github.com/px-org/PanIndex/module.GO_VERSION=$goVersion' \
-X 'github.com/px-org/PanIndex/module.GIT_COMMIT_SHA=$gitCommit' \
-X 'github.com/px-org/PanIndex/module.VERSION=$version' \
"

export CGO_ENABLED=1
export CC="clang --target=x86_64-unknown-freebsd14.1 --sysroot=/opt/freebsd"
export GOOS=freebsd
go build -ldflags="$ldflags" -tags=jsoniter .
