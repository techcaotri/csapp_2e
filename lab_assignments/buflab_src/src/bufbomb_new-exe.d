
bufbomb_new:     file format elf32-i386


Disassembly of section .init:

08048724 <_init>:
 8048724:	53                   	push   %ebx
 8048725:	83 ec 08             	sub    $0x8,%esp
 8048728:	e8 f3 03 00 00       	call   8048b20 <__x86.get_pc_thunk.bx>
 804872d:	81 c3 d3 28 00 00    	add    $0x28d3,%ebx
 8048733:	8b 83 fc ff ff ff    	mov    -0x4(%ebx),%eax
 8048739:	85 c0                	test   %eax,%eax
 804873b:	74 05                	je     8048742 <_init+0x1e>
 804873d:	e8 ce 00 00 00       	call   8048810 <__gmon_start__@plt>
 8048742:	83 c4 08             	add    $0x8,%esp
 8048745:	5b                   	pop    %ebx
 8048746:	c3                   	ret    

Disassembly of section .plt:

08048750 <tempnam@plt-0x10>:
 8048750:	ff 35 04 b0 04 08    	pushl  0x804b004
 8048756:	ff 25 08 b0 04 08    	jmp    *0x804b008
 804875c:	00 00                	add    %al,(%eax)
	...

08048760 <tempnam@plt>:
 8048760:	ff 25 0c b0 04 08    	jmp    *0x804b00c
 8048766:	68 00 00 00 00       	push   $0x0
 804876b:	e9 e0 ff ff ff       	jmp    8048750 <_init+0x2c>

08048770 <cuserid@plt>:
 8048770:	ff 25 10 b0 04 08    	jmp    *0x804b010
 8048776:	68 08 00 00 00       	push   $0x8
 804877b:	e9 d0 ff ff ff       	jmp    8048750 <_init+0x2c>

08048780 <srandom@plt>:
 8048780:	ff 25 14 b0 04 08    	jmp    *0x804b014
 8048786:	68 10 00 00 00       	push   $0x10
 804878b:	e9 c0 ff ff ff       	jmp    8048750 <_init+0x2c>

08048790 <fclose@plt>:
 8048790:	ff 25 18 b0 04 08    	jmp    *0x804b018
 8048796:	68 18 00 00 00       	push   $0x18
 804879b:	e9 b0 ff ff ff       	jmp    8048750 <_init+0x2c>

080487a0 <signal@plt>:
 80487a0:	ff 25 1c b0 04 08    	jmp    *0x804b01c
 80487a6:	68 20 00 00 00       	push   $0x20
 80487ab:	e9 a0 ff ff ff       	jmp    8048750 <_init+0x2c>

080487b0 <__stack_chk_fail@plt>:
 80487b0:	ff 25 20 b0 04 08    	jmp    *0x804b020
 80487b6:	68 28 00 00 00       	push   $0x28
 80487bb:	e9 90 ff ff ff       	jmp    8048750 <_init+0x2c>

080487c0 <_IO_getc@plt>:
 80487c0:	ff 25 24 b0 04 08    	jmp    *0x804b024
 80487c6:	68 30 00 00 00       	push   $0x30
 80487cb:	e9 80 ff ff ff       	jmp    8048750 <_init+0x2c>

080487d0 <fwrite@plt>:
 80487d0:	ff 25 28 b0 04 08    	jmp    *0x804b028
 80487d6:	68 38 00 00 00       	push   $0x38
 80487db:	e9 70 ff ff ff       	jmp    8048750 <_init+0x2c>

080487e0 <getpid@plt>:
 80487e0:	ff 25 2c b0 04 08    	jmp    *0x804b02c
 80487e6:	68 40 00 00 00       	push   $0x40
 80487eb:	e9 60 ff ff ff       	jmp    8048750 <_init+0x2c>

080487f0 <puts@plt>:
 80487f0:	ff 25 30 b0 04 08    	jmp    *0x804b030
 80487f6:	68 48 00 00 00       	push   $0x48
 80487fb:	e9 50 ff ff ff       	jmp    8048750 <_init+0x2c>

08048800 <system@plt>:
 8048800:	ff 25 34 b0 04 08    	jmp    *0x804b034
 8048806:	68 50 00 00 00       	push   $0x50
 804880b:	e9 40 ff ff ff       	jmp    8048750 <_init+0x2c>

08048810 <__gmon_start__@plt>:
 8048810:	ff 25 38 b0 04 08    	jmp    *0x804b038
 8048816:	68 58 00 00 00       	push   $0x58
 804881b:	e9 30 ff ff ff       	jmp    8048750 <_init+0x2c>

08048820 <exit@plt>:
 8048820:	ff 25 3c b0 04 08    	jmp    *0x804b03c
 8048826:	68 60 00 00 00       	push   $0x60
 804882b:	e9 20 ff ff ff       	jmp    8048750 <_init+0x2c>

08048830 <srand@plt>:
 8048830:	ff 25 40 b0 04 08    	jmp    *0x804b040
 8048836:	68 68 00 00 00       	push   $0x68
 804883b:	e9 10 ff ff ff       	jmp    8048750 <_init+0x2c>

08048840 <mmap@plt>:
 8048840:	ff 25 44 b0 04 08    	jmp    *0x804b044
 8048846:	68 70 00 00 00       	push   $0x70
 804884b:	e9 00 ff ff ff       	jmp    8048750 <_init+0x2c>

08048850 <__libc_start_main@plt>:
 8048850:	ff 25 48 b0 04 08    	jmp    *0x804b048
 8048856:	68 78 00 00 00       	push   $0x78
 804885b:	e9 f0 fe ff ff       	jmp    8048750 <_init+0x2c>

08048860 <getopt@plt>:
 8048860:	ff 25 4c b0 04 08    	jmp    *0x804b04c
 8048866:	68 80 00 00 00       	push   $0x80
 804886b:	e9 e0 fe ff ff       	jmp    8048750 <_init+0x2c>

08048870 <fopen@plt>:
 8048870:	ff 25 50 b0 04 08    	jmp    *0x804b050
 8048876:	68 88 00 00 00       	push   $0x88
 804887b:	e9 d0 fe ff ff       	jmp    8048750 <_init+0x2c>

08048880 <memset@plt>:
 8048880:	ff 25 54 b0 04 08    	jmp    *0x804b054
 8048886:	68 90 00 00 00       	push   $0x90
 804888b:	e9 c0 fe ff ff       	jmp    8048750 <_init+0x2c>

08048890 <__strdup@plt>:
 8048890:	ff 25 58 b0 04 08    	jmp    *0x804b058
 8048896:	68 98 00 00 00       	push   $0x98
 804889b:	e9 b0 fe ff ff       	jmp    8048750 <_init+0x2c>

080488a0 <rand@plt>:
 80488a0:	ff 25 5c b0 04 08    	jmp    *0x804b05c
 80488a6:	68 a0 00 00 00       	push   $0xa0
 80488ab:	e9 a0 fe ff ff       	jmp    8048750 <_init+0x2c>

080488b0 <__strcpy_chk@plt>:
 80488b0:	ff 25 60 b0 04 08    	jmp    *0x804b060
 80488b6:	68 a8 00 00 00       	push   $0xa8
 80488bb:	e9 90 fe ff ff       	jmp    8048750 <_init+0x2c>

080488c0 <__printf_chk@plt>:
 80488c0:	ff 25 64 b0 04 08    	jmp    *0x804b064
 80488c6:	68 b0 00 00 00       	push   $0xb0
 80488cb:	e9 80 fe ff ff       	jmp    8048750 <_init+0x2c>

080488d0 <munmap@plt>:
 80488d0:	ff 25 68 b0 04 08    	jmp    *0x804b068
 80488d6:	68 b8 00 00 00       	push   $0xb8
 80488db:	e9 70 fe ff ff       	jmp    8048750 <_init+0x2c>

080488e0 <fputc@plt>:
 80488e0:	ff 25 6c b0 04 08    	jmp    *0x804b06c
 80488e6:	68 c0 00 00 00       	push   $0xc0
 80488eb:	e9 60 fe ff ff       	jmp    8048750 <_init+0x2c>

080488f0 <remove@plt>:
 80488f0:	ff 25 70 b0 04 08    	jmp    *0x804b070
 80488f6:	68 c8 00 00 00       	push   $0xc8
 80488fb:	e9 50 fe ff ff       	jmp    8048750 <_init+0x2c>

08048900 <__fprintf_chk@plt>:
 8048900:	ff 25 74 b0 04 08    	jmp    *0x804b074
 8048906:	68 d0 00 00 00       	push   $0xd0
 804890b:	e9 40 fe ff ff       	jmp    8048750 <_init+0x2c>

08048910 <random@plt>:
 8048910:	ff 25 78 b0 04 08    	jmp    *0x804b078
 8048916:	68 d8 00 00 00       	push   $0xd8
 804891b:	e9 30 fe ff ff       	jmp    8048750 <_init+0x2c>

08048920 <calloc@plt>:
 8048920:	ff 25 7c b0 04 08    	jmp    *0x804b07c
 8048926:	68 e0 00 00 00       	push   $0xe0
 804892b:	e9 20 fe ff ff       	jmp    8048750 <_init+0x2c>

08048930 <__sprintf_chk@plt>:
 8048930:	ff 25 80 b0 04 08    	jmp    *0x804b080
 8048936:	68 e8 00 00 00       	push   $0xe8
 804893b:	e9 10 fe ff ff       	jmp    8048750 <_init+0x2c>

Disassembly of section .text:

08048940 <main>:
 8048940:	55                   	push   %ebp
 8048941:	89 e5                	mov    %esp,%ebp
 8048943:	57                   	push   %edi
 8048944:	31 ff                	xor    %edi,%edi
 8048946:	56                   	push   %esi
 8048947:	be 01 00 00 00       	mov    $0x1,%esi
 804894c:	53                   	push   %ebx
 804894d:	83 e4 f0             	and    $0xfffffff0,%esp
 8048950:	83 ec 20             	sub    $0x20,%esp
 8048953:	8b 5d 0c             	mov    0xc(%ebp),%ebx
 8048956:	c7 44 24 04 20 8c 04 	movl   $0x8048c20,0x4(%esp)
 804895d:	08 
 804895e:	c7 04 24 0b 00 00 00 	movl   $0xb,(%esp)
 8048965:	e8 36 fe ff ff       	call   80487a0 <signal@plt>
 804896a:	c7 44 24 04 f0 8b 04 	movl   $0x8048bf0,0x4(%esp)
 8048971:	08 
 8048972:	c7 04 24 07 00 00 00 	movl   $0x7,(%esp)
 8048979:	e8 22 fe ff ff       	call   80487a0 <signal@plt>
 804897e:	c7 44 24 04 50 8c 04 	movl   $0x8048c50,0x4(%esp)
 8048985:	08 
 8048986:	c7 04 24 04 00 00 00 	movl   $0x4,(%esp)
 804898d:	e8 0e fe ff ff       	call   80487a0 <signal@plt>
 8048992:	a1 a4 b0 04 08       	mov    0x804b0a4,%eax
 8048997:	a3 cc b0 04 08       	mov    %eax,0x804b0cc
 804899c:	8b 45 08             	mov    0x8(%ebp),%eax
 804899f:	c7 44 24 08 a3 9a 04 	movl   $0x8049aa3,0x8(%esp)
 80489a6:	08 
 80489a7:	89 5c 24 04          	mov    %ebx,0x4(%esp)
 80489ab:	89 04 24             	mov    %eax,(%esp)
 80489ae:	e8 ad fe ff ff       	call   8048860 <getopt@plt>
 80489b3:	3c ff                	cmp    $0xff,%al
 80489b5:	74 64                	je     8048a1b <main+0xdb>
 80489b7:	3c 6e                	cmp    $0x6e,%al
 80489b9:	74 54                	je     8048a0f <main+0xcf>
 80489bb:	90                   	nop
 80489bc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 80489c0:	7e 46                	jle    8048a08 <main+0xc8>
 80489c2:	3c 73                	cmp    $0x73,%al
 80489c4:	74 d6                	je     804899c <main+0x5c>
 80489c6:	3c 75                	cmp    $0x75,%al
 80489c8:	75 3e                	jne    8048a08 <main+0xc8>
 80489ca:	a1 a8 b0 04 08       	mov    0x804b0a8,%eax
 80489cf:	89 04 24             	mov    %eax,(%esp)
 80489d2:	e8 b9 fe ff ff       	call   8048890 <__strdup@plt>
 80489d7:	89 04 24             	mov    %eax,(%esp)
 80489da:	a3 d4 b0 04 08       	mov    %eax,0x804b0d4
 80489df:	e8 ec 0a 00 00       	call   80494d0 <gencookie>
 80489e4:	a3 c8 b0 04 08       	mov    %eax,0x804b0c8
 80489e9:	eb b1                	jmp    804899c <main+0x5c>
 80489eb:	8b 03                	mov    (%ebx),%eax
 80489ed:	c7 44 24 04 c8 98 04 	movl   $0x80498c8,0x4(%esp)
 80489f4:	08 
 80489f5:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
 80489fc:	89 44 24 08          	mov    %eax,0x8(%esp)
 8048a00:	e8 bb fe ff ff       	call   80488c0 <__printf_chk@plt>
 8048a05:	8d 76 00             	lea    0x0(%esi),%esi
 8048a08:	8b 03                	mov    (%ebx),%eax
 8048a0a:	e8 71 02 00 00       	call   8048c80 <usage>
 8048a0f:	be 05 00 00 00       	mov    $0x5,%esi
 8048a14:	bf 01 00 00 00       	mov    $0x1,%edi
 8048a19:	eb 81                	jmp    804899c <main+0x5c>
 8048a1b:	a1 d4 b0 04 08       	mov    0x804b0d4,%eax
 8048a20:	85 c0                	test   %eax,%eax
 8048a22:	74 c7                	je     80489eb <main+0xab>
 8048a24:	89 44 24 08          	mov    %eax,0x8(%esp)
 8048a28:	c7 44 24 04 a9 9a 04 	movl   $0x8049aa9,0x4(%esp)
 8048a2f:	08 
 8048a30:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
 8048a37:	e8 84 fe ff ff       	call   80488c0 <__printf_chk@plt>
 8048a3c:	a1 c8 b0 04 08       	mov    0x804b0c8,%eax
 8048a41:	c7 44 24 04 b5 9a 04 	movl   $0x8049ab5,0x4(%esp)
 8048a48:	08 
 8048a49:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
 8048a50:	89 44 24 08          	mov    %eax,0x8(%esp)
 8048a54:	e8 67 fe ff ff       	call   80488c0 <__printf_chk@plt>
 8048a59:	a1 c8 b0 04 08       	mov    0x804b0c8,%eax
 8048a5e:	89 04 24             	mov    %eax,(%esp)
 8048a61:	e8 1a fd ff ff       	call   8048780 <srandom@plt>
 8048a66:	e8 a5 fe ff ff       	call   8048910 <random@plt>
 8048a6b:	c7 44 24 04 04 00 00 	movl   $0x4,0x4(%esp)
 8048a72:	00 
 8048a73:	89 34 24             	mov    %esi,(%esp)
 8048a76:	25 f0 0f 00 00       	and    $0xff0,%eax
 8048a7b:	05 00 01 00 00       	add    $0x100,%eax
 8048a80:	89 44 24 18          	mov    %eax,0x18(%esp)
 8048a84:	e8 97 fe ff ff       	call   8048920 <calloc@plt>
 8048a89:	83 fe 01             	cmp    $0x1,%esi
 8048a8c:	89 c3                	mov    %eax,%ebx
 8048a8e:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
 8048a94:	74 2d                	je     8048ac3 <main+0x183>
 8048a96:	ba 01 00 00 00       	mov    $0x1,%edx
 8048a9b:	90                   	nop
 8048a9c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 8048aa0:	89 54 24 1c          	mov    %edx,0x1c(%esp)
 8048aa4:	e8 67 fe ff ff       	call   8048910 <random@plt>
 8048aa9:	8b 54 24 1c          	mov    0x1c(%esp),%edx
 8048aad:	b9 80 00 00 00       	mov    $0x80,%ecx
 8048ab2:	25 f0 00 00 00       	and    $0xf0,%eax
 8048ab7:	29 c1                	sub    %eax,%ecx
 8048ab9:	89 0c 93             	mov    %ecx,(%ebx,%edx,4)
 8048abc:	83 c2 01             	add    $0x1,%edx
 8048abf:	39 f2                	cmp    %esi,%edx
 8048ac1:	75 dd                	jne    8048aa0 <main+0x160>
 8048ac3:	31 c0                	xor    %eax,%eax
 8048ac5:	8d 76 00             	lea    0x0(%esi),%esi
 8048ac8:	8b 54 24 18          	mov    0x18(%esp),%edx
 8048acc:	03 14 83             	add    (%ebx,%eax,4),%edx
 8048acf:	89 3c 24             	mov    %edi,(%esp)
 8048ad2:	89 44 24 1c          	mov    %eax,0x1c(%esp)
 8048ad6:	89 54 24 04          	mov    %edx,0x4(%esp)
 8048ada:	e8 c1 08 00 00       	call   80493a0 <launcher>
 8048adf:	8b 44 24 1c          	mov    0x1c(%esp),%eax
 8048ae3:	83 c0 01             	add    $0x1,%eax
 8048ae6:	39 f0                	cmp    %esi,%eax
 8048ae8:	7c de                	jl     8048ac8 <main+0x188>
 8048aea:	8d 65 f4             	lea    -0xc(%ebp),%esp
 8048aed:	31 c0                	xor    %eax,%eax
 8048aef:	5b                   	pop    %ebx
 8048af0:	5e                   	pop    %esi
 8048af1:	5f                   	pop    %edi
 8048af2:	5d                   	pop    %ebp
 8048af3:	c3                   	ret    

08048af4 <_start>:
 8048af4:	31 ed                	xor    %ebp,%ebp
 8048af6:	5e                   	pop    %esi
 8048af7:	89 e1                	mov    %esp,%ecx
 8048af9:	83 e4 f0             	and    $0xfffffff0,%esp
 8048afc:	50                   	push   %eax
 8048afd:	54                   	push   %esp
 8048afe:	52                   	push   %edx
 8048aff:	68 90 95 04 08       	push   $0x8049590
 8048b04:	68 20 95 04 08       	push   $0x8049520
 8048b09:	51                   	push   %ecx
 8048b0a:	56                   	push   %esi
 8048b0b:	68 40 89 04 08       	push   $0x8048940
 8048b10:	e8 3b fd ff ff       	call   8048850 <__libc_start_main@plt>
 8048b15:	f4                   	hlt    
 8048b16:	66 90                	xchg   %ax,%ax
 8048b18:	66 90                	xchg   %ax,%ax
 8048b1a:	66 90                	xchg   %ax,%ax
 8048b1c:	66 90                	xchg   %ax,%ax
 8048b1e:	66 90                	xchg   %ax,%ax

08048b20 <__x86.get_pc_thunk.bx>:
 8048b20:	8b 1c 24             	mov    (%esp),%ebx
 8048b23:	c3                   	ret    
 8048b24:	66 90                	xchg   %ax,%ax
 8048b26:	66 90                	xchg   %ax,%ax
 8048b28:	66 90                	xchg   %ax,%ax
 8048b2a:	66 90                	xchg   %ax,%ax
 8048b2c:	66 90                	xchg   %ax,%ax
 8048b2e:	66 90                	xchg   %ax,%ax

08048b30 <deregister_tm_clones>:
 8048b30:	b8 a3 b0 04 08       	mov    $0x804b0a3,%eax
 8048b35:	2d a0 b0 04 08       	sub    $0x804b0a0,%eax
 8048b3a:	83 f8 06             	cmp    $0x6,%eax
 8048b3d:	77 01                	ja     8048b40 <deregister_tm_clones+0x10>
 8048b3f:	c3                   	ret    
 8048b40:	b8 00 00 00 00       	mov    $0x0,%eax
 8048b45:	85 c0                	test   %eax,%eax
 8048b47:	74 f6                	je     8048b3f <deregister_tm_clones+0xf>
 8048b49:	55                   	push   %ebp
 8048b4a:	89 e5                	mov    %esp,%ebp
 8048b4c:	83 ec 18             	sub    $0x18,%esp
 8048b4f:	c7 04 24 a0 b0 04 08 	movl   $0x804b0a0,(%esp)
 8048b56:	ff d0                	call   *%eax
 8048b58:	c9                   	leave  
 8048b59:	c3                   	ret    
 8048b5a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

08048b60 <register_tm_clones>:
 8048b60:	b8 a0 b0 04 08       	mov    $0x804b0a0,%eax
 8048b65:	2d a0 b0 04 08       	sub    $0x804b0a0,%eax
 8048b6a:	c1 f8 02             	sar    $0x2,%eax
 8048b6d:	89 c2                	mov    %eax,%edx
 8048b6f:	c1 ea 1f             	shr    $0x1f,%edx
 8048b72:	01 d0                	add    %edx,%eax
 8048b74:	d1 f8                	sar    %eax
 8048b76:	75 01                	jne    8048b79 <register_tm_clones+0x19>
 8048b78:	c3                   	ret    
 8048b79:	ba 00 00 00 00       	mov    $0x0,%edx
 8048b7e:	85 d2                	test   %edx,%edx
 8048b80:	74 f6                	je     8048b78 <register_tm_clones+0x18>
 8048b82:	55                   	push   %ebp
 8048b83:	89 e5                	mov    %esp,%ebp
 8048b85:	83 ec 18             	sub    $0x18,%esp
 8048b88:	89 44 24 04          	mov    %eax,0x4(%esp)
 8048b8c:	c7 04 24 a0 b0 04 08 	movl   $0x804b0a0,(%esp)
 8048b93:	ff d2                	call   *%edx
 8048b95:	c9                   	leave  
 8048b96:	c3                   	ret    
 8048b97:	89 f6                	mov    %esi,%esi
 8048b99:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

08048ba0 <__do_global_dtors_aux>:
 8048ba0:	80 3d ac b0 04 08 00 	cmpb   $0x0,0x804b0ac
 8048ba7:	75 13                	jne    8048bbc <__do_global_dtors_aux+0x1c>
 8048ba9:	55                   	push   %ebp
 8048baa:	89 e5                	mov    %esp,%ebp
 8048bac:	83 ec 08             	sub    $0x8,%esp
 8048baf:	e8 7c ff ff ff       	call   8048b30 <deregister_tm_clones>
 8048bb4:	c6 05 ac b0 04 08 01 	movb   $0x1,0x804b0ac
 8048bbb:	c9                   	leave  
 8048bbc:	f3 c3                	repz ret 
 8048bbe:	66 90                	xchg   %ax,%ax

08048bc0 <frame_dummy>:
 8048bc0:	a1 10 af 04 08       	mov    0x804af10,%eax
 8048bc5:	85 c0                	test   %eax,%eax
 8048bc7:	74 1f                	je     8048be8 <frame_dummy+0x28>
 8048bc9:	b8 00 00 00 00       	mov    $0x0,%eax
 8048bce:	85 c0                	test   %eax,%eax
 8048bd0:	74 16                	je     8048be8 <frame_dummy+0x28>
 8048bd2:	55                   	push   %ebp
 8048bd3:	89 e5                	mov    %esp,%ebp
 8048bd5:	83 ec 18             	sub    $0x18,%esp
 8048bd8:	c7 04 24 10 af 04 08 	movl   $0x804af10,(%esp)
 8048bdf:	ff d0                	call   *%eax
 8048be1:	c9                   	leave  
 8048be2:	e9 79 ff ff ff       	jmp    8048b60 <register_tm_clones>
 8048be7:	90                   	nop
 8048be8:	e9 73 ff ff ff       	jmp    8048b60 <register_tm_clones>
 8048bed:	66 90                	xchg   %ax,%ax
 8048bef:	90                   	nop

08048bf0 <bushandler>:
 8048bf0:	83 ec 1c             	sub    $0x1c,%esp
 8048bf3:	c7 04 24 b0 95 04 08 	movl   $0x80495b0,(%esp)
 8048bfa:	e8 f1 fb ff ff       	call   80487f0 <puts@plt>
 8048bff:	c7 04 24 f4 98 04 08 	movl   $0x80498f4,(%esp)
 8048c06:	e8 e5 fb ff ff       	call   80487f0 <puts@plt>
 8048c0b:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
 8048c12:	e8 09 fc ff ff       	call   8048820 <exit@plt>
 8048c17:	89 f6                	mov    %esi,%esi
 8048c19:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

08048c20 <seghandler>:
 8048c20:	83 ec 1c             	sub    $0x1c,%esp
 8048c23:	c7 04 24 d0 95 04 08 	movl   $0x80495d0,(%esp)
 8048c2a:	e8 c1 fb ff ff       	call   80487f0 <puts@plt>
 8048c2f:	c7 04 24 f4 98 04 08 	movl   $0x80498f4,(%esp)
 8048c36:	e8 b5 fb ff ff       	call   80487f0 <puts@plt>
 8048c3b:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
 8048c42:	e8 d9 fb ff ff       	call   8048820 <exit@plt>
 8048c47:	89 f6                	mov    %esi,%esi
 8048c49:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

08048c50 <illegalhandler>:
 8048c50:	83 ec 1c             	sub    $0x1c,%esp
 8048c53:	c7 04 24 f8 95 04 08 	movl   $0x80495f8,(%esp)
 8048c5a:	e8 91 fb ff ff       	call   80487f0 <puts@plt>
 8048c5f:	c7 04 24 f4 98 04 08 	movl   $0x80498f4,(%esp)
 8048c66:	e8 85 fb ff ff       	call   80487f0 <puts@plt>
 8048c6b:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
 8048c72:	e8 a9 fb ff ff       	call   8048820 <exit@plt>
 8048c77:	89 f6                	mov    %esi,%esi
 8048c79:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

08048c80 <usage>:
 8048c80:	83 ec 1c             	sub    $0x1c,%esp
 8048c83:	89 44 24 08          	mov    %eax,0x8(%esp)
 8048c87:	c7 44 24 04 0a 99 04 	movl   $0x804990a,0x4(%esp)
 8048c8e:	08 
 8048c8f:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
 8048c96:	e8 25 fc ff ff       	call   80488c0 <__printf_chk@plt>
 8048c9b:	c7 04 24 28 99 04 08 	movl   $0x8049928,(%esp)
 8048ca2:	e8 49 fb ff ff       	call   80487f0 <puts@plt>
 8048ca7:	c7 04 24 3e 99 04 08 	movl   $0x804993e,(%esp)
 8048cae:	e8 3d fb ff ff       	call   80487f0 <puts@plt>
 8048cb3:	c7 04 24 24 96 04 08 	movl   $0x8049624,(%esp)
 8048cba:	e8 31 fb ff ff       	call   80487f0 <puts@plt>
 8048cbf:	c7 04 24 60 96 04 08 	movl   $0x8049660,(%esp)
 8048cc6:	e8 25 fb ff ff       	call   80487f0 <puts@plt>
 8048ccb:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
 8048cd2:	e8 49 fb ff ff       	call   8048820 <exit@plt>
 8048cd7:	89 f6                	mov    %esi,%esi
 8048cd9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

08048ce0 <validate.part.0>:
 8048ce0:	55                   	push   %ebp
 8048ce1:	89 c5                	mov    %eax,%ebp
 8048ce3:	57                   	push   %edi
 8048ce4:	56                   	push   %esi
 8048ce5:	53                   	push   %ebx
 8048ce6:	81 ec 6c 01 00 00    	sub    $0x16c,%esp
 8048cec:	c7 44 24 04 57 99 04 	movl   $0x8049957,0x4(%esp)
 8048cf3:	08 
 8048cf4:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
 8048cfb:	65 a1 14 00 00 00    	mov    %gs:0x14,%eax
 8048d01:	89 84 24 5c 01 00 00 	mov    %eax,0x15c(%esp)
 8048d08:	31 c0                	xor    %eax,%eax
 8048d0a:	e8 51 fa ff ff       	call   8048760 <tempnam@plt>
 8048d0f:	c7 44 24 04 5e 99 04 	movl   $0x804995e,0x4(%esp)
 8048d16:	08 
 8048d17:	89 04 24             	mov    %eax,(%esp)
 8048d1a:	89 c6                	mov    %eax,%esi
 8048d1c:	e8 4f fb ff ff       	call   8048870 <fopen@plt>
 8048d21:	85 c0                	test   %eax,%eax
 8048d23:	89 c3                	mov    %eax,%ebx
 8048d25:	0f 84 92 01 00 00    	je     8048ebd <validate.part.0+0x1dd>
 8048d2b:	89 44 24 0c          	mov    %eax,0xc(%esp)
 8048d2f:	c7 44 24 08 1b 00 00 	movl   $0x1b,0x8(%esp)
 8048d36:	00 
 8048d37:	c7 44 24 04 01 00 00 	movl   $0x1,0x4(%esp)
 8048d3e:	00 
 8048d3f:	c7 04 24 60 99 04 08 	movl   $0x8049960,(%esp)
 8048d46:	e8 85 fa ff ff       	call   80487d0 <fwrite@plt>
 8048d4b:	89 5c 24 04          	mov    %ebx,0x4(%esp)
 8048d4f:	c7 04 24 0a 00 00 00 	movl   $0xa,(%esp)
 8048d56:	e8 85 fb ff ff       	call   80488e0 <fputc@plt>
 8048d5b:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
 8048d62:	e8 09 fa ff ff       	call   8048770 <cuserid@plt>
 8048d67:	85 c0                	test   %eax,%eax
 8048d69:	89 c7                	mov    %eax,%edi
 8048d6b:	0f 84 27 01 00 00    	je     8048e98 <validate.part.0+0x1b8>
 8048d71:	8d 54 24 3c          	lea    0x3c(%esp),%edx
 8048d75:	89 14 24             	mov    %edx,(%esp)
 8048d78:	c7 44 24 08 20 00 00 	movl   $0x20,0x8(%esp)
 8048d7f:	00 
 8048d80:	89 44 24 04          	mov    %eax,0x4(%esp)
 8048d84:	89 54 24 2c          	mov    %edx,0x2c(%esp)
 8048d88:	e8 23 fb ff ff       	call   80488b0 <__strcpy_chk@plt>
 8048d8d:	8b 54 24 2c          	mov    0x2c(%esp),%edx
 8048d91:	89 54 24 0c          	mov    %edx,0xc(%esp)
 8048d95:	89 1c 24             	mov    %ebx,(%esp)
 8048d98:	c7 44 24 08 7c 99 04 	movl   $0x804997c,0x8(%esp)
 8048d9f:	08 
 8048da0:	c7 44 24 04 01 00 00 	movl   $0x1,0x4(%esp)
 8048da7:	00 
 8048da8:	e8 53 fb ff ff       	call   8048900 <__fprintf_chk@plt>
 8048dad:	a1 c8 b0 04 08       	mov    0x804b0c8,%eax
 8048db2:	89 1c 24             	mov    %ebx,(%esp)
 8048db5:	c7 44 24 20 00 00 00 	movl   $0x0,0x20(%esp)
 8048dbc:	00 
 8048dbd:	c7 44 24 1c 00 b1 04 	movl   $0x804b100,0x1c(%esp)
 8048dc4:	08 
 8048dc5:	89 44 24 18          	mov    %eax,0x18(%esp)
 8048dc9:	89 6c 24 14          	mov    %ebp,0x14(%esp)
 8048dcd:	89 7c 24 10          	mov    %edi,0x10(%esp)
 8048dd1:	c7 44 24 0c 6f 3b 00 	movl   $0x3b6f,0xc(%esp)
 8048dd8:	00 
 8048dd9:	c7 44 24 08 bc 96 04 	movl   $0x80496bc,0x8(%esp)
 8048de0:	08 
 8048de1:	c7 44 24 04 01 00 00 	movl   $0x1,0x4(%esp)
 8048de8:	00 
 8048de9:	e8 12 fb ff ff       	call   8048900 <__fprintf_chk@plt>
 8048dee:	89 1c 24             	mov    %ebx,(%esp)
 8048df1:	8d 5c 24 5c          	lea    0x5c(%esp),%ebx
 8048df5:	e8 96 f9 ff ff       	call   8048790 <fclose@plt>
 8048dfa:	c7 44 24 1c 8a 99 04 	movl   $0x804998a,0x1c(%esp)
 8048e01:	08 
 8048e02:	c7 44 24 18 a1 99 04 	movl   $0x80499a1,0x18(%esp)
 8048e09:	08 
 8048e0a:	c7 44 24 14 a6 99 04 	movl   $0x80499a6,0x14(%esp)
 8048e11:	08 
 8048e12:	89 74 24 10          	mov    %esi,0x10(%esp)
 8048e16:	c7 44 24 0c bd 99 04 	movl   $0x80499bd,0xc(%esp)
 8048e1d:	08 
 8048e1e:	c7 44 24 08 00 01 00 	movl   $0x100,0x8(%esp)
 8048e25:	00 
 8048e26:	c7 44 24 04 01 00 00 	movl   $0x1,0x4(%esp)
 8048e2d:	00 
 8048e2e:	89 1c 24             	mov    %ebx,(%esp)
 8048e31:	e8 fa fa ff ff       	call   8048930 <__sprintf_chk@plt>
 8048e36:	89 1c 24             	mov    %ebx,(%esp)
 8048e39:	e8 c2 f9 ff ff       	call   8048800 <system@plt>
 8048e3e:	85 c0                	test   %eax,%eax
 8048e40:	74 36                	je     8048e78 <validate.part.0+0x198>
 8048e42:	c7 04 24 0c 97 04 08 	movl   $0x804970c,(%esp)
 8048e49:	e8 a2 f9 ff ff       	call   80487f0 <puts@plt>
 8048e4e:	89 34 24             	mov    %esi,(%esp)
 8048e51:	e8 9a fa ff ff       	call   80488f0 <remove@plt>
 8048e56:	8b 84 24 5c 01 00 00 	mov    0x15c(%esp),%eax
 8048e5d:	65 33 05 14 00 00 00 	xor    %gs:0x14,%eax
 8048e64:	75 52                	jne    8048eb8 <validate.part.0+0x1d8>
 8048e66:	81 c4 6c 01 00 00    	add    $0x16c,%esp
 8048e6c:	5b                   	pop    %ebx
 8048e6d:	5e                   	pop    %esi
 8048e6e:	5f                   	pop    %edi
 8048e6f:	5d                   	pop    %ebp
 8048e70:	c3                   	ret    
 8048e71:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 8048e78:	c7 04 24 d0 99 04 08 	movl   $0x80499d0,(%esp)
 8048e7f:	e8 6c f9 ff ff       	call   80487f0 <puts@plt>
 8048e84:	c7 04 24 dc 96 04 08 	movl   $0x80496dc,(%esp)
 8048e8b:	e8 60 f9 ff ff       	call   80487f0 <puts@plt>
 8048e90:	eb bc                	jmp    8048e4e <validate.part.0+0x16e>
 8048e92:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 8048e98:	b8 64 79 00 00       	mov    $0x7964,%eax
 8048e9d:	c7 44 24 3c 6e 6f 62 	movl   $0x6f626f6e,0x3c(%esp)
 8048ea4:	6f 
 8048ea5:	8d 54 24 3c          	lea    0x3c(%esp),%edx
 8048ea9:	66 89 44 24 40       	mov    %ax,0x40(%esp)
 8048eae:	c6 44 24 42 00       	movb   $0x0,0x42(%esp)
 8048eb3:	e9 d9 fe ff ff       	jmp    8048d91 <validate.part.0+0xb1>
 8048eb8:	e8 f3 f8 ff ff       	call   80487b0 <__stack_chk_fail@plt>
 8048ebd:	c7 44 24 04 88 96 04 	movl   $0x8049688,0x4(%esp)
 8048ec4:	08 
 8048ec5:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
 8048ecc:	e8 ef f9 ff ff       	call   80488c0 <__printf_chk@plt>
 8048ed1:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
 8048ed8:	e8 43 f9 ff ff       	call   8048820 <exit@plt>
 8048edd:	8d 76 00             	lea    0x0(%esi),%esi

08048ee0 <Gets>:
 8048ee0:	57                   	push   %edi
 8048ee1:	56                   	push   %esi
 8048ee2:	53                   	push   %ebx
 8048ee3:	83 ec 10             	sub    $0x10,%esp
 8048ee6:	8b 5c 24 20          	mov    0x20(%esp),%ebx
 8048eea:	c7 05 bc b0 04 08 00 	movl   $0x0,0x804b0bc
 8048ef1:	00 00 00 
 8048ef4:	89 de                	mov    %ebx,%esi
 8048ef6:	66 90                	xchg   %ax,%ax
 8048ef8:	a1 cc b0 04 08       	mov    0x804b0cc,%eax
 8048efd:	89 04 24             	mov    %eax,(%esp)
 8048f00:	e8 bb f8 ff ff       	call   80487c0 <_IO_getc@plt>
 8048f05:	83 f8 ff             	cmp    $0xffffffff,%eax
 8048f08:	89 c2                	mov    %eax,%edx
 8048f0a:	74 54                	je     8048f60 <Gets+0x80>
 8048f0c:	83 f8 0a             	cmp    $0xa,%eax
 8048f0f:	74 4f                	je     8048f60 <Gets+0x80>
 8048f11:	83 c6 01             	add    $0x1,%esi
 8048f14:	88 56 ff             	mov    %dl,-0x1(%esi)
 8048f17:	8b 0d bc b0 04 08    	mov    0x804b0bc,%ecx
 8048f1d:	81 f9 ff 03 00 00    	cmp    $0x3ff,%ecx
 8048f23:	7f d3                	jg     8048ef8 <Gets+0x18>
 8048f25:	89 d0                	mov    %edx,%eax
 8048f27:	83 e2 0f             	and    $0xf,%edx
 8048f2a:	c0 e8 04             	shr    $0x4,%al
 8048f2d:	0f be c0             	movsbl %al,%eax
 8048f30:	0f b6 80 c3 9a 04 08 	movzbl 0x8049ac3(%eax),%eax
 8048f37:	8d 3c 49             	lea    (%ecx,%ecx,2),%edi
 8048f3a:	83 c1 01             	add    $0x1,%ecx
 8048f3d:	c6 87 02 b1 04 08 20 	movb   $0x20,0x804b102(%edi)
 8048f44:	89 0d bc b0 04 08    	mov    %ecx,0x804b0bc
 8048f4a:	88 87 00 b1 04 08    	mov    %al,0x804b100(%edi)
 8048f50:	0f b6 82 c3 9a 04 08 	movzbl 0x8049ac3(%edx),%eax
 8048f57:	88 87 01 b1 04 08    	mov    %al,0x804b101(%edi)
 8048f5d:	eb 99                	jmp    8048ef8 <Gets+0x18>
 8048f5f:	90                   	nop
 8048f60:	c6 06 00             	movb   $0x0,(%esi)
 8048f63:	a1 bc b0 04 08       	mov    0x804b0bc,%eax
 8048f68:	c6 84 40 00 b1 04 08 	movb   $0x0,0x804b100(%eax,%eax,2)
 8048f6f:	00 
 8048f70:	83 c4 10             	add    $0x10,%esp
 8048f73:	89 d8                	mov    %ebx,%eax
 8048f75:	5b                   	pop    %ebx
 8048f76:	5e                   	pop    %esi
 8048f77:	5f                   	pop    %edi
 8048f78:	c3                   	ret    
 8048f79:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

08048f80 <getbuf>:
 8048f80:	83 ec 4c             	sub    $0x4c,%esp
 8048f83:	65 a1 14 00 00 00    	mov    %gs:0x14,%eax
 8048f89:	89 44 24 3c          	mov    %eax,0x3c(%esp)
 8048f8d:	31 c0                	xor    %eax,%eax
 8048f8f:	8d 44 24 1c          	lea    0x1c(%esp),%eax
 8048f93:	89 04 24             	mov    %eax,(%esp)
 8048f96:	e8 45 ff ff ff       	call   8048ee0 <Gets>
 8048f9b:	b8 01 00 00 00       	mov    $0x1,%eax
 8048fa0:	8b 54 24 3c          	mov    0x3c(%esp),%edx
 8048fa4:	65 33 15 14 00 00 00 	xor    %gs:0x14,%edx
 8048fab:	75 04                	jne    8048fb1 <getbuf+0x31>
 8048fad:	83 c4 4c             	add    $0x4c,%esp
 8048fb0:	c3                   	ret    
 8048fb1:	e8 fa f7 ff ff       	call   80487b0 <__stack_chk_fail@plt>
 8048fb6:	8d 76 00             	lea    0x0(%esi),%esi
 8048fb9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

08048fc0 <getbufn>:
 8048fc0:	81 ec 2c 02 00 00    	sub    $0x22c,%esp
 8048fc6:	65 a1 14 00 00 00    	mov    %gs:0x14,%eax
 8048fcc:	89 84 24 1c 02 00 00 	mov    %eax,0x21c(%esp)
 8048fd3:	31 c0                	xor    %eax,%eax
 8048fd5:	8d 44 24 1c          	lea    0x1c(%esp),%eax
 8048fd9:	89 04 24             	mov    %eax,(%esp)
 8048fdc:	e8 ff fe ff ff       	call   8048ee0 <Gets>
 8048fe1:	b8 01 00 00 00       	mov    $0x1,%eax
 8048fe6:	8b 94 24 1c 02 00 00 	mov    0x21c(%esp),%edx
 8048fed:	65 33 15 14 00 00 00 	xor    %gs:0x14,%edx
 8048ff4:	75 07                	jne    8048ffd <getbufn+0x3d>
 8048ff6:	81 c4 2c 02 00 00    	add    $0x22c,%esp
 8048ffc:	c3                   	ret    
 8048ffd:	e8 ae f7 ff ff       	call   80487b0 <__stack_chk_fail@plt>
 8049002:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 8049009:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

08049010 <uniqueval>:
 8049010:	83 ec 1c             	sub    $0x1c,%esp
 8049013:	e8 c8 f7 ff ff       	call   80487e0 <getpid@plt>
 8049018:	89 04 24             	mov    %eax,(%esp)
 804901b:	e8 60 f7 ff ff       	call   8048780 <srandom@plt>
 8049020:	83 c4 1c             	add    $0x1c,%esp
 8049023:	e9 e8 f8 ff ff       	jmp    8048910 <random@plt>
 8049028:	90                   	nop
 8049029:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

08049030 <validate>:
 8049030:	53                   	push   %ebx
 8049031:	83 ec 18             	sub    $0x18,%esp
 8049034:	8b 15 d4 b0 04 08    	mov    0x804b0d4,%edx
 804903a:	8b 5c 24 20          	mov    0x20(%esp),%ebx
 804903e:	85 d2                	test   %edx,%edx
 8049040:	0f 84 8a 00 00 00    	je     80490d0 <validate+0xa0>
 8049046:	83 fb 04             	cmp    $0x4,%ebx
 8049049:	77 6d                	ja     80490b8 <validate+0x88>
 804904b:	8b 04 9d 8c b0 04 08 	mov    0x804b08c(,%ebx,4),%eax
 8049052:	c7 05 c4 b0 04 08 01 	movl   $0x1,0x804b0c4
 8049059:	00 00 00 
 804905c:	83 e8 01             	sub    $0x1,%eax
 804905f:	85 c0                	test   %eax,%eax
 8049061:	89 04 9d 8c b0 04 08 	mov    %eax,0x804b08c(,%ebx,4)
 8049068:	7e 16                	jle    8049080 <validate+0x50>
 804906a:	c7 44 24 20 da 99 04 	movl   $0x80499da,0x20(%esp)
 8049071:	08 
 8049072:	83 c4 18             	add    $0x18,%esp
 8049075:	5b                   	pop    %ebx
 8049076:	e9 75 f7 ff ff       	jmp    80487f0 <puts@plt>
 804907b:	90                   	nop
 804907c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 8049080:	c7 04 24 e5 99 04 08 	movl   $0x80499e5,(%esp)
 8049087:	e8 64 f7 ff ff       	call   80487f0 <puts@plt>
 804908c:	a1 d0 b0 04 08       	mov    0x804b0d0,%eax
 8049091:	85 c0                	test   %eax,%eax
 8049093:	74 0b                	je     80490a0 <validate+0x70>
 8049095:	83 c4 18             	add    $0x18,%esp
 8049098:	89 d8                	mov    %ebx,%eax
 804909a:	5b                   	pop    %ebx
 804909b:	e9 40 fc ff ff       	jmp    8048ce0 <validate.part.0>
 80490a0:	c7 44 24 20 a0 97 04 	movl   $0x80497a0,0x20(%esp)
 80490a7:	08 
 80490a8:	83 c4 18             	add    $0x18,%esp
 80490ab:	5b                   	pop    %ebx
 80490ac:	e9 3f f7 ff ff       	jmp    80487f0 <puts@plt>
 80490b1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 80490b8:	c7 44 24 20 78 97 04 	movl   $0x8049778,0x20(%esp)
 80490bf:	08 
 80490c0:	83 c4 18             	add    $0x18,%esp
 80490c3:	5b                   	pop    %ebx
 80490c4:	e9 27 f7 ff ff       	jmp    80487f0 <puts@plt>
 80490c9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 80490d0:	c7 44 24 20 4c 97 04 	movl   $0x804974c,0x20(%esp)
 80490d7:	08 
 80490d8:	83 c4 18             	add    $0x18,%esp
 80490db:	5b                   	pop    %ebx
 80490dc:	e9 0f f7 ff ff       	jmp    80487f0 <puts@plt>
 80490e1:	eb 0d                	jmp    80490f0 <smoke>
 80490e3:	90                   	nop
 80490e4:	90                   	nop
 80490e5:	90                   	nop
 80490e6:	90                   	nop
 80490e7:	90                   	nop
 80490e8:	90                   	nop
 80490e9:	90                   	nop
 80490ea:	90                   	nop
 80490eb:	90                   	nop
 80490ec:	90                   	nop
 80490ed:	90                   	nop
 80490ee:	90                   	nop
 80490ef:	90                   	nop

080490f0 <smoke>:
 80490f0:	83 ec 1c             	sub    $0x1c,%esp
 80490f3:	c7 04 24 eb 99 04 08 	movl   $0x80499eb,(%esp)
 80490fa:	e8 f1 f6 ff ff       	call   80487f0 <puts@plt>
 80490ff:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
 8049106:	e8 25 ff ff ff       	call   8049030 <validate>
 804910b:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
 8049112:	e8 09 f7 ff ff       	call   8048820 <exit@plt>
 8049117:	89 f6                	mov    %esi,%esi
 8049119:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

08049120 <fizz>:
 8049120:	83 ec 1c             	sub    $0x1c,%esp
 8049123:	8b 44 24 20          	mov    0x20(%esp),%eax
 8049127:	3b 05 c8 b0 04 08    	cmp    0x804b0c8,%eax
 804912d:	89 44 24 08          	mov    %eax,0x8(%esp)
 8049131:	74 20                	je     8049153 <fizz+0x33>
 8049133:	c7 44 24 04 ec 97 04 	movl   $0x80497ec,0x4(%esp)
 804913a:	08 
 804913b:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
 8049142:	e8 79 f7 ff ff       	call   80488c0 <__printf_chk@plt>
 8049147:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
 804914e:	e8 cd f6 ff ff       	call   8048820 <exit@plt>
 8049153:	c7 44 24 04 06 9a 04 	movl   $0x8049a06,0x4(%esp)
 804915a:	08 
 804915b:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
 8049162:	e8 59 f7 ff ff       	call   80488c0 <__printf_chk@plt>
 8049167:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
 804916e:	e8 bd fe ff ff       	call   8049030 <validate>
 8049173:	eb d2                	jmp    8049147 <fizz+0x27>
 8049175:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 8049179:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

08049180 <bang>:
 8049180:	83 ec 1c             	sub    $0x1c,%esp
 8049183:	a1 c0 b0 04 08       	mov    0x804b0c0,%eax
 8049188:	3b 05 c8 b0 04 08    	cmp    0x804b0c8,%eax
 804918e:	89 44 24 08          	mov    %eax,0x8(%esp)
 8049192:	74 20                	je     80491b4 <bang+0x34>
 8049194:	c7 44 24 04 24 9a 04 	movl   $0x8049a24,0x4(%esp)
 804919b:	08 
 804919c:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
 80491a3:	e8 18 f7 ff ff       	call   80488c0 <__printf_chk@plt>
 80491a8:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
 80491af:	e8 6c f6 ff ff       	call   8048820 <exit@plt>
 80491b4:	c7 44 24 04 0c 98 04 	movl   $0x804980c,0x4(%esp)
 80491bb:	08 
 80491bc:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
 80491c3:	e8 f8 f6 ff ff       	call   80488c0 <__printf_chk@plt>
 80491c8:	c7 04 24 02 00 00 00 	movl   $0x2,(%esp)
 80491cf:	e8 5c fe ff ff       	call   8049030 <validate>
 80491d4:	eb d2                	jmp    80491a8 <bang+0x28>
 80491d6:	8d 76 00             	lea    0x0(%esi),%esi
 80491d9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

080491e0 <test>:
 80491e0:	83 ec 4c             	sub    $0x4c,%esp
 80491e3:	65 a1 14 00 00 00    	mov    %gs:0x14,%eax
 80491e9:	89 44 24 3c          	mov    %eax,0x3c(%esp)
 80491ed:	31 c0                	xor    %eax,%eax
 80491ef:	e8 1c fe ff ff       	call   8049010 <uniqueval>
 80491f4:	89 44 24 18          	mov    %eax,0x18(%esp)
 80491f8:	8d 44 24 1c          	lea    0x1c(%esp),%eax
 80491fc:	89 04 24             	mov    %eax,(%esp)
 80491ff:	e8 dc fc ff ff       	call   8048ee0 <Gets>
 8049204:	e8 07 fe ff ff       	call   8049010 <uniqueval>
 8049209:	8b 54 24 18          	mov    0x18(%esp),%edx
 804920d:	39 d0                	cmp    %edx,%eax
 804920f:	75 37                	jne    8049248 <test+0x68>
 8049211:	83 3d c8 b0 04 08 01 	cmpl   $0x1,0x804b0c8
 8049218:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
 804921f:	00 
 8049220:	74 36                	je     8049258 <test+0x78>
 8049222:	c7 44 24 04 5f 9a 04 	movl   $0x8049a5f,0x4(%esp)
 8049229:	08 
 804922a:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
 8049231:	e8 8a f6 ff ff       	call   80488c0 <__printf_chk@plt>
 8049236:	8b 44 24 3c          	mov    0x3c(%esp),%eax
 804923a:	65 33 05 14 00 00 00 	xor    %gs:0x14,%eax
 8049241:	75 37                	jne    804927a <test+0x9a>
 8049243:	83 c4 4c             	add    $0x4c,%esp
 8049246:	c3                   	ret    
 8049247:	90                   	nop
 8049248:	c7 04 24 34 98 04 08 	movl   $0x8049834,(%esp)
 804924f:	e8 9c f5 ff ff       	call   80487f0 <puts@plt>
 8049254:	eb e0                	jmp    8049236 <test+0x56>
 8049256:	66 90                	xchg   %ax,%ax
 8049258:	c7 44 24 04 42 9a 04 	movl   $0x8049a42,0x4(%esp)
 804925f:	08 
 8049260:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
 8049267:	e8 54 f6 ff ff       	call   80488c0 <__printf_chk@plt>
 804926c:	c7 04 24 03 00 00 00 	movl   $0x3,(%esp)
 8049273:	e8 b8 fd ff ff       	call   8049030 <validate>
 8049278:	eb bc                	jmp    8049236 <test+0x56>
 804927a:	e8 31 f5 ff ff       	call   80487b0 <__stack_chk_fail@plt>
 804927f:	90                   	nop

08049280 <testn>:
 8049280:	83 ec 2c             	sub    $0x2c,%esp
 8049283:	c7 44 24 1c ef be ad 	movl   $0xdeadbeef,0x1c(%esp)
 804928a:	de 
 804928b:	e8 30 fd ff ff       	call   8048fc0 <getbufn>
 8049290:	8b 54 24 1c          	mov    0x1c(%esp),%edx
 8049294:	81 fa ef be ad de    	cmp    $0xdeadbeef,%edx
 804929a:	75 24                	jne    80492c0 <testn+0x40>
 804929c:	3b 05 c8 b0 04 08    	cmp    0x804b0c8,%eax
 80492a2:	89 44 24 08          	mov    %eax,0x8(%esp)
 80492a6:	74 28                	je     80492d0 <testn+0x50>
 80492a8:	c7 44 24 04 7a 9a 04 	movl   $0x8049a7a,0x4(%esp)
 80492af:	08 
 80492b0:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
 80492b7:	e8 04 f6 ff ff       	call   80488c0 <__printf_chk@plt>
 80492bc:	83 c4 2c             	add    $0x2c,%esp
 80492bf:	c3                   	ret    
 80492c0:	c7 04 24 34 98 04 08 	movl   $0x8049834,(%esp)
 80492c7:	e8 24 f5 ff ff       	call   80487f0 <puts@plt>
 80492cc:	83 c4 2c             	add    $0x2c,%esp
 80492cf:	c3                   	ret    
 80492d0:	c7 44 24 04 60 98 04 	movl   $0x8049860,0x4(%esp)
 80492d7:	08 
 80492d8:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
 80492df:	e8 dc f5 ff ff       	call   80488c0 <__printf_chk@plt>
 80492e4:	c7 04 24 04 00 00 00 	movl   $0x4,(%esp)
 80492eb:	e8 40 fd ff ff       	call   8049030 <validate>
 80492f0:	83 c4 2c             	add    $0x2c,%esp
 80492f3:	c3                   	ret    
 80492f4:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 80492fa:	8d bf 00 00 00 00    	lea    0x0(%edi),%edi

08049300 <launch>:
 8049300:	55                   	push   %ebp
 8049301:	89 e5                	mov    %esp,%ebp
 8049303:	8d 4d b4             	lea    -0x4c(%ebp),%ecx
 8049306:	81 e1 f0 3f 00 00    	and    $0x3ff0,%ecx
 804930c:	53                   	push   %ebx
 804930d:	89 c3                	mov    %eax,%ebx
 804930f:	8d 54 11 1e          	lea    0x1e(%ecx,%edx,1),%edx
 8049313:	83 ec 64             	sub    $0x64,%esp
 8049316:	83 e2 f0             	and    $0xfffffff0,%edx
 8049319:	29 d4                	sub    %edx,%esp
 804931b:	8d 54 24 1b          	lea    0x1b(%esp),%edx
 804931f:	83 e2 f0             	and    $0xfffffff0,%edx
 8049322:	89 4c 24 08          	mov    %ecx,0x8(%esp)
 8049326:	89 14 24             	mov    %edx,(%esp)
 8049329:	c7 44 24 04 f4 00 00 	movl   $0xf4,0x4(%esp)
 8049330:	00 
 8049331:	65 a1 14 00 00 00    	mov    %gs:0x14,%eax
 8049337:	89 45 f4             	mov    %eax,-0xc(%ebp)
 804933a:	31 c0                	xor    %eax,%eax
 804933c:	e8 3f f5 ff ff       	call   8048880 <memset@plt>
 8049341:	c7 44 24 04 96 9a 04 	movl   $0x8049a96,0x4(%esp)
 8049348:	08 
 8049349:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
 8049350:	e8 6b f5 ff ff       	call   80488c0 <__printf_chk@plt>
 8049355:	85 db                	test   %ebx,%ebx
 8049357:	74 37                	je     8049390 <launch+0x90>
 8049359:	e8 22 ff ff ff       	call   8049280 <testn>
 804935e:	a1 c4 b0 04 08       	mov    0x804b0c4,%eax
 8049363:	85 c0                	test   %eax,%eax
 8049365:	75 16                	jne    804937d <launch+0x7d>
 8049367:	c7 04 24 f4 98 04 08 	movl   $0x80498f4,(%esp)
 804936e:	e8 7d f4 ff ff       	call   80487f0 <puts@plt>
 8049373:	c7 05 c4 b0 04 08 00 	movl   $0x0,0x804b0c4
 804937a:	00 00 00 
 804937d:	8b 45 f4             	mov    -0xc(%ebp),%eax
 8049380:	65 33 05 14 00 00 00 	xor    %gs:0x14,%eax
 8049387:	75 0e                	jne    8049397 <launch+0x97>
 8049389:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 804938c:	c9                   	leave  
 804938d:	c3                   	ret    
 804938e:	66 90                	xchg   %ax,%ax
 8049390:	e8 4b fe ff ff       	call   80491e0 <test>
 8049395:	eb c7                	jmp    804935e <launch+0x5e>
 8049397:	e8 14 f4 ff ff       	call   80487b0 <__stack_chk_fail@plt>
 804939c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

080493a0 <launcher>:
 80493a0:	83 ec 2c             	sub    $0x2c,%esp
 80493a3:	8b 44 24 30          	mov    0x30(%esp),%eax
 80493a7:	c7 44 24 14 00 00 00 	movl   $0x0,0x14(%esp)
 80493ae:	00 
 80493af:	c7 44 24 10 00 00 00 	movl   $0x0,0x10(%esp)
 80493b6:	00 
 80493b7:	c7 44 24 0c 32 01 00 	movl   $0x132,0xc(%esp)
 80493be:	00 
 80493bf:	a3 b8 b0 04 08       	mov    %eax,0x804b0b8
 80493c4:	8b 44 24 34          	mov    0x34(%esp),%eax
 80493c8:	c7 44 24 08 07 00 00 	movl   $0x7,0x8(%esp)
 80493cf:	00 
 80493d0:	c7 44 24 04 00 00 10 	movl   $0x100000,0x4(%esp)
 80493d7:	00 
 80493d8:	c7 04 24 00 60 58 55 	movl   $0x55586000,(%esp)
 80493df:	a3 b4 b0 04 08       	mov    %eax,0x804b0b4
 80493e4:	e8 57 f4 ff ff       	call   8048840 <mmap@plt>
 80493e9:	3d 00 60 58 55       	cmp    $0x55586000,%eax
 80493ee:	75 4a                	jne    804943a <launcher+0x9a>
 80493f0:	ba f8 5f 68 55       	mov    $0x55685ff8,%edx
 80493f5:	89 e0                	mov    %esp,%eax
 80493f7:	89 d4                	mov    %edx,%esp
 80493f9:	89 c2                	mov    %eax,%edx
 80493fb:	a1 b8 b0 04 08       	mov    0x804b0b8,%eax
 8049400:	89 15 b0 b0 04 08    	mov    %edx,0x804b0b0
 8049406:	8b 15 b4 b0 04 08    	mov    0x804b0b4,%edx
 804940c:	c7 05 e0 b0 04 08 f8 	movl   $0x55685ff8,0x804b0e0
 8049413:	5f 68 55 
 8049416:	e8 e5 fe ff ff       	call   8049300 <launch>
 804941b:	a1 b0 b0 04 08       	mov    0x804b0b0,%eax
 8049420:	89 c4                	mov    %eax,%esp
 8049422:	c7 44 24 34 00 00 10 	movl   $0x100000,0x34(%esp)
 8049429:	00 
 804942a:	c7 44 24 30 00 60 58 	movl   $0x55586000,0x30(%esp)
 8049431:	55 
 8049432:	83 c4 2c             	add    $0x2c,%esp
 8049435:	e9 96 f4 ff ff       	jmp    80488d0 <munmap@plt>
 804943a:	a1 a0 b0 04 08       	mov    0x804b0a0,%eax
 804943f:	c7 44 24 08 47 00 00 	movl   $0x47,0x8(%esp)
 8049446:	00 
 8049447:	c7 44 24 04 01 00 00 	movl   $0x1,0x4(%esp)
 804944e:	00 
 804944f:	c7 04 24 80 98 04 08 	movl   $0x8049880,(%esp)
 8049456:	89 44 24 0c          	mov    %eax,0xc(%esp)
 804945a:	e8 71 f3 ff ff       	call   80487d0 <fwrite@plt>
 804945f:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
 8049466:	e8 b5 f3 ff ff       	call   8048820 <exit@plt>
 804946b:	66 90                	xchg   %ax,%ax
 804946d:	66 90                	xchg   %ax,%ax
 804946f:	90                   	nop

08049470 <hash>:
 8049470:	8b 4c 24 04          	mov    0x4(%esp),%ecx
 8049474:	31 c0                	xor    %eax,%eax
 8049476:	0f be 11             	movsbl (%ecx),%edx
 8049479:	84 d2                	test   %dl,%dl
 804947b:	74 14                	je     8049491 <hash+0x21>
 804947d:	8d 76 00             	lea    0x0(%esi),%esi
 8049480:	6b c0 67             	imul   $0x67,%eax,%eax
 8049483:	83 c1 01             	add    $0x1,%ecx
 8049486:	01 d0                	add    %edx,%eax
 8049488:	0f be 11             	movsbl (%ecx),%edx
 804948b:	84 d2                	test   %dl,%dl
 804948d:	75 f1                	jne    8049480 <hash+0x10>
 804948f:	f3 c3                	repz ret 
 8049491:	f3 c3                	repz ret 
 8049493:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 8049499:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

080494a0 <check>:
 80494a0:	8b 54 24 04          	mov    0x4(%esp),%edx
 80494a4:	31 c0                	xor    %eax,%eax
 80494a6:	89 d1                	mov    %edx,%ecx
 80494a8:	c1 e9 1c             	shr    $0x1c,%ecx
 80494ab:	85 c9                	test   %ecx,%ecx
 80494ad:	74 17                	je     80494c6 <check+0x26>
 80494af:	31 c9                	xor    %ecx,%ecx
 80494b1:	89 d0                	mov    %edx,%eax
 80494b3:	d3 e8                	shr    %cl,%eax
 80494b5:	3c 0a                	cmp    $0xa,%al
 80494b7:	74 0f                	je     80494c8 <check+0x28>
 80494b9:	83 c1 08             	add    $0x8,%ecx
 80494bc:	83 f9 20             	cmp    $0x20,%ecx
 80494bf:	75 f0                	jne    80494b1 <check+0x11>
 80494c1:	b8 01 00 00 00       	mov    $0x1,%eax
 80494c6:	f3 c3                	repz ret 
 80494c8:	31 c0                	xor    %eax,%eax
 80494ca:	c3                   	ret    
 80494cb:	90                   	nop
 80494cc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

080494d0 <gencookie>:
 80494d0:	83 ec 1c             	sub    $0x1c,%esp
 80494d3:	31 c9                	xor    %ecx,%ecx
 80494d5:	8b 54 24 20          	mov    0x20(%esp),%edx
 80494d9:	0f be 02             	movsbl (%edx),%eax
 80494dc:	84 c0                	test   %al,%al
 80494de:	74 0f                	je     80494ef <gencookie+0x1f>
 80494e0:	6b c9 67             	imul   $0x67,%ecx,%ecx
 80494e3:	83 c2 01             	add    $0x1,%edx
 80494e6:	01 c1                	add    %eax,%ecx
 80494e8:	0f be 02             	movsbl (%edx),%eax
 80494eb:	84 c0                	test   %al,%al
 80494ed:	75 f1                	jne    80494e0 <gencookie+0x10>
 80494ef:	89 0c 24             	mov    %ecx,(%esp)
 80494f2:	e8 39 f3 ff ff       	call   8048830 <srand@plt>
 80494f7:	90                   	nop
 80494f8:	e8 a3 f3 ff ff       	call   80488a0 <rand@plt>
 80494fd:	89 c2                	mov    %eax,%edx
 80494ff:	c1 ea 1c             	shr    $0x1c,%edx
 8049502:	85 d2                	test   %edx,%edx
 8049504:	74 f2                	je     80494f8 <gencookie+0x28>
 8049506:	31 c9                	xor    %ecx,%ecx
 8049508:	89 c2                	mov    %eax,%edx
 804950a:	d3 ea                	shr    %cl,%edx
 804950c:	80 fa 0a             	cmp    $0xa,%dl
 804950f:	74 e7                	je     80494f8 <gencookie+0x28>
 8049511:	83 c1 08             	add    $0x8,%ecx
 8049514:	83 f9 20             	cmp    $0x20,%ecx
 8049517:	75 ef                	jne    8049508 <gencookie+0x38>
 8049519:	83 c4 1c             	add    $0x1c,%esp
 804951c:	c3                   	ret    
 804951d:	66 90                	xchg   %ax,%ax
 804951f:	90                   	nop

08049520 <__libc_csu_init>:
 8049520:	55                   	push   %ebp
 8049521:	57                   	push   %edi
 8049522:	31 ff                	xor    %edi,%edi
 8049524:	56                   	push   %esi
 8049525:	53                   	push   %ebx
 8049526:	e8 f5 f5 ff ff       	call   8048b20 <__x86.get_pc_thunk.bx>
 804952b:	81 c3 d5 1a 00 00    	add    $0x1ad5,%ebx
 8049531:	83 ec 1c             	sub    $0x1c,%esp
 8049534:	8b 6c 24 30          	mov    0x30(%esp),%ebp
 8049538:	8d b3 0c ff ff ff    	lea    -0xf4(%ebx),%esi
 804953e:	e8 e1 f1 ff ff       	call   8048724 <_init>
 8049543:	8d 83 08 ff ff ff    	lea    -0xf8(%ebx),%eax
 8049549:	29 c6                	sub    %eax,%esi
 804954b:	c1 fe 02             	sar    $0x2,%esi
 804954e:	85 f6                	test   %esi,%esi
 8049550:	74 27                	je     8049579 <__libc_csu_init+0x59>
 8049552:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 8049558:	8b 44 24 38          	mov    0x38(%esp),%eax
 804955c:	89 2c 24             	mov    %ebp,(%esp)
 804955f:	89 44 24 08          	mov    %eax,0x8(%esp)
 8049563:	8b 44 24 34          	mov    0x34(%esp),%eax
 8049567:	89 44 24 04          	mov    %eax,0x4(%esp)
 804956b:	ff 94 bb 08 ff ff ff 	call   *-0xf8(%ebx,%edi,4)
 8049572:	83 c7 01             	add    $0x1,%edi
 8049575:	39 f7                	cmp    %esi,%edi
 8049577:	75 df                	jne    8049558 <__libc_csu_init+0x38>
 8049579:	83 c4 1c             	add    $0x1c,%esp
 804957c:	5b                   	pop    %ebx
 804957d:	5e                   	pop    %esi
 804957e:	5f                   	pop    %edi
 804957f:	5d                   	pop    %ebp
 8049580:	c3                   	ret    
 8049581:	eb 0d                	jmp    8049590 <__libc_csu_fini>
 8049583:	90                   	nop
 8049584:	90                   	nop
 8049585:	90                   	nop
 8049586:	90                   	nop
 8049587:	90                   	nop
 8049588:	90                   	nop
 8049589:	90                   	nop
 804958a:	90                   	nop
 804958b:	90                   	nop
 804958c:	90                   	nop
 804958d:	90                   	nop
 804958e:	90                   	nop
 804958f:	90                   	nop

08049590 <__libc_csu_fini>:
 8049590:	f3 c3                	repz ret 

Disassembly of section .fini:

08049594 <_fini>:
 8049594:	53                   	push   %ebx
 8049595:	83 ec 08             	sub    $0x8,%esp
 8049598:	e8 83 f5 ff ff       	call   8048b20 <__x86.get_pc_thunk.bx>
 804959d:	81 c3 63 1a 00 00    	add    $0x1a63,%ebx
 80495a3:	83 c4 08             	add    $0x8,%esp
 80495a6:	5b                   	pop    %ebx
 80495a7:	c3                   	ret    
