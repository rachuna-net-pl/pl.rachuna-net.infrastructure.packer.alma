build {
  sources = [
    "source.file.ks_data",
    "source.proxmox-iso.alma"
  ]

  provisioner "shell" {
    execute_command = "echo '${var.ssh_password}' | sudo -S env {{ .Vars }} {{ .Path }}"
    inline = [
      "echo '${var.ssh_username} ALL=(ALL) NOPASSWD:ALL' | sudo tee /etc/sudoers.d/${var.ssh_username}",
      "mkdir -p /home/${var.ssh_username}/.ssh",
      "echo '${var.ssh_public_key}'",
      "echo '${var.ssh_public_key}' > /home/${var.ssh_username}/.ssh/authorized_keys",
      "chown -R ${var.ssh_username}:${var.ssh_username} /home/${var.ssh_username}/.ssh",
      "chmod 700 /home/${var.ssh_username}/.ssh",
      "chmod 600 /home/${var.ssh_username}/.ssh/authorized_keys",
    ]
  }

  provisioner "shell" {
    execute_command = "echo '${var.ssh_password}' | sudo -S env {{ .Vars }} {{ .Path }}"
    scripts = [
      "scripts/provisioning.sh"
    ]
  }
}
