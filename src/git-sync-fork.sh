#!/bin/bash

# This file is part of 'git-helper'.
#
# Copyright 2017 Sergio Lindo <sergiolindo.empresa@gmail.com>
#
# 'git-helper' is free software: you can redistribute it and/or
# modify it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or (at your
# option) any later version.
#
# 'git-helper' is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General
# Public License for more details.
# You should have received a copy of the GNU General Public License along with
# 'git-helper'. If not, see <http://www.gnu.org/licenses/>.

# Name: git-sync-fork.sh
#
# Synopsis:
#   git-sync-fork.sh [BRANCH]...
#   Example: git-sync-fork.sh master gh-pages
#
# Description:
#   It updates the branches in fork with the branches in the upstream repository.
#
#   Assumptions:
#   - The current directory is the git project.
#   - The name of the remote for the upstream repository is 'origin'.
#   - The name of the remote for the forked repository is 'fork'.
#


if [ "$#" -gt 0 ]; then
  branches_to_sync=$@
else
  branches_to_sync="master"
fi

git remote update --prune && \
for branch_name in $branches_to_sync; do
  git checkout $branch_name && \
  git merge origin/$branch_name && \
  git push fork $branch_name:$branch_name
done
