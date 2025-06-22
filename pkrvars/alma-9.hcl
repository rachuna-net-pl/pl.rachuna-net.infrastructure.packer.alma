#### PROXMOX CLUSTER VARIABLES ####
# proxmox_node_name            = env("PKR_VAR_proxmox_node_name")
# proxmox_api_username         = env("PKR_VAR_proxmox_api_username")
# proxmox_api_password         = env("PKR_VAR_proxmox_api_password")
# proxmox_api_tls_verify       = env("PKR_VAR_proxmox_api_tls_verify")

#### BOOT ISO VARIABLES ####
# iso_url      = "https://repo.almalinux.org/almalinux/9.6/isos/x86_64/AlmaLinux-9.6-x86_64-boot.iso"
# iso_checksum = "sha256:3038fb71a29d33c3c93117bd8f4c3f612cb152dce057c666b6b11dfa793fb65c"
# iso_storage_pool             = env("PKR_VAR_iso_storage_pool")
iso_file        = "AlmaLinux-9.6-x86_64-boot.iso"

#### VM VARIABLES ####
vm_name = "AlmaLinux-9.6"
vm_tags = "template;almalinux"
vm_id            = 921
vm_memory        = 4096
vm_cores         = 2
vm_sockets       = 2
vm_disk_size     = "64G"
vm_is_production = false