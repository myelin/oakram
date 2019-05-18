# Copyright 2019 Google LLC
#
# This source file is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published
# by the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# This source file is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program.  If not, see <http://www.gnu.org/licenses/>.

NAME=oakram
ROOT=.
LAYERS=4
SKIP_SETUP_DEFAULTS=1
include common/Makefile.pcb

update_gerber:
	rm gerber/*
	rm -rf gerber_tmp
	make
	unzip oakram.zip -d gerber
	mv oakram.zip gerber/