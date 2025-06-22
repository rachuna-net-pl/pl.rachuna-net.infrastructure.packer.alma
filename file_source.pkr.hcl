source "file" "ks_data" {
  content = templatefile("${path.root}/templates/ks.pkrtpl", {
    http_url        = local.http_url
    locale          = var.locale
    timezone        = var.timezone
    keyboard_layout = var.keyboard_layout
    ssh_username    = var.ssh_username
    ssh_password    = var.ssh_password
    root_password   = var.ssh_password
  })
  target = "${path.root}/http/ks.cfg"
}
