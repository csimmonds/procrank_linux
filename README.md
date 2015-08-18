# Display true memory usage using procrank

procrank is a tool commonly used by Android platform developers to find out
how much memory is really being used. In fact it is so useful that I was
surprised to find that versions that run on normal Linux are so conspicuous
by their absence. Hence my port to Linux here.

I have tested it so far only on 64-bit x86 and 32-bit ARM, but it should work
on any architecture so long as the kernel has pagemap.

# Build

For a native build:

```
$ make
```

To cross compile:

```
$ make CROSS_COMPILE=<your cross compile prefix>
```

# Usage

Simply run the program (as root):

```
./procrank 
  PID       Vss      Rss      Pss      Uss  cmdline
 1109    29072K   16388K   11296K    9600K  /usr/bin/python
  584    65160K   10400K    9372K    9096K  /usr/bin/node
...
                           ------   ------  ------
                           78433K   65556K  TOTAL

RAM: 509016K total, 346780K free, 14616K buffers, 70652K cached,
1468K shmem, 14580K slab
```

Run "./procranc -h" to see the help screen for more options.

# Theory

If you are intereted in the  background, I have written a blog post on smaps
and Pss at http://2net.co.uk/tutorial/procrank

# Where the source files came from

This version is from Android Lollipop, which I chose in order to have support
for 64-bit kernels as well as 32-bit.

The source for procrank is from $AOSP/system/extras/procrank

I had to edit procrank.c and add
```
#include <signal.h>
```

The source for libpagemap is from $AOSP/system/extras/libpagemap

And the source for strlcpy is from
$AOSP/bionic/libc/upstream-openbsd/lib/libc/string/strlcpy.c libpagemap

