# installing libguestfs-tools only required once, prior to first run
sudo apt update -y
sudo apt install libguestfs-tools -y

wget https://cloud-images.ubuntu.com/kinetic/current/kinetic-server-cloudimg-amd64.img

virt-customize -a kinetic-server-cloudimg-amd64.img --install qemu-guest-agent

VMID=9000
qm create $VMID --name ubuntu-kinetic-cloud --memory 6144 --net0 virtio,bridge=vmbr0
qm importdisk $VMID kinetic-server-cloudimg-amd64.img local
qm set $VMID --scsihw virtio-scsi-pci --scsi0 local:$VMID/vm-$VMID-disk-0.raw
qm set $VMID --ide2 local:cloudinit
qm set $VMID --boot c --bootdisk scsi0
qm set $VMID --serial0 socket --vga serial0
qm set $VMID --ipconfig0 ip=dhcp
qm set $VMID --tablet 0
qm set $VMID --onboot 1
qm set $VMID --agent enabled=1
qm resize $VMID scsi0 50G

################

# For testing
# TESTVM_ID=123
# qm clone $VMID $TESTVM_ID --name ubuntu
# qm resize $TESTVM_ID scsi0 +20G
# qm set $TESTVM_ID --ciuser bluewind
# qm set $TESTVM_ID --cipassword $PASSWORD
# # set network
# IP=250
# qm set $TESTVM_ID --ipconfig0 ip=192.168.0.10${IP}/24,gw=192.168.0.1