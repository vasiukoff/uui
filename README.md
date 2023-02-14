# USB unattended installator (uui)

This solution will install any EL9 compatible distro with several ready to use scenarios in 100% unattended mode.

See particular [kickstart files](https://linuxhint.com/beginners-kickstart/) in **/ks** folder for the details.

(C) Artemy Vasiukov, <avv@cranix.org>, 2023



## Prerequisites

- You should point **install.img**, **vmlinuz** and **initrd.img**  for your EL9 distro. 

  These files used by default  in **setup.bat** (change it if necessary):
  - https://mirror.yandex.ru/rockylinux/9/BaseOS/x86_64/os/images/install.img
  - https://mirror.yandex.ru/rockylinux/9/BaseOS/x86_64/os/images/pxeboot/vmlinuz
  - https://mirror.yandex.ru/rockylinux/9/BaseOS/x86_64/os/images/pxeboot/initrd.img
  
- If you want to use your own branch name, change it in **setup.bat**. Default name is "master".

- You should have an Internet connection during running **setup.bat**.

- You should have a wired Internet connection (Ethernet) with DHCP option during installation process for your server.

  

## How to use

1. Download and unpack **uui-master.zip** to the root folder on your USB pen drive.
4. Rename your USB pen drive to "***SETUP***" (without quotes).
5. Run **setup.bat** as administrator. Process will prepare everything you'll need. 
6. Plug Ethernet cable to your server. 
7. Boot from newly created USB pen drive.
8. Choose one of the ready to use configurations and press Enter.
9. Enjoy!



## How to contribute

Just made a merge request.



