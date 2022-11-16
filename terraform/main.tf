resource "proxmox_vm_qemu" "k8s_node" {
    count = 3

    name        = "k8s-node0${count.index + 1}"
    vmid        = "20${count.index + 1}"
    target_node = var.proxmox_node
    clone       = var.template_name
    agent       = 1

    cores   = 2
    sockets = 1
    memory  = 6144
    os_type = "cloud-init"

    disk {
        type    = "scsi"
        storage = "local"
        size    = "50G"
    }
    scsihw = "virtio-scsi-pci"

    network {
        model   = "virtio"
        bridge  = "vmbr0"
    }

    ipconfig0 = "ip=192.168.0.20${count.index + 1}/24,gw=192.168.0.1"

    sshkeys = <<EOF
    ${var.ssh_key}
    EOF
}
