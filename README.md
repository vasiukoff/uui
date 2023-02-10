# USB unattended installator (uui)

This solution will install any EL9 compatible distro with several ready to use scenarios in 100% unattended mode.

See particular [kickstart files](https://linuxhint.com/beginners-kickstart/) in **/ks** folder for the details.

(C) Artemy Vasiukov, <avv@cranix.org>, 2023



## Prerequisites

- You should have **install.img**, **vmlinuz** and **initrd.img** from any mirror of your EL9 distro. 

  - For Rocky Linux 9 see: https://mirrors.rockylinux.org/mirrormanager/mirrors
    - Direct links to  **install.img**, **vmlinuz** and **initrd.img**: 
      - https://mirror.yandex.ru/rockylinux/9/BaseOS/x86_64/os/images/install.img
      - https://mirror.yandex.ru/rockylinux/9/BaseOS/x86_64/os/images/pxeboot/vmlinuz
      - https://mirror.yandex.ru/rockylinux/9/BaseOS/x86_64/os/images/pxeboot/initrd.img
  - For Oracle Linux 9 see: https://yum.oracle.com/oracle-linux-isos.html

- You should have an Internet connection during running **setup.bat**.

- You should have a wired Internet connection (Ethernet) with DHCP option during installation process.

  

## How to use

1. Download and unpack **uui.zip** to the root folder on your USB pendrive.
2. Place **install.img** from your installation cd to **/images** folder.
3. Place **vmlinuz** and **initrd.img** from your installation cd to **/syslinux** folder.
4. Rename your USB pendrive to "***SETUP***" (without quotes).
5. Run **setup.bat** as administrator.
6. Plug Ethernet cable to your server. 
7. Boot from USB.
8. Choose one of the ready to use configurations and press Enter.
9. Enjoy!



