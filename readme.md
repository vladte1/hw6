Hometask #6 (10/10)
- Create repo hometask6
- Create Vagrantfile (it is Vagrant not AWS task) for VM with next options:
- generic/ubuntu2204
- create and attach 4HDDs (each 400MB) for this VM in Vagrantfile
  ( easy method to add extra disk in Vagrant )
- make primary partition on each disk (see parted –script configuration)
- create single volume group
- configure 2 LVM volumes (each 800MB)
- mount each volume into /mnt/vol0 /mnt/vol1 (be sure that you modified /etc/fstab file)
## How to start: 
vagrant up