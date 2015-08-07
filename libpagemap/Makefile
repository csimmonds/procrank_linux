LOCAL_PATH = .

LOCAL_SRC_FILES := \
	pm_kernel.c \
	pm_process.c \
	pm_map.c \
	pm_memusage.c

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

#pm_kernel.o: pm_kernel.c
#	$(CROSS_COMPILE)gcc $(CFLAGS) $< -o $@
#
#pm_process.o: pm_process.c
#	$(CROSS_COMPILE)gcc $(CFLAGS) $< -o $@
#
#pm_map.o: pm_map.c
#	$(CROSS_COMPILE)gcc $(CFLAGS) $< -o $@
#
#pm_memusage.o: pm_memusage.c
#	$(CROSS_COMPILE)gcc $(CFLAGS) $< -o $@
#

libpagemap.a: $(LOCAL_OBJ_FILES)
	$(CROSS_COMPILE)ar rc libpagemap.a $(LOCAL_OBJ_FILES)

clean:
	rm -f $(LOCAL_OBJ_FILES) libpagemap.a

