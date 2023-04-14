# PMP

This repository houses a purely combinatorial and parametrizable physical memory protection (PMP) unit.

物理内存保护（Physical Memory Protection，PMP）是一种硬件机制，用于保护计算机系统中的物理内存免受未授权的访问或修改。它是一种安全功能，用于保护操作系统和应用程序免受恶意软件、内存泄漏、缓冲区溢出等攻击。

PMP 机制通常由 CPU 提供支持，不同的 CPU 实现方式可能不同。它通过将物理内存分成不同的区域，每个区域都有自己的权限控制设置。例如，某些区域可以只读，而另一些区域可以读写。PMP 还可以配置访问权限，例如指定哪些进程或线程可以访问哪些内存区域。

PMP 的作用不仅在于安全，还可以提高计算机系统的性能。通过分割物理内存并控制访问权限，PMP 可以减少内存访问冲突和争用，提高内存带宽和吞吐量。

总之，物理内存保护是一种非常重要的安全机制，可以保护计算机系统的物理内存免受未授权的访问或修改，从而提高系统的可靠性和安全性。

__Warning__: The PMP unit does only check the exact byte that is addressed. If the processor wants to load a 8 byte value, then every single byte should get checked. Due to the default granularity of PMPs of 4 bytes, this only comes into play for 8byte RISC-V memory accesses. An easy fix is to increase the granularity to 8 bytes. You can do this by setting the lowest bit of conf_addr_i to 1 if the pmp is in NAPOT mode, or to 0 if the PMP is in TOR mode.