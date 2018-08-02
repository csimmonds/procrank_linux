#
# Copyright (C) 2015 by Chris Simmonds <chris@2net.co.uk>
#

LOCAL_PATH = .

LOCAL_OBJ_FILES := \
	pm_kernel.o \
	pm_process.o \
	pm_map.o \
	pm_memusage.o \
	strlcpy.o

LOCAL_C_INCLUDES := $(LOCAL_PATH)/include
CFLAGS += -I$(LOCAL_C_INCLUDES) -c -D_LARGEFILE64_SOURCE

all: libpagemap.a

libpagemap.a: $(LOCAL_OBJ_FILES)
	$(AR) rc libpagemap.a $(LOCAL_OBJ_FILES)

clean:
	rm -f $(LOCAL_OBJ_FILES) libpagemap.a

