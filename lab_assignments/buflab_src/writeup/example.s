# Example of hand-generated assembly code
        pushl $0x89abcdef       # Push value onto stack
        addl $17,%eax           # Add 17 to %eax
        .align 4                # Following will be aligned on multiple of 4
        .long   0xfedcba98      # A 4-byte constant
        .long   0x00000000      # Padding
