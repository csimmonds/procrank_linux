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

LOCAL_PATH = .

LOCAL_OBJ_FILES := \
	pm_kernel.o \
	pm_process.o \
	pm_map.o \
	pm_memusage.o \
	strlcpy.o

LOCAL_C_INCLUDES := $(LOCAL_PATH)/include
CC = $(CROSS_COMPILE)gcc
CFLAGS = -Wall -I$(LOCAL_C_INCLUDES) -c -D_LARGEFILE64_SOURCE

all: libpagemap.a

libpagemap.a: $(LOCAL_OBJ_FILES)
	$(CROSS_COMPILE)ar rc libpagemap.a $(LOCAL_OBJ_FILES)

clean:
	rm -f $(LOCAL_OBJ_FILES) libpagemap.a

