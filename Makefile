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

path_bin = $(DESTDIR)/usr/local/bin/

default:
	@echo "use 'make install' to install"

.PHONY: install
install:
	mkdir -p $(path_bin)
	install -m 0655 src/git-sync-fork.sh "$(path_bin)"
	ln -s /usr/local/bin/git-sync-fork.sh "$(path_bin)"/git-sync-fork
	install -m 0655 src/diff-highlight.pl "$(path_bin)"

.PHONY: remove
remove:
	rm "$(path_bin)"/git-sync-fork
	rm "$(path_bin)"/git-sync-fork.sh
	rm "$(path_bin)"/diff-highlight.pl