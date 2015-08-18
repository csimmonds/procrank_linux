#
# Copyright (C) 2015 by Chris Simmonds <chris@2net.co.uk>
#
# This program is free software; you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation; either version 2 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU
# General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program; if not, write to the Free Software
# Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA 02111-1307 USA
#

PROGRAM = procrank

# LOCAL_CFLAGS := -Wall -Wextra -Wformat=2 -Werror
LOCAL_CFLAGS := -Wall

$(PROGRAM): $(PROGRAM).c libpagemap/libpagemap.a
	$(CROSS_COMPILE)gcc $(LOCAL_CFLAGS) $(PROGRAM).c -Ilibpagemap/include -Llibpagemap -lpagemap -o procrank

libpagemap/libpagemap.a:
	make -C libpagemap

clean:
	rm -f $(PROGRAM)
	make -C libpagemap clean
