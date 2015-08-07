PROGRAM = procrank

# LOCAL_CFLAGS := -Wall -Wextra -Wformat=2 -Werror
LOCAL_CFLAGS := -Wall

$(PROGRAM): $(PROGRAM).c
	$(CROSS_COMPILE)gcc $(LOCAL_CFLAGS) $(PROGRAM).c -Ilibpagemap/include -Llibpagemap -lpagemap -o procrank

clean:
	rm -f $(PROGRAM)
