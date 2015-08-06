
bufbomb:     file format elf32-i386


Disassembly of section .init:

080486e0 <_init>:
 80486e0:	53                   	push   %ebx
 80486e1:	83 ec 08             	sub    $0x8,%esp
 80486e4:	e8 97 04 00 00       	call   8048b80 <__x86.get_pc_thunk.bx>
 80486e9:	81 c3 17 29 00 00    	add    $0x2917,%ebx
 80486ef:	8b 83 fc ff ff ff    	mov    -0x4(%ebx),%eax
 80486f5:	85 c0                	test   %eax,%eax
 80486f7:	74 05                	je     80486fe <_init+0x1e>
 80486f9:	e8 d2 00 00 00       	call   80487d0 <__gmon_start__@plt>
 80486fe:	83 c4 08             	add    $0x8,%esp
 8048701:	5b                   	pop    %ebx
 8048702:	c3                   	ret    

Disassembly of section .plt:

08048710 <tempnam@plt-0x10>:
 8048710:	ff 35 04 b0 04 08    	pushl  0x804b004
 8048716:	ff 25 08 b0 04 08    	jmp    *0x804b008
 804871c:	00 00                	add    %al,(%eax)
	...

08048720 <tempnam@plt>:
 8048720:	ff 25 0c b0 04 08    	jmp    *0x804b00c
 8048726:	68 00 00 00 00       	push   $0x0
 804872b:	e9 e0 ff ff ff       	jmp    8048710 <_init+0x30>

08048730 <cuserid@plt>:
 8048730:	ff 25 10 b0 04 08    	jmp    *0x804b010
 8048736:	68 08 00 00 00       	push   $0x8
 804873b:	e9 d0 ff ff ff       	jmp    8048710 <_init+0x30>

08048740 <srandom@plt>:
 8048740:	ff 25 14 b0 04 08    	jmp    *0x804b014
 8048746:	68 10 00 00 00       	push   $0x10
 804874b:	e9 c0 ff ff ff       	jmp    8048710 <_init+0x30>

08048750 <fclose@plt>:
 8048750:	ff 25 18 b0 04 08    	jmp    *0x804b018
 8048756:	68 18 00 00 00       	push   $0x18
 804875b:	e9 b0 ff ff ff       	jmp    8048710 <_init+0x30>

08048760 <signal@plt>:
 8048760:	ff 25 1c b0 04 08    	jmp    *0x804b01c
 8048766:	68 20 00 00 00       	push   $0x20
 804876b:	e9 a0 ff ff ff       	jmp    8048710 <_init+0x30>

08048770 <alarm@plt>:
 8048770:	ff 25 20 b0 04 08    	jmp    *0x804b020
 8048776:	68 28 00 00 00       	push   $0x28
 804877b:	e9 90 ff ff ff       	jmp    8048710 <_init+0x30>

08048780 <__stack_chk_fail@plt>:
 8048780:	ff 25 24 b0 04 08    	jmp    *0x804b024
 8048786:	68 30 00 00 00       	push   $0x30
 804878b:	e9 80 ff ff ff       	jmp    8048710 <_init+0x30>

08048790 <_IO_getc@plt>:
 8048790:	ff 25 28 b0 04 08    	jmp    *0x804b028
 8048796:	68 38 00 00 00       	push   $0x38
 804879b:	e9 70 ff ff ff       	jmp    8048710 <_init+0x30>

080487a0 <fwrite@plt>:
 80487a0:	ff 25 2c b0 04 08    	jmp    *0x804b02c
 80487a6:	68 40 00 00 00       	push   $0x40
 80487ab:	e9 60 ff ff ff       	jmp    8048710 <_init+0x30>

080487b0 <puts@plt>:
 80487b0:	ff 25 30 b0 04 08    	jmp    *0x804b030
 80487b6:	68 48 00 00 00       	push   $0x48
 80487bb:	e9 50 ff ff ff       	jmp    8048710 <_init+0x30>

080487c0 <system@plt>:
 80487c0:	ff 25 34 b0 04 08    	jmp    *0x804b034
 80487c6:	68 50 00 00 00       	push   $0x50
 80487cb:	e9 40 ff ff ff       	jmp    8048710 <_init+0x30>

080487d0 <__gmon_start__@plt>:
 80487d0:	ff 25 38 b0 04 08    	jmp    *0x804b038
 80487d6:	68 58 00 00 00       	push   $0x58
 80487db:	e9 30 ff ff ff       	jmp    8048710 <_init+0x30>

080487e0 <exit@plt>:
 80487e0:	ff 25 3c b0 04 08    	jmp    *0x804b03c
 80487e6:	68 60 00 00 00       	push   $0x60
 80487eb:	e9 20 ff ff ff       	jmp    8048710 <_init+0x30>

080487f0 <srand@plt>:
 80487f0:	ff 25 40 b0 04 08    	jmp    *0x804b040
 80487f6:	68 68 00 00 00       	push   $0x68
 80487fb:	e9 10 ff ff ff       	jmp    8048710 <_init+0x30>

08048800 <__libc_start_main@plt>:
 8048800:	ff 25 44 b0 04 08    	jmp    *0x804b044
 8048806:	68 70 00 00 00       	push   $0x70
 804880b:	e9 00 ff ff ff       	jmp    8048710 <_init+0x30>

08048810 <getopt@plt>:
 8048810:	ff 25 48 b0 04 08    	jmp    *0x804b048
 8048816:	68 78 00 00 00       	push   $0x78
 804881b:	e9 f0 fe ff ff       	jmp    8048710 <_init+0x30>

08048820 <fopen@plt>:
 8048820:	ff 25 4c b0 04 08    	jmp    *0x804b04c
 8048826:	68 80 00 00 00       	push   $0x80
 804882b:	e9 e0 fe ff ff       	jmp    8048710 <_init+0x30>

08048830 <memset@plt>:
 8048830:	ff 25 50 b0 04 08    	jmp    *0x804b050
 8048836:	68 88 00 00 00       	push   $0x88
 804883b:	e9 d0 fe ff ff       	jmp    8048710 <_init+0x30>

08048840 <__strdup@plt>:
 8048840:	ff 25 54 b0 04 08    	jmp    *0x804b054
 8048846:	68 90 00 00 00       	push   $0x90
 804884b:	e9 c0 fe ff ff       	jmp    8048710 <_init+0x30>

08048850 <rand@plt>:
 8048850:	ff 25 58 b0 04 08    	jmp    *0x804b058
 8048856:	68 98 00 00 00       	push   $0x98
 804885b:	e9 b0 fe ff ff       	jmp    8048710 <_init+0x30>

08048860 <__strcpy_chk@plt>:
 8048860:	ff 25 5c b0 04 08    	jmp    *0x804b05c
 8048866:	68 a0 00 00 00       	push   $0xa0
 804886b:	e9 a0 fe ff ff       	jmp    8048710 <_init+0x30>

08048870 <__printf_chk@plt>:
 8048870:	ff 25 60 b0 04 08    	jmp    *0x804b060
 8048876:	68 a8 00 00 00       	push   $0xa8
 804887b:	e9 90 fe ff ff       	jmp    8048710 <_init+0x30>

08048880 <fputc@plt>:
 8048880:	ff 25 64 b0 04 08    	jmp    *0x804b064
 8048886:	68 b0 00 00 00       	push   $0xb0
 804888b:	e9 80 fe ff ff       	jmp    8048710 <_init+0x30>

08048890 <remove@plt>:
 8048890:	ff 25 68 b0 04 08    	jmp    *0x804b068
 8048896:	68 b8 00 00 00       	push   $0xb8
 804889b:	e9 70 fe ff ff       	jmp    8048710 <_init+0x30>

080488a0 <__fprintf_chk@plt>:
 80488a0:	ff 25 6c b0 04 08    	jmp    *0x804b06c
 80488a6:	68 c0 00 00 00       	push   $0xc0
 80488ab:	e9 60 fe ff ff       	jmp    8048710 <_init+0x30>

080488b0 <random@plt>:
 80488b0:	ff 25 70 b0 04 08    	jmp    *0x804b070
 80488b6:	68 c8 00 00 00       	push   $0xc8
 80488bb:	e9 50 fe ff ff       	jmp    8048710 <_init+0x30>

080488c0 <__ctype_b_loc@plt>:
 80488c0:	ff 25 74 b0 04 08    	jmp    *0x804b074
 80488c6:	68 d0 00 00 00       	push   $0xd0
 80488cb:	e9 40 fe ff ff       	jmp    8048710 <_init+0x30>

080488d0 <calloc@plt>:
 80488d0:	ff 25 78 b0 04 08    	jmp    *0x804b078
 80488d6:	68 d8 00 00 00       	push   $0xd8
 80488db:	e9 30 fe ff ff       	jmp    8048710 <_init+0x30>

080488e0 <__sprintf_chk@plt>:
 80488e0:	ff 25 7c b0 04 08    	jmp    *0x804b07c
 80488e6:	68 e0 00 00 00       	push   $0xe0
 80488eb:	e9 20 fe ff ff       	jmp    8048710 <_init+0x30>

Disassembly of section .text:

080488f0 <main>:
 80488f0:	55                   	push   %ebp
 80488f1:	89 e5                	mov    %esp,%ebp
 80488f3:	57                   	push   %edi
 80488f4:	bf 01 00 00 00       	mov    $0x1,%edi
 80488f9:	56                   	push   %esi
 80488fa:	53                   	push   %ebx
 80488fb:	83 e4 f0             	and    $0xfffffff0,%esp
 80488fe:	83 ec 20             	sub    $0x20,%esp
 8048901:	8b 75 08             	mov    0x8(%ebp),%esi
 8048904:	c7 44 24 04 d0 8c 04 	movl   $0x8048cd0,0x4(%esp)
 804890b:	08 
 804890c:	8b 5d 0c             	mov    0xc(%ebp),%ebx
 804890f:	c7 04 24 0b 00 00 00 	movl   $0xb,(%esp)
 8048916:	e8 45 fe ff ff       	call   8048760 <signal@plt>
 804891b:	c7 44 24 04 a0 8c 04 	movl   $0x8048ca0,0x4(%esp)
 8048922:	08 
 8048923:	c7 04 24 07 00 00 00 	movl   $0x7,(%esp)
 804892a:	e8 31 fe ff ff       	call   8048760 <signal@plt>
 804892f:	c7 44 24 04 00 8d 04 	movl   $0x8048d00,0x4(%esp)
 8048936:	08 
 8048937:	c7 04 24 0e 00 00 00 	movl   $0xe,(%esp)
 804893e:	e8 1d fe ff ff       	call   8048760 <signal@plt>
 8048943:	c7 44 24 04 40 8d 04 	movl   $0x8048d40,0x4(%esp)
 804894a:	08 
 804894b:	c7 04 24 04 00 00 00 	movl   $0x4,(%esp)
 8048952:	e8 09 fe ff ff       	call   8048760 <signal@plt>
 8048957:	a1 c0 b0 04 08       	mov    0x804b0c0,%eax
 804895c:	c7 44 24 1c 00 00 00 	movl   $0x0,0x1c(%esp)
 8048963:	00 
 8048964:	a3 00 b1 04 08       	mov    %eax,0x804b100
 8048969:	c7 44 24 08 ab 9b 04 	movl   $0x8049bab,0x8(%esp)
 8048970:	08 
 8048971:	89 5c 24 04          	mov    %ebx,0x4(%esp)
 8048975:	89 34 24             	mov    %esi,(%esp)
 8048978:	e8 93 fe ff ff       	call   8048810 <getopt@plt>
 804897d:	3c ff                	cmp    $0xff,%al
 804897f:	0f 84 29 01 00 00    	je     8048aae <main+0x1be>
 8048985:	83 e8 66             	sub    $0x66,%eax
 8048988:	3c 12                	cmp    $0x12,%al
 804898a:	77 1c                	ja     80489a8 <main+0xb8>
 804898c:	0f b6 c0             	movzbl %al,%eax
 804898f:	ff 24 85 b4 9b 04 08 	jmp    *0x8049bb4(,%eax,4)
 8048996:	c7 04 24 ac 99 04 08 	movl   $0x80499ac,(%esp)
 804899d:	e8 0e fe ff ff       	call   80487b0 <puts@plt>
 80489a2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 80489a8:	8b 03                	mov    (%ebx),%eax
 80489aa:	e8 c1 03 00 00       	call   8048d70 <usage>
 80489af:	a1 c4 b0 04 08       	mov    0x804b0c4,%eax
 80489b4:	89 04 24             	mov    %eax,(%esp)
 80489b7:	e8 84 fe ff ff       	call   8048840 <__strdup@plt>
 80489bc:	c7 44 24 04 7c 9b 04 	movl   $0x8049b7c,0x4(%esp)
 80489c3:	08 
 80489c4:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
 80489cb:	89 44 24 08          	mov    %eax,0x8(%esp)
 80489cf:	a3 f0 b0 04 08       	mov    %eax,0x804b0f0
 80489d4:	e8 97 fe ff ff       	call   8048870 <__printf_chk@plt>
 80489d9:	a1 f0 b0 04 08       	mov    0x804b0f0,%eax
 80489de:	89 04 24             	mov    %eax,(%esp)
 80489e1:	e8 9a 0b 00 00       	call   8049580 <gencookie>
 80489e6:	c7 44 24 04 86 9b 04 	movl   $0x8049b86,0x4(%esp)
 80489ed:	08 
 80489ee:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
 80489f5:	89 44 24 08          	mov    %eax,0x8(%esp)
 80489f9:	a3 f4 b0 04 08       	mov    %eax,0x804b0f4
 80489fe:	e8 6d fe ff ff       	call   8048870 <__printf_chk@plt>
 8048a03:	e9 61 ff ff ff       	jmp    8048969 <main+0x79>
 8048a08:	c7 05 a4 b0 04 08 01 	movl   $0x1,0x804b0a4
 8048a0f:	00 00 00 
 8048a12:	e9 52 ff ff ff       	jmp    8048969 <main+0x79>
 8048a17:	c7 05 fc b0 04 08 01 	movl   $0x1,0x804b0fc
 8048a1e:	00 00 00 
 8048a21:	e9 43 ff ff ff       	jmp    8048969 <main+0x79>
 8048a26:	c7 44 24 1c 01 00 00 	movl   $0x1,0x1c(%esp)
 8048a2d:	00 
 8048a2e:	bf 05 00 00 00       	mov    $0x5,%edi
 8048a33:	e9 31 ff ff ff       	jmp    8048969 <main+0x79>
 8048a38:	c7 05 f8 b0 04 08 01 	movl   $0x1,0x804b0f8
 8048a3f:	00 00 00 
 8048a42:	e9 22 ff ff ff       	jmp    8048969 <main+0x79>
 8048a47:	c7 05 ec b0 04 08 01 	movl   $0x1,0x804b0ec
 8048a4e:	00 00 00 
 8048a51:	c7 05 fc b0 04 08 01 	movl   $0x1,0x804b0fc
 8048a58:	00 00 00 
 8048a5b:	c7 05 88 b0 04 08 01 	movl   $0x1,0x804b088
 8048a62:	00 00 00 
 8048a65:	e9 ff fe ff ff       	jmp    8048969 <main+0x79>
 8048a6a:	a1 c4 b0 04 08       	mov    0x804b0c4,%eax
 8048a6f:	c7 44 24 04 94 9b 04 	movl   $0x8049b94,0x4(%esp)
 8048a76:	08 
 8048a77:	89 04 24             	mov    %eax,(%esp)
 8048a7a:	e8 a1 fd ff ff       	call   8048820 <fopen@plt>
 8048a7f:	85 c0                	test   %eax,%eax
 8048a81:	a3 00 b1 04 08       	mov    %eax,0x804b100
 8048a86:	0f 85 dd fe ff ff    	jne    8048969 <main+0x79>
 8048a8c:	a1 c4 b0 04 08       	mov    0x804b0c4,%eax
 8048a91:	c7 44 24 04 96 9b 04 	movl   $0x8049b96,0x4(%esp)
 8048a98:	08 
 8048a99:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
 8048aa0:	89 44 24 08          	mov    %eax,0x8(%esp)
 8048aa4:	e8 c7 fd ff ff       	call   8048870 <__printf_chk@plt>
 8048aa9:	e9 fa fe ff ff       	jmp    80489a8 <main+0xb8>
 8048aae:	83 3d f0 b0 04 08 00 	cmpl   $0x0,0x804b0f0
 8048ab5:	0f 84 db fe ff ff    	je     8048996 <main+0xa6>
 8048abb:	a1 f4 b0 04 08       	mov    0x804b0f4,%eax
 8048ac0:	31 f6                	xor    %esi,%esi
 8048ac2:	89 04 24             	mov    %eax,(%esp)
 8048ac5:	e8 76 fc ff ff       	call   8048740 <srandom@plt>
 8048aca:	e8 e1 fd ff ff       	call   80488b0 <random@plt>
 8048acf:	c7 44 24 04 04 00 00 	movl   $0x4,0x4(%esp)
 8048ad6:	00 
 8048ad7:	89 3c 24             	mov    %edi,(%esp)
 8048ada:	89 44 24 18          	mov    %eax,0x18(%esp)
 8048ade:	81 64 24 18 f8 0f 00 	andl   $0xff8,0x18(%esp)
 8048ae5:	00 
 8048ae6:	e8 e5 fd ff ff       	call   80488d0 <calloc@plt>
 8048aeb:	89 c3                	mov    %eax,%ebx
 8048aed:	8d 47 fe             	lea    -0x2(%edi),%eax
 8048af0:	85 c0                	test   %eax,%eax
 8048af2:	89 44 24 14          	mov    %eax,0x14(%esp)
 8048af6:	7e 14                	jle    8048b0c <main+0x21c>
 8048af8:	e8 b3 fd ff ff       	call   80488b0 <random@plt>
 8048afd:	83 e0 38             	and    $0x38,%eax
 8048b00:	89 04 b3             	mov    %eax,(%ebx,%esi,4)
 8048b03:	83 c6 01             	add    $0x1,%esi
 8048b06:	3b 74 24 14          	cmp    0x14(%esp),%esi
 8048b0a:	75 ec                	jne    8048af8 <main+0x208>
 8048b0c:	83 ff 01             	cmp    $0x1,%edi
 8048b0f:	74 08                	je     8048b19 <main+0x229>
 8048b11:	c7 44 bb f8 38 00 00 	movl   $0x38,-0x8(%ebx,%edi,4)
 8048b18:	00 
 8048b19:	a1 88 b0 04 08       	mov    0x804b088,%eax
 8048b1e:	31 f6                	xor    %esi,%esi
 8048b20:	c7 44 bb fc 00 00 00 	movl   $0x0,-0x4(%ebx,%edi,4)
 8048b27:	00 
 8048b28:	89 04 24             	mov    %eax,(%esp)
 8048b2b:	e8 40 fc ff ff       	call   8048770 <alarm@plt>
 8048b30:	8b 54 24 18          	mov    0x18(%esp),%edx
 8048b34:	8b 44 24 1c          	mov    0x1c(%esp),%eax
 8048b38:	03 14 b3             	add    (%ebx,%esi,4),%edx
 8048b3b:	83 c6 01             	add    $0x1,%esi
 8048b3e:	e8 fd 08 00 00       	call   8049440 <launch>
 8048b43:	39 f7                	cmp    %esi,%edi
 8048b45:	7f e9                	jg     8048b30 <main+0x240>
 8048b47:	8d 65 f4             	lea    -0xc(%ebp),%esp
 8048b4a:	31 c0                	xor    %eax,%eax
 8048b4c:	5b                   	pop    %ebx
 8048b4d:	5e                   	pop    %esi
 8048b4e:	5f                   	pop    %edi
 8048b4f:	5d                   	pop    %ebp
 8048b50:	c3                   	ret    

08048b51 <_start>:
 8048b51:	31 ed                	xor    %ebp,%ebp
 8048b53:	5e                   	pop    %esi
 8048b54:	89 e1                	mov    %esp,%ecx
 8048b56:	83 e4 f0             	and    $0xfffffff0,%esp
 8048b59:	50                   	push   %eax
 8048b5a:	54                   	push   %esp
 8048b5b:	52                   	push   %edx
 8048b5c:	68 40 96 04 08       	push   $0x8049640
 8048b61:	68 d0 95 04 08       	push   $0x80495d0
 8048b66:	51                   	push   %ecx
 8048b67:	56                   	push   %esi
 8048b68:	68 f0 88 04 08       	push   $0x80488f0
 8048b6d:	e8 8e fc ff ff       	call   8048800 <__libc_start_main@plt>
 8048b72:	f4                   	hlt    
 8048b73:	66 90                	xchg   %ax,%ax
 8048b75:	66 90                	xchg   %ax,%ax
 8048b77:	66 90                	xchg   %ax,%ax
 8048b79:	66 90                	xchg   %ax,%ax
 8048b7b:	66 90                	xchg   %ax,%ax
 8048b7d:	66 90                	xchg   %ax,%ax
 8048b7f:	90                   	nop

08048b80 <__x86.get_pc_thunk.bx>:
 8048b80:	8b 1c 24             	mov    (%esp),%ebx
 8048b83:	c3                   	ret    
 8048b84:	66 90                	xchg   %ax,%ax
 8048b86:	66 90                	xchg   %ax,%ax
 8048b88:	66 90                	xchg   %ax,%ax
 8048b8a:	66 90                	xchg   %ax,%ax
 8048b8c:	66 90                	xchg   %ax,%ax
 8048b8e:	66 90                	xchg   %ax,%ax

08048b90 <deregister_tm_clones>:
 8048b90:	b8 ab b0 04 08       	mov    $0x804b0ab,%eax
 8048b95:	2d a8 b0 04 08       	sub    $0x804b0a8,%eax
 8048b9a:	83 f8 06             	cmp    $0x6,%eax
 8048b9d:	77 01                	ja     8048ba0 <deregister_tm_clones+0x10>
 8048b9f:	c3                   	ret    
 8048ba0:	b8 00 00 00 00       	mov    $0x0,%eax
 8048ba5:	85 c0                	test   %eax,%eax
 8048ba7:	74 f6                	je     8048b9f <deregister_tm_clones+0xf>
 8048ba9:	55                   	push   %ebp
 8048baa:	89 e5                	mov    %esp,%ebp
 8048bac:	83 ec 18             	sub    $0x18,%esp
 8048baf:	c7 04 24 a8 b0 04 08 	movl   $0x804b0a8,(%esp)
 8048bb6:	ff d0                	call   *%eax
 8048bb8:	c9                   	leave  
 8048bb9:	c3                   	ret    
 8048bba:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

08048bc0 <register_tm_clones>:
 8048bc0:	b8 a8 b0 04 08       	mov    $0x804b0a8,%eax
 8048bc5:	2d a8 b0 04 08       	sub    $0x804b0a8,%eax
 8048bca:	c1 f8 02             	sar    $0x2,%eax
 8048bcd:	89 c2                	mov    %eax,%edx
 8048bcf:	c1 ea 1f             	shr    $0x1f,%edx
 8048bd2:	01 d0                	add    %edx,%eax
 8048bd4:	d1 f8                	sar    %eax
 8048bd6:	75 01                	jne    8048bd9 <register_tm_clones+0x19>
 8048bd8:	c3                   	ret    
 8048bd9:	ba 00 00 00 00       	mov    $0x0,%edx
 8048bde:	85 d2                	test   %edx,%edx
 8048be0:	74 f6                	je     8048bd8 <register_tm_clones+0x18>
 8048be2:	55                   	push   %ebp
 8048be3:	89 e5                	mov    %esp,%ebp
 8048be5:	83 ec 18             	sub    $0x18,%esp
 8048be8:	89 44 24 04          	mov    %eax,0x4(%esp)
 8048bec:	c7 04 24 a8 b0 04 08 	movl   $0x804b0a8,(%esp)
 8048bf3:	ff d2                	call   *%edx
 8048bf5:	c9                   	leave  
 8048bf6:	c3                   	ret    
 8048bf7:	89 f6                	mov    %esi,%esi
 8048bf9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

08048c00 <__do_global_dtors_aux>:
 8048c00:	80 3d c8 b0 04 08 00 	cmpb   $0x0,0x804b0c8
 8048c07:	75 13                	jne    8048c1c <__do_global_dtors_aux+0x1c>
 8048c09:	55                   	push   %ebp
 8048c0a:	89 e5                	mov    %esp,%ebp
 8048c0c:	83 ec 08             	sub    $0x8,%esp
 8048c0f:	e8 7c ff ff ff       	call   8048b90 <deregister_tm_clones>
 8048c14:	c6 05 c8 b0 04 08 01 	movb   $0x1,0x804b0c8
 8048c1b:	c9                   	leave  
 8048c1c:	f3 c3                	repz ret 
 8048c1e:	66 90                	xchg   %ax,%ax

08048c20 <frame_dummy>:
 8048c20:	a1 10 af 04 08       	mov    0x804af10,%eax
 8048c25:	85 c0                	test   %eax,%eax
 8048c27:	74 1f                	je     8048c48 <frame_dummy+0x28>
 8048c29:	b8 00 00 00 00       	mov    $0x0,%eax
 8048c2e:	85 c0                	test   %eax,%eax
 8048c30:	74 16                	je     8048c48 <frame_dummy+0x28>
 8048c32:	55                   	push   %ebp
 8048c33:	89 e5                	mov    %esp,%ebp
 8048c35:	83 ec 18             	sub    $0x18,%esp
 8048c38:	c7 04 24 10 af 04 08 	movl   $0x804af10,(%esp)
 8048c3f:	ff d0                	call   *%eax
 8048c41:	c9                   	leave  
 8048c42:	e9 79 ff ff ff       	jmp    8048bc0 <register_tm_clones>
 8048c47:	90                   	nop
 8048c48:	e9 73 ff ff ff       	jmp    8048bc0 <register_tm_clones>
 8048c4d:	66 90                	xchg   %ax,%ax
 8048c4f:	90                   	nop

08048c50 <save_char>:
 8048c50:	8b 15 e0 b0 04 08    	mov    0x804b0e0,%edx
 8048c56:	81 fa ff 03 00 00    	cmp    $0x3ff,%edx
 8048c5c:	7f 3a                	jg     8048c98 <save_char+0x48>
 8048c5e:	53                   	push   %ebx
 8048c5f:	89 c3                	mov    %eax,%ebx
 8048c61:	c0 fb 04             	sar    $0x4,%bl
 8048c64:	83 e0 0f             	and    $0xf,%eax
 8048c67:	83 e3 0f             	and    $0xf,%ebx
 8048c6a:	0f b6 80 00 9c 04 08 	movzbl 0x8049c00(%eax),%eax
 8048c71:	0f b6 9b 00 9c 04 08 	movzbl 0x8049c00(%ebx),%ebx
 8048c78:	8d 0c 52             	lea    (%edx,%edx,2),%ecx
 8048c7b:	83 c2 01             	add    $0x1,%edx
 8048c7e:	c6 81 22 b1 04 08 20 	movb   $0x20,0x804b122(%ecx)
 8048c85:	89 15 e0 b0 04 08    	mov    %edx,0x804b0e0
 8048c8b:	88 81 21 b1 04 08    	mov    %al,0x804b121(%ecx)
 8048c91:	88 99 20 b1 04 08    	mov    %bl,0x804b120(%ecx)
 8048c97:	5b                   	pop    %ebx
 8048c98:	f3 c3                	repz ret 
 8048c9a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

08048ca0 <bushandler>:
 8048ca0:	83 ec 1c             	sub    $0x1c,%esp
 8048ca3:	c7 04 24 60 96 04 08 	movl   $0x8049660,(%esp)
 8048caa:	e8 01 fb ff ff       	call   80487b0 <puts@plt>
 8048caf:	c7 04 24 d4 99 04 08 	movl   $0x80499d4,(%esp)
 8048cb6:	e8 f5 fa ff ff       	call   80487b0 <puts@plt>
 8048cbb:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
 8048cc2:	e8 19 fb ff ff       	call   80487e0 <exit@plt>
 8048cc7:	89 f6                	mov    %esi,%esi
 8048cc9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

08048cd0 <seghandler>:
 8048cd0:	83 ec 1c             	sub    $0x1c,%esp
 8048cd3:	c7 04 24 80 96 04 08 	movl   $0x8049680,(%esp)
 8048cda:	e8 d1 fa ff ff       	call   80487b0 <puts@plt>
 8048cdf:	c7 04 24 d4 99 04 08 	movl   $0x80499d4,(%esp)
 8048ce6:	e8 c5 fa ff ff       	call   80487b0 <puts@plt>
 8048ceb:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
 8048cf2:	e8 e9 fa ff ff       	call   80487e0 <exit@plt>
 8048cf7:	89 f6                	mov    %esi,%esi
 8048cf9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

08048d00 <alarmhandler>:
 8048d00:	83 ec 1c             	sub    $0x1c,%esp
 8048d03:	a1 88 b0 04 08       	mov    0x804b088,%eax
 8048d08:	c7 44 24 04 a8 96 04 	movl   $0x80496a8,0x4(%esp)
 8048d0f:	08 
 8048d10:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
 8048d17:	89 44 24 08          	mov    %eax,0x8(%esp)
 8048d1b:	e8 50 fb ff ff       	call   8048870 <__printf_chk@plt>
 8048d20:	c7 04 24 d4 99 04 08 	movl   $0x80499d4,(%esp)
 8048d27:	e8 84 fa ff ff       	call   80487b0 <puts@plt>
 8048d2c:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
 8048d33:	e8 a8 fa ff ff       	call   80487e0 <exit@plt>
 8048d38:	90                   	nop
 8048d39:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

08048d40 <illegalhandler>:
 8048d40:	83 ec 1c             	sub    $0x1c,%esp
 8048d43:	c7 04 24 dc 96 04 08 	movl   $0x80496dc,(%esp)
 8048d4a:	e8 61 fa ff ff       	call   80487b0 <puts@plt>
 8048d4f:	c7 04 24 d4 99 04 08 	movl   $0x80499d4,(%esp)
 8048d56:	e8 55 fa ff ff       	call   80487b0 <puts@plt>
 8048d5b:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
 8048d62:	e8 79 fa ff ff       	call   80487e0 <exit@plt>
 8048d67:	89 f6                	mov    %esi,%esi
 8048d69:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

08048d70 <usage>:
 8048d70:	83 ec 1c             	sub    $0x1c,%esp
 8048d73:	89 44 24 08          	mov    %eax,0x8(%esp)
 8048d77:	c7 44 24 04 08 97 04 	movl   $0x8049708,0x4(%esp)
 8048d7e:	08 
 8048d7f:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
 8048d86:	e8 e5 fa ff ff       	call   8048870 <__printf_chk@plt>
 8048d8b:	c7 04 24 ea 99 04 08 	movl   $0x80499ea,(%esp)
 8048d92:	e8 19 fa ff ff       	call   80487b0 <puts@plt>
 8048d97:	c7 04 24 08 9a 04 08 	movl   $0x8049a08,(%esp)
 8048d9e:	e8 0d fa ff ff       	call   80487b0 <puts@plt>
 8048da3:	c7 04 24 2c 97 04 08 	movl   $0x804972c,(%esp)
 8048daa:	e8 01 fa ff ff       	call   80487b0 <puts@plt>
 8048daf:	c7 04 24 54 97 04 08 	movl   $0x8049754,(%esp)
 8048db6:	e8 f5 f9 ff ff       	call   80487b0 <puts@plt>
 8048dbb:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
 8048dc2:	e8 19 fa ff ff       	call   80487e0 <exit@plt>
 8048dc7:	89 f6                	mov    %esi,%esi
 8048dc9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

08048dd0 <validate.part.0>:
 8048dd0:	55                   	push   %ebp
 8048dd1:	57                   	push   %edi
 8048dd2:	89 c7                	mov    %eax,%edi
 8048dd4:	56                   	push   %esi
 8048dd5:	53                   	push   %ebx
 8048dd6:	81 ec 6c 01 00 00    	sub    $0x16c,%esp
 8048ddc:	8b 15 a4 b0 04 08    	mov    0x804b0a4,%edx
 8048de2:	65 a1 14 00 00 00    	mov    %gs:0x14,%eax
 8048de8:	89 84 24 5c 01 00 00 	mov    %eax,0x15c(%esp)
 8048def:	31 c0                	xor    %eax,%eax
 8048df1:	85 d2                	test   %edx,%edx
 8048df3:	0f 84 67 01 00 00    	je     8048f60 <validate.part.0+0x190>
 8048df9:	c7 44 24 04 1f 9a 04 	movl   $0x8049a1f,0x4(%esp)
 8048e00:	08 
 8048e01:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
 8048e08:	e8 13 f9 ff ff       	call   8048720 <tempnam@plt>
 8048e0d:	c7 44 24 04 26 9a 04 	movl   $0x8049a26,0x4(%esp)
 8048e14:	08 
 8048e15:	89 04 24             	mov    %eax,(%esp)
 8048e18:	89 c6                	mov    %eax,%esi
 8048e1a:	e8 01 fa ff ff       	call   8048820 <fopen@plt>
 8048e1f:	85 c0                	test   %eax,%eax
 8048e21:	89 c3                	mov    %eax,%ebx
 8048e23:	0f 84 8f 01 00 00    	je     8048fb8 <validate.part.0+0x1e8>
 8048e29:	89 44 24 0c          	mov    %eax,0xc(%esp)
 8048e2d:	c7 44 24 08 1b 00 00 	movl   $0x1b,0x8(%esp)
 8048e34:	00 
 8048e35:	c7 44 24 04 01 00 00 	movl   $0x1,0x4(%esp)
 8048e3c:	00 
 8048e3d:	c7 04 24 28 9a 04 08 	movl   $0x8049a28,(%esp)
 8048e44:	e8 57 f9 ff ff       	call   80487a0 <fwrite@plt>
 8048e49:	89 5c 24 04          	mov    %ebx,0x4(%esp)
 8048e4d:	c7 04 24 0a 00 00 00 	movl   $0xa,(%esp)
 8048e54:	e8 27 fa ff ff       	call   8048880 <fputc@plt>
 8048e59:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
 8048e60:	e8 cb f8 ff ff       	call   8048730 <cuserid@plt>
 8048e65:	85 c0                	test   %eax,%eax
 8048e67:	0f 84 2b 01 00 00    	je     8048f98 <validate.part.0+0x1c8>
 8048e6d:	8d 6c 24 3c          	lea    0x3c(%esp),%ebp
 8048e71:	c7 44 24 08 20 00 00 	movl   $0x20,0x8(%esp)
 8048e78:	00 
 8048e79:	89 44 24 04          	mov    %eax,0x4(%esp)
 8048e7d:	89 2c 24             	mov    %ebp,(%esp)
 8048e80:	e8 db f9 ff ff       	call   8048860 <__strcpy_chk@plt>
 8048e85:	89 1c 24             	mov    %ebx,(%esp)
 8048e88:	89 6c 24 0c          	mov    %ebp,0xc(%esp)
 8048e8c:	c7 44 24 08 44 9a 04 	movl   $0x8049a44,0x8(%esp)
 8048e93:	08 
 8048e94:	c7 44 24 04 01 00 00 	movl   $0x1,0x4(%esp)
 8048e9b:	00 
 8048e9c:	e8 ff f9 ff ff       	call   80488a0 <__fprintf_chk@plt>
 8048ea1:	a1 f4 b0 04 08       	mov    0x804b0f4,%eax
 8048ea6:	89 1c 24             	mov    %ebx,(%esp)
 8048ea9:	c7 44 24 20 00 00 00 	movl   $0x0,0x20(%esp)
 8048eb0:	00 
 8048eb1:	c7 44 24 1c 20 b1 04 	movl   $0x804b120,0x1c(%esp)
 8048eb8:	08 
 8048eb9:	89 44 24 18          	mov    %eax,0x18(%esp)
 8048ebd:	a1 f0 b0 04 08       	mov    0x804b0f0,%eax
 8048ec2:	89 7c 24 14          	mov    %edi,0x14(%esp)
 8048ec6:	c7 44 24 0c 6f 3b 00 	movl   $0x3b6f,0xc(%esp)
 8048ecd:	00 
 8048ece:	c7 44 24 08 ac 97 04 	movl   $0x80497ac,0x8(%esp)
 8048ed5:	08 
 8048ed6:	89 44 24 10          	mov    %eax,0x10(%esp)
 8048eda:	c7 44 24 04 01 00 00 	movl   $0x1,0x4(%esp)
 8048ee1:	00 
 8048ee2:	e8 b9 f9 ff ff       	call   80488a0 <__fprintf_chk@plt>
 8048ee7:	89 1c 24             	mov    %ebx,(%esp)
 8048eea:	8d 5c 24 5c          	lea    0x5c(%esp),%ebx
 8048eee:	e8 5d f8 ff ff       	call   8048750 <fclose@plt>
 8048ef3:	c7 44 24 1c 52 9a 04 	movl   $0x8049a52,0x1c(%esp)
 8048efa:	08 
 8048efb:	c7 44 24 18 69 9a 04 	movl   $0x8049a69,0x18(%esp)
 8048f02:	08 
 8048f03:	c7 44 24 14 6e 9a 04 	movl   $0x8049a6e,0x14(%esp)
 8048f0a:	08 
 8048f0b:	89 74 24 10          	mov    %esi,0x10(%esp)
 8048f0f:	c7 44 24 0c 85 9a 04 	movl   $0x8049a85,0xc(%esp)
 8048f16:	08 
 8048f17:	c7 44 24 08 00 01 00 	movl   $0x100,0x8(%esp)
 8048f1e:	00 
 8048f1f:	c7 44 24 04 01 00 00 	movl   $0x1,0x4(%esp)
 8048f26:	00 
 8048f27:	89 1c 24             	mov    %ebx,(%esp)
 8048f2a:	e8 b1 f9 ff ff       	call   80488e0 <__sprintf_chk@plt>
 8048f2f:	89 1c 24             	mov    %ebx,(%esp)
 8048f32:	e8 89 f8 ff ff       	call   80487c0 <system@plt>
 8048f37:	85 c0                	test   %eax,%eax
 8048f39:	75 4d                	jne    8048f88 <validate.part.0+0x1b8>
 8048f3b:	c7 04 24 98 9a 04 08 	movl   $0x8049a98,(%esp)
 8048f42:	e8 69 f8 ff ff       	call   80487b0 <puts@plt>
 8048f47:	c7 04 24 cc 97 04 08 	movl   $0x80497cc,(%esp)
 8048f4e:	e8 5d f8 ff ff       	call   80487b0 <puts@plt>
 8048f53:	89 34 24             	mov    %esi,(%esp)
 8048f56:	e8 35 f9 ff ff       	call   8048890 <remove@plt>
 8048f5b:	eb 0f                	jmp    8048f6c <validate.part.0+0x19c>
 8048f5d:	8d 76 00             	lea    0x0(%esi),%esi
 8048f60:	c7 04 24 3c 98 04 08 	movl   $0x804983c,(%esp)
 8048f67:	e8 44 f8 ff ff       	call   80487b0 <puts@plt>
 8048f6c:	8b 84 24 5c 01 00 00 	mov    0x15c(%esp),%eax
 8048f73:	65 33 05 14 00 00 00 	xor    %gs:0x14,%eax
 8048f7a:	75 5c                	jne    8048fd8 <validate.part.0+0x208>
 8048f7c:	81 c4 6c 01 00 00    	add    $0x16c,%esp
 8048f82:	5b                   	pop    %ebx
 8048f83:	5e                   	pop    %esi
 8048f84:	5f                   	pop    %edi
 8048f85:	5d                   	pop    %ebp
 8048f86:	c3                   	ret    
 8048f87:	90                   	nop
 8048f88:	c7 04 24 fc 97 04 08 	movl   $0x80497fc,(%esp)
 8048f8f:	e8 1c f8 ff ff       	call   80487b0 <puts@plt>
 8048f94:	eb bd                	jmp    8048f53 <validate.part.0+0x183>
 8048f96:	66 90                	xchg   %ax,%ax
 8048f98:	b8 64 79 00 00       	mov    $0x7964,%eax
 8048f9d:	c7 44 24 3c 6e 6f 62 	movl   $0x6f626f6e,0x3c(%esp)
 8048fa4:	6f 
 8048fa5:	8d 6c 24 3c          	lea    0x3c(%esp),%ebp
 8048fa9:	66 89 44 24 40       	mov    %ax,0x40(%esp)
 8048fae:	c6 44 24 42 00       	movb   $0x0,0x42(%esp)
 8048fb3:	e9 cd fe ff ff       	jmp    8048e85 <validate.part.0+0xb5>
 8048fb8:	c7 44 24 04 78 97 04 	movl   $0x8049778,0x4(%esp)
 8048fbf:	08 
 8048fc0:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
 8048fc7:	e8 a4 f8 ff ff       	call   8048870 <__printf_chk@plt>
 8048fcc:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
 8048fd3:	e8 08 f8 ff ff       	call   80487e0 <exit@plt>
 8048fd8:	e8 a3 f7 ff ff       	call   8048780 <__stack_chk_fail@plt>
 8048fdd:	8d 76 00             	lea    0x0(%esi),%esi

08048fe0 <Gets>:
 8048fe0:	55                   	push   %ebp
 8048fe1:	57                   	push   %edi
 8048fe2:	56                   	push   %esi
 8048fe3:	53                   	push   %ebx
 8048fe4:	83 ec 1c             	sub    $0x1c,%esp
 8048fe7:	a1 f8 b0 04 08       	mov    0x804b0f8,%eax
 8048fec:	c7 05 e0 b0 04 08 00 	movl   $0x0,0x804b0e0
 8048ff3:	00 00 00 
 8048ff6:	8b 5c 24 30          	mov    0x30(%esp),%ebx
 8048ffa:	85 c0                	test   %eax,%eax
 8048ffc:	74 65                	je     8049063 <Gets+0x83>
 8048ffe:	31 ff                	xor    %edi,%edi
 8049000:	be 01 00 00 00       	mov    $0x1,%esi
 8049005:	8d 76 00             	lea    0x0(%esi),%esi
 8049008:	a1 00 b1 04 08       	mov    0x804b100,%eax
 804900d:	89 04 24             	mov    %eax,(%esp)
 8049010:	e8 7b f7 ff ff       	call   8048790 <_IO_getc@plt>
 8049015:	83 f8 ff             	cmp    $0xffffffff,%eax
 8049018:	89 c5                	mov    %eax,%ebp
 804901a:	74 59                	je     8049075 <Gets+0x95>
 804901c:	83 f8 0a             	cmp    $0xa,%eax
 804901f:	74 54                	je     8049075 <Gets+0x95>
 8049021:	e8 9a f8 ff ff       	call   80488c0 <__ctype_b_loc@plt>
 8049026:	8b 00                	mov    (%eax),%eax
 8049028:	f6 44 68 01 10       	testb  $0x10,0x1(%eax,%ebp,2)
 804902d:	74 d9                	je     8049008 <Gets+0x28>
 804902f:	8d 45 d0             	lea    -0x30(%ebp),%eax
 8049032:	83 f8 09             	cmp    $0x9,%eax
 8049035:	76 0f                	jbe    8049046 <Gets+0x66>
 8049037:	8d 4d bf             	lea    -0x41(%ebp),%ecx
 804903a:	8d 45 c9             	lea    -0x37(%ebp),%eax
 804903d:	83 f9 05             	cmp    $0x5,%ecx
 8049040:	8d 55 a9             	lea    -0x57(%ebp),%edx
 8049043:	0f 47 c2             	cmova  %edx,%eax
 8049046:	85 f6                	test   %esi,%esi
 8049048:	74 4e                	je     8049098 <Gets+0xb8>
 804904a:	89 c7                	mov    %eax,%edi
 804904c:	31 f6                	xor    %esi,%esi
 804904e:	eb b8                	jmp    8049008 <Gets+0x28>
 8049050:	83 f8 0a             	cmp    $0xa,%eax
 8049053:	74 20                	je     8049075 <Gets+0x95>
 8049055:	83 c3 01             	add    $0x1,%ebx
 8049058:	88 43 ff             	mov    %al,-0x1(%ebx)
 804905b:	0f be c0             	movsbl %al,%eax
 804905e:	e8 ed fb ff ff       	call   8048c50 <save_char>
 8049063:	a1 00 b1 04 08       	mov    0x804b100,%eax
 8049068:	89 04 24             	mov    %eax,(%esp)
 804906b:	e8 20 f7 ff ff       	call   8048790 <_IO_getc@plt>
 8049070:	83 f8 ff             	cmp    $0xffffffff,%eax
 8049073:	75 db                	jne    8049050 <Gets+0x70>
 8049075:	c6 03 00             	movb   $0x0,(%ebx)
 8049078:	a1 e0 b0 04 08       	mov    0x804b0e0,%eax
 804907d:	c6 84 40 20 b1 04 08 	movb   $0x0,0x804b120(%eax,%eax,2)
 8049084:	00 
 8049085:	8b 44 24 30          	mov    0x30(%esp),%eax
 8049089:	83 c4 1c             	add    $0x1c,%esp
 804908c:	5b                   	pop    %ebx
 804908d:	5e                   	pop    %esi
 804908e:	5f                   	pop    %edi
 804908f:	5d                   	pop    %ebp
 8049090:	c3                   	ret    
 8049091:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 8049098:	89 fa                	mov    %edi,%edx
 804909a:	c1 e2 04             	shl    $0x4,%edx
 804909d:	01 d0                	add    %edx,%eax
 804909f:	88 03                	mov    %al,(%ebx)
 80490a1:	8d 73 01             	lea    0x1(%ebx),%esi
 80490a4:	0f be c0             	movsbl %al,%eax
 80490a7:	89 f3                	mov    %esi,%ebx
 80490a9:	be 01 00 00 00       	mov    $0x1,%esi
 80490ae:	e8 9d fb ff ff       	call   8048c50 <save_char>
 80490b3:	e9 50 ff ff ff       	jmp    8049008 <Gets+0x28>
 80490b8:	90                   	nop
 80490b9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

080490c0 <getbuf>:
 80490c0:	83 ec 2c             	sub    $0x2c,%esp
 80490c3:	65 a1 14 00 00 00    	mov    %gs:0x14,%eax
 80490c9:	89 44 24 1c          	mov    %eax,0x1c(%esp)
 80490cd:	31 c0                	xor    %eax,%eax
 80490cf:	8d 44 24 10          	lea    0x10(%esp),%eax
 80490d3:	89 04 24             	mov    %eax,(%esp)
 80490d6:	e8 05 ff ff ff       	call   8048fe0 <Gets>
 80490db:	b8 01 00 00 00       	mov    $0x1,%eax
 80490e0:	8b 54 24 1c          	mov    0x1c(%esp),%edx
 80490e4:	65 33 15 14 00 00 00 	xor    %gs:0x14,%edx
 80490eb:	75 04                	jne    80490f1 <getbuf+0x31>
 80490ed:	83 c4 2c             	add    $0x2c,%esp
 80490f0:	c3                   	ret    
 80490f1:	e8 8a f6 ff ff       	call   8048780 <__stack_chk_fail@plt>
 80490f6:	8d 76 00             	lea    0x0(%esi),%esi
 80490f9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

08049100 <getbufn>:
 8049100:	81 ec 2c 02 00 00    	sub    $0x22c,%esp
 8049106:	65 a1 14 00 00 00    	mov    %gs:0x14,%eax
 804910c:	89 84 24 1c 02 00 00 	mov    %eax,0x21c(%esp)
 8049113:	31 c0                	xor    %eax,%eax
 8049115:	8d 44 24 1c          	lea    0x1c(%esp),%eax
 8049119:	89 04 24             	mov    %eax,(%esp)
 804911c:	e8 bf fe ff ff       	call   8048fe0 <Gets>
 8049121:	b8 01 00 00 00       	mov    $0x1,%eax
 8049126:	8b 94 24 1c 02 00 00 	mov    0x21c(%esp),%edx
 804912d:	65 33 15 14 00 00 00 	xor    %gs:0x14,%edx
 8049134:	75 07                	jne    804913d <getbufn+0x3d>
 8049136:	81 c4 2c 02 00 00    	add    $0x22c,%esp
 804913c:	c3                   	ret    
 804913d:	e8 3e f6 ff ff       	call   8048780 <__stack_chk_fail@plt>
 8049142:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 8049149:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

08049150 <entry_check>:
 8049150:	8b 44 24 04          	mov    0x4(%esp),%eax
 8049154:	a3 8c b0 04 08       	mov    %eax,0x804b08c
 8049159:	c3                   	ret    
 804915a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

08049160 <validate>:
 8049160:	8b 0d f0 b0 04 08    	mov    0x804b0f0,%ecx
 8049166:	8b 44 24 04          	mov    0x4(%esp),%eax
 804916a:	85 c9                	test   %ecx,%ecx
 804916c:	0f 84 7e 00 00 00    	je     80491f0 <validate+0x90>
 8049172:	83 f8 04             	cmp    $0x4,%eax
 8049175:	77 49                	ja     80491c0 <validate+0x60>
 8049177:	3b 05 8c b0 04 08    	cmp    0x804b08c,%eax
 804917d:	75 31                	jne    80491b0 <validate+0x50>
 804917f:	8b 0c 85 90 b0 04 08 	mov    0x804b090(,%eax,4),%ecx
 8049186:	c7 05 e8 b0 04 08 01 	movl   $0x1,0x804b0e8
 804918d:	00 00 00 
 8049190:	8d 51 ff             	lea    -0x1(%ecx),%edx
 8049193:	85 d2                	test   %edx,%edx
 8049195:	89 14 85 90 b0 04 08 	mov    %edx,0x804b090(,%eax,4)
 804919c:	7f 32                	jg     80491d0 <validate+0x70>
 804919e:	8b 15 ec b0 04 08    	mov    0x804b0ec,%edx
 80491a4:	85 d2                	test   %edx,%edx
 80491a6:	75 38                	jne    80491e0 <validate+0x80>
 80491a8:	e9 23 fc ff ff       	jmp    8048dd0 <validate.part.0>
 80491ad:	8d 76 00             	lea    0x0(%esi),%esi
 80491b0:	c7 44 24 04 dc 98 04 	movl   $0x80498dc,0x4(%esp)
 80491b7:	08 
 80491b8:	e9 f3 f5 ff ff       	jmp    80487b0 <puts@plt>
 80491bd:	8d 76 00             	lea    0x0(%esi),%esi
 80491c0:	c7 44 24 04 b4 98 04 	movl   $0x80498b4,0x4(%esp)
 80491c7:	08 
 80491c8:	e9 e3 f5 ff ff       	jmp    80487b0 <puts@plt>
 80491cd:	8d 76 00             	lea    0x0(%esi),%esi
 80491d0:	c7 44 24 04 a2 9a 04 	movl   $0x8049aa2,0x4(%esp)
 80491d7:	08 
 80491d8:	e9 d3 f5 ff ff       	jmp    80487b0 <puts@plt>
 80491dd:	8d 76 00             	lea    0x0(%esi),%esi
 80491e0:	c7 44 24 04 ad 9a 04 	movl   $0x8049aad,0x4(%esp)
 80491e7:	08 
 80491e8:	e9 c3 f5 ff ff       	jmp    80487b0 <puts@plt>
 80491ed:	8d 76 00             	lea    0x0(%esi),%esi
 80491f0:	c7 44 24 04 88 98 04 	movl   $0x8049888,0x4(%esp)
 80491f7:	08 
 80491f8:	e9 b3 f5 ff ff       	jmp    80487b0 <puts@plt>
 80491fd:	8d 76 00             	lea    0x0(%esi),%esi

08049200 <smoke>:
 8049200:	83 ec 1c             	sub    $0x1c,%esp
 8049203:	c7 04 24 b3 9a 04 08 	movl   $0x8049ab3,(%esp)
 804920a:	c7 05 8c b0 04 08 00 	movl   $0x0,0x804b08c
 8049211:	00 00 00 
 8049214:	e8 97 f5 ff ff       	call   80487b0 <puts@plt>
 8049219:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
 8049220:	e8 3b ff ff ff       	call   8049160 <validate>
 8049225:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
 804922c:	e8 af f5 ff ff       	call   80487e0 <exit@plt>
 8049231:	eb 0d                	jmp    8049240 <fizz>
 8049233:	90                   	nop
 8049234:	90                   	nop
 8049235:	90                   	nop
 8049236:	90                   	nop
 8049237:	90                   	nop
 8049238:	90                   	nop
 8049239:	90                   	nop
 804923a:	90                   	nop
 804923b:	90                   	nop
 804923c:	90                   	nop
 804923d:	90                   	nop
 804923e:	90                   	nop
 804923f:	90                   	nop

08049240 <fizz>:
 8049240:	83 ec 1c             	sub    $0x1c,%esp
 8049243:	8b 44 24 20          	mov    0x20(%esp),%eax
 8049247:	3b 05 f4 b0 04 08    	cmp    0x804b0f4,%eax
 804924d:	c7 05 8c b0 04 08 01 	movl   $0x1,0x804b08c
 8049254:	00 00 00 
 8049257:	89 44 24 08          	mov    %eax,0x8(%esp)
 804925b:	74 20                	je     804927d <fizz+0x3d>
 804925d:	c7 44 24 04 18 99 04 	movl   $0x8049918,0x4(%esp)
 8049264:	08 
 8049265:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
 804926c:	e8 ff f5 ff ff       	call   8048870 <__printf_chk@plt>
 8049271:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
 8049278:	e8 63 f5 ff ff       	call   80487e0 <exit@plt>
 804927d:	c7 44 24 04 ce 9a 04 	movl   $0x8049ace,0x4(%esp)
 8049284:	08 
 8049285:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
 804928c:	e8 df f5 ff ff       	call   8048870 <__printf_chk@plt>
 8049291:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
 8049298:	e8 c3 fe ff ff       	call   8049160 <validate>
 804929d:	eb d2                	jmp    8049271 <fizz+0x31>
 804929f:	90                   	nop

080492a0 <bang>:
 80492a0:	83 ec 1c             	sub    $0x1c,%esp
 80492a3:	a1 e4 b0 04 08       	mov    0x804b0e4,%eax
 80492a8:	3b 05 f4 b0 04 08    	cmp    0x804b0f4,%eax
 80492ae:	c7 05 8c b0 04 08 02 	movl   $0x2,0x804b08c
 80492b5:	00 00 00 
 80492b8:	89 44 24 08          	mov    %eax,0x8(%esp)
 80492bc:	74 20                	je     80492de <bang+0x3e>
 80492be:	c7 44 24 04 ec 9a 04 	movl   $0x8049aec,0x4(%esp)
 80492c5:	08 
 80492c6:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
 80492cd:	e8 9e f5 ff ff       	call   8048870 <__printf_chk@plt>
 80492d2:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
 80492d9:	e8 02 f5 ff ff       	call   80487e0 <exit@plt>
 80492de:	c7 44 24 04 38 99 04 	movl   $0x8049938,0x4(%esp)
 80492e5:	08 
 80492e6:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
 80492ed:	e8 7e f5 ff ff       	call   8048870 <__printf_chk@plt>
 80492f2:	c7 04 24 02 00 00 00 	movl   $0x2,(%esp)
 80492f9:	e8 62 fe ff ff       	call   8049160 <validate>
 80492fe:	eb d2                	jmp    80492d2 <bang+0x32>

08049300 <test>:
 8049300:	83 ec 3c             	sub    $0x3c,%esp
 8049303:	65 a1 14 00 00 00    	mov    %gs:0x14,%eax
 8049309:	89 44 24 2c          	mov    %eax,0x2c(%esp)
 804930d:	31 c0                	xor    %eax,%eax
 804930f:	8d 44 24 20          	lea    0x20(%esp),%eax
 8049313:	89 04 24             	mov    %eax,(%esp)
 8049316:	c7 44 24 1c ef be ad 	movl   $0xdeadbeef,0x1c(%esp)
 804931d:	de 
 804931e:	c7 05 8c b0 04 08 03 	movl   $0x3,0x804b08c
 8049325:	00 00 00 
 8049328:	e8 b3 fc ff ff       	call   8048fe0 <Gets>
 804932d:	8b 44 24 1c          	mov    0x1c(%esp),%eax
 8049331:	3d ef be ad de       	cmp    $0xdeadbeef,%eax
 8049336:	75 38                	jne    8049370 <test+0x70>
 8049338:	83 3d f4 b0 04 08 01 	cmpl   $0x1,0x804b0f4
 804933f:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
 8049346:	00 
 8049347:	74 37                	je     8049380 <test+0x80>
 8049349:	c7 44 24 04 27 9b 04 	movl   $0x8049b27,0x4(%esp)
 8049350:	08 
 8049351:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
 8049358:	e8 13 f5 ff ff       	call   8048870 <__printf_chk@plt>
 804935d:	8b 44 24 2c          	mov    0x2c(%esp),%eax
 8049361:	65 33 05 14 00 00 00 	xor    %gs:0x14,%eax
 8049368:	75 38                	jne    80493a2 <test+0xa2>
 804936a:	83 c4 3c             	add    $0x3c,%esp
 804936d:	c3                   	ret    
 804936e:	66 90                	xchg   %ax,%ax
 8049370:	c7 04 24 60 99 04 08 	movl   $0x8049960,(%esp)
 8049377:	e8 34 f4 ff ff       	call   80487b0 <puts@plt>
 804937c:	eb df                	jmp    804935d <test+0x5d>
 804937e:	66 90                	xchg   %ax,%ax
 8049380:	c7 44 24 04 0a 9b 04 	movl   $0x8049b0a,0x4(%esp)
 8049387:	08 
 8049388:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
 804938f:	e8 dc f4 ff ff       	call   8048870 <__printf_chk@plt>
 8049394:	c7 04 24 03 00 00 00 	movl   $0x3,(%esp)
 804939b:	e8 c0 fd ff ff       	call   8049160 <validate>
 80493a0:	eb bb                	jmp    804935d <test+0x5d>
 80493a2:	e8 d9 f3 ff ff       	call   8048780 <__stack_chk_fail@plt>
 80493a7:	89 f6                	mov    %esi,%esi
 80493a9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

080493b0 <testn>:
 80493b0:	83 ec 2c             	sub    $0x2c,%esp
 80493b3:	c7 44 24 1c ef be ad 	movl   $0xdeadbeef,0x1c(%esp)
 80493ba:	de 
 80493bb:	c7 05 8c b0 04 08 04 	movl   $0x4,0x804b08c
 80493c2:	00 00 00 
 80493c5:	e8 36 fd ff ff       	call   8049100 <getbufn>
 80493ca:	8b 54 24 1c          	mov    0x1c(%esp),%edx
 80493ce:	81 fa ef be ad de    	cmp    $0xdeadbeef,%edx
 80493d4:	75 2a                	jne    8049400 <testn+0x50>
 80493d6:	3b 05 f4 b0 04 08    	cmp    0x804b0f4,%eax
 80493dc:	89 44 24 08          	mov    %eax,0x8(%esp)
 80493e0:	74 2e                	je     8049410 <testn+0x60>
 80493e2:	c7 44 24 04 42 9b 04 	movl   $0x8049b42,0x4(%esp)
 80493e9:	08 
 80493ea:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
 80493f1:	e8 7a f4 ff ff       	call   8048870 <__printf_chk@plt>
 80493f6:	83 c4 2c             	add    $0x2c,%esp
 80493f9:	c3                   	ret    
 80493fa:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 8049400:	c7 04 24 60 99 04 08 	movl   $0x8049960,(%esp)
 8049407:	e8 a4 f3 ff ff       	call   80487b0 <puts@plt>
 804940c:	83 c4 2c             	add    $0x2c,%esp
 804940f:	c3                   	ret    
 8049410:	c7 44 24 04 8c 99 04 	movl   $0x804998c,0x4(%esp)
 8049417:	08 
 8049418:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
 804941f:	e8 4c f4 ff ff       	call   8048870 <__printf_chk@plt>
 8049424:	c7 04 24 04 00 00 00 	movl   $0x4,(%esp)
 804942b:	e8 30 fd ff ff       	call   8049160 <validate>
 8049430:	83 c4 2c             	add    $0x2c,%esp
 8049433:	c3                   	ret    
 8049434:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 804943a:	8d bf 00 00 00 00    	lea    0x0(%edi),%edi

08049440 <launch>:
 8049440:	55                   	push   %ebp
 8049441:	89 e5                	mov    %esp,%ebp
 8049443:	53                   	push   %ebx
 8049444:	89 c3                	mov    %eax,%ebx
 8049446:	83 ec 64             	sub    $0x64,%esp
 8049449:	65 a1 14 00 00 00    	mov    %gs:0x14,%eax
 804944f:	89 45 f4             	mov    %eax,-0xc(%ebp)
 8049452:	31 c0                	xor    %eax,%eax
 8049454:	8d 45 b4             	lea    -0x4c(%ebp),%eax
 8049457:	25 f8 3f 00 00       	and    $0x3ff8,%eax
 804945c:	01 d0                	add    %edx,%eax
 804945e:	8d 48 1e             	lea    0x1e(%eax),%ecx
 8049461:	83 e1 f0             	and    $0xfffffff0,%ecx
 8049464:	29 cc                	sub    %ecx,%esp
 8049466:	8d 4c 24 1b          	lea    0x1b(%esp),%ecx
 804946a:	83 e1 f0             	and    $0xfffffff0,%ecx
 804946d:	89 0c 24             	mov    %ecx,(%esp)
 8049470:	89 44 24 08          	mov    %eax,0x8(%esp)
 8049474:	c7 44 24 04 f4 00 00 	movl   $0xf4,0x4(%esp)
 804947b:	00 
 804947c:	e8 af f3 ff ff       	call   8048830 <memset@plt>
 8049481:	8b 0d fc b0 04 08    	mov    0x804b0fc,%ecx
 8049487:	85 c9                	test   %ecx,%ecx
 8049489:	75 1e                	jne    80494a9 <launch+0x69>
 804948b:	8b 15 f8 b0 04 08    	mov    0x804b0f8,%edx
 8049491:	85 d2                	test   %edx,%edx
 8049493:	74 63                	je     80494f8 <launch+0xb8>
 8049495:	c7 44 24 04 5e 9b 04 	movl   $0x8049b5e,0x4(%esp)
 804949c:	08 
 804949d:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
 80494a4:	e8 c7 f3 ff ff       	call   8048870 <__printf_chk@plt>
 80494a9:	85 db                	test   %ebx,%ebx
 80494ab:	74 3b                	je     80494e8 <launch+0xa8>
 80494ad:	e8 fe fe ff ff       	call   80493b0 <testn>
 80494b2:	a1 e8 b0 04 08       	mov    0x804b0e8,%eax
 80494b7:	85 c0                	test   %eax,%eax
 80494b9:	75 16                	jne    80494d1 <launch+0x91>
 80494bb:	c7 04 24 d4 99 04 08 	movl   $0x80499d4,(%esp)
 80494c2:	e8 e9 f2 ff ff       	call   80487b0 <puts@plt>
 80494c7:	c7 05 e8 b0 04 08 00 	movl   $0x0,0x804b0e8
 80494ce:	00 00 00 
 80494d1:	8b 45 f4             	mov    -0xc(%ebp),%eax
 80494d4:	65 33 05 14 00 00 00 	xor    %gs:0x14,%eax
 80494db:	75 31                	jne    804950e <launch+0xce>
 80494dd:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 80494e0:	c9                   	leave  
 80494e1:	c3                   	ret    
 80494e2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 80494e8:	e8 13 fe ff ff       	call   8049300 <test>
 80494ed:	8d 76 00             	lea    0x0(%esi),%esi
 80494f0:	eb c0                	jmp    80494b2 <launch+0x72>
 80494f2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 80494f8:	c7 44 24 04 6f 9b 04 	movl   $0x8049b6f,0x4(%esp)
 80494ff:	08 
 8049500:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
 8049507:	e8 64 f3 ff ff       	call   8048870 <__printf_chk@plt>
 804950c:	eb 9b                	jmp    80494a9 <launch+0x69>
 804950e:	e8 6d f2 ff ff       	call   8048780 <__stack_chk_fail@plt>
 8049513:	66 90                	xchg   %ax,%ax
 8049515:	66 90                	xchg   %ax,%ax
 8049517:	66 90                	xchg   %ax,%ax
 8049519:	66 90                	xchg   %ax,%ax
 804951b:	66 90                	xchg   %ax,%ax
 804951d:	66 90                	xchg   %ax,%ax
 804951f:	90                   	nop

08049520 <hash>:
 8049520:	8b 4c 24 04          	mov    0x4(%esp),%ecx
 8049524:	31 c0                	xor    %eax,%eax
 8049526:	0f be 11             	movsbl (%ecx),%edx
 8049529:	84 d2                	test   %dl,%dl
 804952b:	74 14                	je     8049541 <hash+0x21>
 804952d:	8d 76 00             	lea    0x0(%esi),%esi
 8049530:	6b c0 67             	imul   $0x67,%eax,%eax
 8049533:	83 c1 01             	add    $0x1,%ecx
 8049536:	01 d0                	add    %edx,%eax
 8049538:	0f be 11             	movsbl (%ecx),%edx
 804953b:	84 d2                	test   %dl,%dl
 804953d:	75 f1                	jne    8049530 <hash+0x10>
 804953f:	f3 c3                	repz ret 
 8049541:	f3 c3                	repz ret 
 8049543:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 8049549:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

08049550 <check>:
 8049550:	8b 54 24 04          	mov    0x4(%esp),%edx
 8049554:	31 c0                	xor    %eax,%eax
 8049556:	89 d1                	mov    %edx,%ecx
 8049558:	c1 e9 1c             	shr    $0x1c,%ecx
 804955b:	85 c9                	test   %ecx,%ecx
 804955d:	74 17                	je     8049576 <check+0x26>
 804955f:	31 c9                	xor    %ecx,%ecx
 8049561:	89 d0                	mov    %edx,%eax
 8049563:	d3 e8                	shr    %cl,%eax
 8049565:	3c 0a                	cmp    $0xa,%al
 8049567:	74 0f                	je     8049578 <check+0x28>
 8049569:	83 c1 08             	add    $0x8,%ecx
 804956c:	83 f9 20             	cmp    $0x20,%ecx
 804956f:	75 f0                	jne    8049561 <check+0x11>
 8049571:	b8 01 00 00 00       	mov    $0x1,%eax
 8049576:	f3 c3                	repz ret 
 8049578:	31 c0                	xor    %eax,%eax
 804957a:	c3                   	ret    
 804957b:	90                   	nop
 804957c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

08049580 <gencookie>:
 8049580:	83 ec 1c             	sub    $0x1c,%esp
 8049583:	31 c9                	xor    %ecx,%ecx
 8049585:	8b 54 24 20          	mov    0x20(%esp),%edx
 8049589:	0f be 02             	movsbl (%edx),%eax
 804958c:	84 c0                	test   %al,%al
 804958e:	74 0f                	je     804959f <gencookie+0x1f>
 8049590:	6b c9 67             	imul   $0x67,%ecx,%ecx
 8049593:	83 c2 01             	add    $0x1,%edx
 8049596:	01 c1                	add    %eax,%ecx
 8049598:	0f be 02             	movsbl (%edx),%eax
 804959b:	84 c0                	test   %al,%al
 804959d:	75 f1                	jne    8049590 <gencookie+0x10>
 804959f:	89 0c 24             	mov    %ecx,(%esp)
 80495a2:	e8 49 f2 ff ff       	call   80487f0 <srand@plt>
 80495a7:	90                   	nop
 80495a8:	e8 a3 f2 ff ff       	call   8048850 <rand@plt>
 80495ad:	89 c2                	mov    %eax,%edx
 80495af:	c1 ea 1c             	shr    $0x1c,%edx
 80495b2:	85 d2                	test   %edx,%edx
 80495b4:	74 f2                	je     80495a8 <gencookie+0x28>
 80495b6:	31 c9                	xor    %ecx,%ecx
 80495b8:	89 c2                	mov    %eax,%edx
 80495ba:	d3 ea                	shr    %cl,%edx
 80495bc:	80 fa 0a             	cmp    $0xa,%dl
 80495bf:	74 e7                	je     80495a8 <gencookie+0x28>
 80495c1:	83 c1 08             	add    $0x8,%ecx
 80495c4:	83 f9 20             	cmp    $0x20,%ecx
 80495c7:	75 ef                	jne    80495b8 <gencookie+0x38>
 80495c9:	83 c4 1c             	add    $0x1c,%esp
 80495cc:	c3                   	ret    
 80495cd:	66 90                	xchg   %ax,%ax
 80495cf:	90                   	nop

080495d0 <__libc_csu_init>:
 80495d0:	55                   	push   %ebp
 80495d1:	57                   	push   %edi
 80495d2:	31 ff                	xor    %edi,%edi
 80495d4:	56                   	push   %esi
 80495d5:	53                   	push   %ebx
 80495d6:	e8 a5 f5 ff ff       	call   8048b80 <__x86.get_pc_thunk.bx>
 80495db:	81 c3 25 1a 00 00    	add    $0x1a25,%ebx
 80495e1:	83 ec 1c             	sub    $0x1c,%esp
 80495e4:	8b 6c 24 30          	mov    0x30(%esp),%ebp
 80495e8:	8d b3 0c ff ff ff    	lea    -0xf4(%ebx),%esi
 80495ee:	e8 ed f0 ff ff       	call   80486e0 <_init>
 80495f3:	8d 83 08 ff ff ff    	lea    -0xf8(%ebx),%eax
 80495f9:	29 c6                	sub    %eax,%esi
 80495fb:	c1 fe 02             	sar    $0x2,%esi
 80495fe:	85 f6                	test   %esi,%esi
 8049600:	74 27                	je     8049629 <__libc_csu_init+0x59>
 8049602:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 8049608:	8b 44 24 38          	mov    0x38(%esp),%eax
 804960c:	89 2c 24             	mov    %ebp,(%esp)
 804960f:	89 44 24 08          	mov    %eax,0x8(%esp)
 8049613:	8b 44 24 34          	mov    0x34(%esp),%eax
 8049617:	89 44 24 04          	mov    %eax,0x4(%esp)
 804961b:	ff 94 bb 08 ff ff ff 	call   *-0xf8(%ebx,%edi,4)
 8049622:	83 c7 01             	add    $0x1,%edi
 8049625:	39 f7                	cmp    %esi,%edi
 8049627:	75 df                	jne    8049608 <__libc_csu_init+0x38>
 8049629:	83 c4 1c             	add    $0x1c,%esp
 804962c:	5b                   	pop    %ebx
 804962d:	5e                   	pop    %esi
 804962e:	5f                   	pop    %edi
 804962f:	5d                   	pop    %ebp
 8049630:	c3                   	ret    
 8049631:	eb 0d                	jmp    8049640 <__libc_csu_fini>
 8049633:	90                   	nop
 8049634:	90                   	nop
 8049635:	90                   	nop
 8049636:	90                   	nop
 8049637:	90                   	nop
 8049638:	90                   	nop
 8049639:	90                   	nop
 804963a:	90                   	nop
 804963b:	90                   	nop
 804963c:	90                   	nop
 804963d:	90                   	nop
 804963e:	90                   	nop
 804963f:	90                   	nop

08049640 <__libc_csu_fini>:
 8049640:	f3 c3                	repz ret 

Disassembly of section .fini:

08049644 <_fini>:
 8049644:	53                   	push   %ebx
 8049645:	83 ec 08             	sub    $0x8,%esp
 8049648:	e8 33 f5 ff ff       	call   8048b80 <__x86.get_pc_thunk.bx>
 804964d:	81 c3 b3 19 00 00    	add    $0x19b3,%ebx
 8049653:	83 c4 08             	add    $0x8,%esp
 8049656:	5b                   	pop    %ebx
 8049657:	c3                   	ret    
