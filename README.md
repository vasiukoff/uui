# HP ProLiant DL380g7 Rocky Linux 9.1 setup & related software

This software package will install Rocky Linux 9.1 on HP ProLiant DL380g7 in configuration "Server with GUI" + KVM

Additionally it contains related to HP ProLiant DL380g7 useful software.

**Root password: qzwxec**

(C) Artemy Vasiukov, <avv@cranix.org>, 2023



## Requirements

**Name of USB pendrive MUST be "SETUP" (without quotes).**

This value is used by installation process.



## /DL380g7

- Portable old Firefox to connect to iLO by https
- latest ilo firmware
- portable ssh and X server
- iLO remote console for Windows

**iLO License Keys:**

35DPH-SVSXJ-HGBJN-C7N5R-2SS4W
35SCR-RYLML-CBK7N-TD3B9-GGBW2



## /images

stage2 image for fast installation



## /syslinux

syslinux, kernel, initrd etc.



## /

**ks.cfg** - kickstart configuration

**setup.bat** - setup syslinux script



