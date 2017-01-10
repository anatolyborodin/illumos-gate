/*
 * This file and its contents are supplied under the terms of the
 * Common Development and Distribution License ("CDDL"), version 1.0.
 * You may only use this file in accordance with the terms of version
 * 1.0 of the CDDL.
 *
 * A full copy of the text of the CDDL should have accompanied this
 * source.  A copy of the CDDL is also available via the Internet at
 * http://www.illumos.org/license/CDDL.
 */

/*
 * Copyright 2016 Joyent, Inc.
 */

/*
 * Test ADX related instructions
 */

.text
.align 16
.globl libdis_test
.type libdis_test, @function
libdis_test:
	adcx	%rbx, %rax
	adcx	0x40(%rbx), %rax
	adcx	(%rbx), %rdx

	adox	%rbx, %rax
	adox	0x40(%rbx), %rax
	adox	(%rbx), %rdx
.size libdis_test, [.-libdis_test]
