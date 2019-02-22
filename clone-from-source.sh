#!/bin/bash
set -x
set -euvo pipefail
IFS=$'\n\t'

#clone mirror Rocket.Chat
git clone --mirror https://github.com/lbryio/lbry-redux.git

#move to directory
cd lbry-redux.git/

#push release-0.29.1 to source_branch
git push ssh://git-codecommit.us-east-1.amazonaws.com/v1/repos/lbry-redux 3ab065b11a52d3e2e6a50a25459f9ff0aac03b13:source_branch

cd ../

#remove directory
rm -rf lbry-redux.git/