terraform {
  required_providers {
    proxmox = {
      source = "telmate/proxmox"
      version = "2.9.11"
    }
  }
}

provider "proxmox" {
    pm_api_url          = ""
    # api token id is in the form of: <username>@pam!<tokenId>
    pm_api_token_id     = ""
    pm_api_token_secret = ""
    pm_tls_insecure     = true
}